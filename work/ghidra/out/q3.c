//==== FUN_000a33c0 @ 000a33c0

undefined4 FUN_000a33c0(undefined4 param_1,int param_2,undefined4 param_3,int param_4)

{
  uint __n;
  void *__s;
  undefined1 auStack_5c [4];
  int local_58 [5];
  undefined1 auStack_44 [40];
  
  if (param_4 == 0) {
    FUN_000cf8d4(local_58,*(undefined4 *)(param_2 + 0x94));
    FUN_003fe028(auStack_44,local_58,0);
    FUN_0062c0e8(local_58[0] + -0xc,auStack_5c);
    FUN_003e0dc4(param_1,auStack_44);
    FUN_003fe0c0(auStack_44);
    return param_1;
  }
  FUN_00405b98(local_58,param_3);
  FUN_003f77a8(auStack_44,local_58);
  FUN_0006f2c8(auStack_44,&UNK_000a3548 + DAT_000a3580,0);
  __n = FUN_003f71fc(auStack_44);
  if (__n == 0) {
    __s = (void *)0x0;
  }
  else {
    __s = operator_new(__n);
    memset(__s,0,__n);
  }
  FUN_003f7214(auStack_44,__s,__n);
  FUN_0062d02c(param_1,__s,__n,auStack_5c);
  if (__s != (void *)0x0) {
    operator_delete(__s);
  }
  FUN_003f72fc(auStack_44);
  FUN_00405cc4(local_58);
  return param_1;
}


