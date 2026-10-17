// Headless helper: args = <out file> <cmd> <addr>...  cmd: dec (decompile containing function), refs (references to address), str (find string, then refs + decompile)
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.address.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.symbol.*;
import java.io.*;
import java.util.*;

public class Dump extends GhidraScript {
    DecompInterface di;
    PrintWriter out;
    Set<Function> done = new HashSet<>();

    void dec(Function f) {
        if (f == null || !done.add(f)) return;
        DecompileResults r = di.decompileFunction(f, 120, monitor);
        out.println("//==== " + f.getName() + " @ " + f.getEntryPoint());
        out.println(r.decompileCompleted() ? r.getDecompiledFunction().getC() : "// failed: " + r.getErrorMessage());
    }

    void refs(Address a) {
        for (Reference r : getReferencesTo(a)) {
            Function f = getFunctionContaining(r.getFromAddress());
            out.println("ref " + r.getFromAddress() + " " + r.getReferenceType() + " in " + (f == null ? "?" : f.getName() + "@" + f.getEntryPoint()));
        }
    }

    public void run() throws Exception {
        String[] a = getScriptArgs();
        out = new PrintWriter(new FileWriter(a[0], true));
        di = new DecompInterface();
        di.openProgram(currentProgram);
        String cmd = a[1];
        for (int i = 2; i < a.length; i++) {
            if (cmd.equals("dec")) {
                Address ad = toAddr(a[i]);
                Function f = getFunctionContaining(ad);
                if (f == null) { out.println("// no function at " + a[i]); continue; }
                dec(f);
            } else if (cmd.equals("refs")) {
                out.println("== refs to " + a[i]); refs(toAddr(a[i]));
            } else if (cmd.equals("str")) {
                byte[] needle = (a[i]).getBytes("UTF-8");
                Address s = currentProgram.getMinAddress();
                while ((s = find(s, needle)) != null) {
                    out.println("== string '" + a[i] + "' at " + s);
                    for (Reference r : getReferencesTo(s)) {
                        Function f = getFunctionContaining(r.getFromAddress());
                        out.println("ref " + r.getFromAddress() + " in " + (f == null ? "?" : f.getName()));
                        dec(f);
                    }
                    s = s.add(1);
                }
            }
        }
        out.close();
    }
}
