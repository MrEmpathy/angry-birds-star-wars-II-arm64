//==== FUN_000a3588 @ 000a3588

undefined4 FUN_000a3588(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined1 auStack_3c [4];
  int local_38;
  int local_34;
  int local_30 [6];
  
  uVar1 = FUN_0039988c(param_2,1);
  FUN_0062d27c(&local_38,uVar1,local_30);
  uVar1 = FUN_00399644(param_2,2);
  FUN_0062ccd0(local_30,&local_38);
  FUN_000a33c0(&local_34,param_1,local_30,uVar1);
  FUN_0062c0e8(local_30[0] + -0xc,auStack_3c);
  if (*(int *)(local_34 + -0xc) == 0) {
    FUN_00396d18(param_2);
  }
  else {
    FUN_0039ccd0(local_30,*(undefined4 *)(param_1 + 0x10));
    FUN_0039d5d4(local_30,&local_34);
    FUN_00396dbc(*(undefined4 *)(param_2 + 8),local_30);
    FUN_0039ca94(local_30);
  }
  FUN_0062c0e8(local_34 + -0xc,local_30);
  FUN_0062c0e8(local_38 + -0xc,local_30);
  return 1;
}


