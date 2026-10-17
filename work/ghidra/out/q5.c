//==== FUN_0006f2c8 @ 0006f2c8

void FUN_0006f2c8(int *param_1,void *param_2,undefined4 param_3)

{
  void *__src;
  int iVar1;
  int iVar2;
  void *__dest;
  uint __n;
  undefined1 auStack_48 [4];
  void *local_44;
  int local_40;
  int local_3c;
  void *local_38;
  void *local_34;
  undefined4 local_30;
  void *local_2c;
  int local_28;
  int local_24;
  
  (**(code **)(*param_1 + 0x10))(param_1,*(code **)(*param_1 + 0x10),0,0,0);
  __src = (void *)FUN_003f7a7c(param_1);
  iVar1 = FUN_003f7a7c(param_1);
  iVar2 = (**(code **)(*param_1 + 0x18))(param_1);
  local_44 = (void *)0x0;
  local_40 = 0;
  local_3c = 0;
  __n = (iVar1 + iVar2) - (int)__src;
  __dest = (void *)0x0;
  if (__n != 0) {
    __dest = operator_new(__n);
  }
  iVar1 = (int)__dest + __n;
  local_44 = __dest;
  local_3c = iVar1;
  if (__n != 0) {
    memmove(__dest,__src,__n);
  }
  local_38 = (void *)0x0;
  local_34 = (void *)0x0;
  local_30 = 0;
  local_2c = (void *)0x0;
  local_28 = 0;
  local_24 = 0;
  local_40 = iVar1;
  local_2c = operator_new(0x20);
  iVar1 = (int)local_2c + 0x20;
  local_24 = iVar1;
  memmove(local_2c,param_2,0x20);
  local_28 = iVar1;
  FUN_00444058(auStack_48,&local_2c,3,param_3);
  if (local_2c != (void *)0x0) {
    operator_delete(local_2c);
  }
  FUN_00444130(auStack_48,&local_44,&local_38);
  if (local_34 != local_38) {
    FUN_003f7938(param_1,local_38,(int)local_34 - (int)local_38);
  }
  FUN_004440a0(auStack_48);
  if (local_38 != (void *)0x0) {
    operator_delete(local_38);
  }
  if (local_44 != (void *)0x0) {
    operator_delete(local_44);
  }
  return;
}


//==== FUN_003f77a8 @ 003f77a8

int * FUN_003f77a8(int *param_1,int *param_2)

{
  bool bVar1;
  int iVar2;
  code *pcVar3;
  int iVar4;
  int *piVar5;
  void *pvVar6;
  int local_30;
  void *local_2c;
  int local_28;
  int local_24;
  
  local_2c = (void *)0x0;
  FUN_003e0d60(param_1,&local_2c);
  if (local_2c != (void *)0x0) {
    FUN_004a12d4();
  }
  iVar4 = DAT_003f7934;
  *param_1 = DAT_003f7930 + 0x3f77fc;
  iVar2 = *param_2;
  pvVar6 = *(void **)(iVar4 + 0x3f7808);
  param_1[4] = 0;
  param_1[7] = (int)pvVar6 + 0xc;
  param_1[5] = 0;
  param_1[6] = 0;
  pcVar3 = *(code **)(iVar2 + 0x1c);
  param_1[8] = 0;
  (*pcVar3)(&local_30,param_2);
  FUN_0062baa4(param_1 + 7,&local_30);
  if ((void *)(local_30 + -0xc) != pvVar6) {
    piVar5 = (int *)(local_30 + -4);
    DataMemoryBarrier(0xf);
    do {
      iVar4 = *piVar5;
      bVar1 = (bool)hasExclusiveAccess(piVar5);
    } while (!bVar1);
    *piVar5 = iVar4 + -1;
    DataMemoryBarrier(0xf);
    if (iVar4 < 1) {
      operator_delete((void *)(local_30 + -0xc));
    }
  }
  FUN_003e0e6c(&local_2c,param_2);
  pvVar6 = (void *)param_1[4];
  param_1[4] = (int)local_2c;
  param_1[5] = local_28;
  param_1[6] = local_24;
  local_2c = (void *)0x0;
  local_28 = 0;
  local_24 = 0;
  if ((pvVar6 != (void *)0x0) && (operator_delete(pvVar6), local_2c != (void *)0x0)) {
    operator_delete(local_2c);
  }
  return param_1;
}


//==== FUN_003f7214 @ 003f7214

size_t FUN_003f7214(int param_1,void *param_2,uint param_3)

{
  uint __n;
  
  __n = (*(int *)(param_1 + 0x14) - *(int *)(param_1 + 0x10)) - *(int *)(param_1 + 0x20);
  if (param_3 <= __n) {
    __n = param_3;
  }
  memcpy(param_2,(void *)(*(int *)(param_1 + 0x10) + *(int *)(param_1 + 0x20)),__n);
  *(uint *)(param_1 + 0x20) = *(int *)(param_1 + 0x20) + __n;
  return __n;
}


