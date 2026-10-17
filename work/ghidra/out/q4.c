//==== FUN_0005df28 @ 0005df28

void FUN_0005df28(undefined4 param_1,undefined4 param_2)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  int *piVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  code *pcVar8;
  int iVar9;
  int *piVar10;
  int iVar11;
  int iVar12;
  int *piVar13;
  int iVar14;
  code *pcVar15;
  int iVar16;
  int iVar17;
  uint in_fpscr;
  float fVar18;
  float fVar19;
  undefined1 auStack_178 [4];
  int local_174;
  undefined4 local_170;
  float local_16c;
  int local_168;
  undefined4 local_164;
  undefined4 local_160;
  float local_15c;
  int *local_158;
  undefined4 local_154;
  undefined1 auStack_150 [20];
  int *local_13c;
  int local_138;
  undefined4 local_134;
  int local_130;
  undefined4 local_12c;
  undefined1 auStack_128 [24];
  int *local_110;
  int local_10c;
  undefined4 local_108;
  int local_104;
  undefined4 local_100;
  undefined4 *local_54 [2];
  code *local_4c;
  int local_48;
  undefined4 *local_44 [2];
  code *local_3c;
  int local_38;
  int local_34;
  
  iVar16 = DAT_0005e634 + 0x5df4c;
  piVar10 = *(int **)(iVar16 + DAT_0005e638);
  local_34 = *piVar10;
  FUN_00405b98(auStack_150);
  FUN_003e3284(auStack_128,auStack_150);
  iVar3 = FUN_003e294c(auStack_128);
  FUN_0062d27c(&local_174,DAT_0005e63c + 0x5dfa8,&local_110);
  iVar2 = DAT_0005e644;
  if (iVar3 != 0) {
    iVar11 = DAT_0005e640 + 0x5dfd0;
    iVar17 = DAT_0005e648 + 0x5dfdc;
    pcVar8 = (code *)(DAT_0005e64c + 0x5dfe4);
    iVar9 = 0;
    iVar14 = 1;
    do {
      piVar4 = (int *)FUN_003e2960(auStack_128,iVar9);
      if (piVar4 != (int *)0x0) {
        FUN_004a1234();
        piVar5 = (int *)FUN_003e3a50(piVar4);
        piVar13 = *(int **)(iVar16 + DAT_0005e650);
        local_13c = piVar13 + 3;
        FUN_0062c888(&local_13c,*(int *)(*piVar5 + -0xc) + 0xf);
        FUN_0062ca1c(&local_13c,iVar11,0xf);
        FUN_0062c908(&local_13c,piVar5);
        FUN_003f7acc(&local_110,&local_13c,1);
        piVar5 = local_110;
        pcVar15 = *(code **)(*local_110 + 8);
        uVar6 = FUN_003f7a7c(piVar4);
        uVar7 = (**(code **)(*piVar4 + 0x18))(piVar4);
        (*pcVar15)(piVar5,uVar6,uVar7);
        fVar18 = (float)VectorUnsignedToFloat(iVar3,(byte)(in_fpscr >> 0x16) & 3);
        fVar19 = (float)VectorSignedToFloat(iVar14,(byte)(in_fpscr >> 0x16) & 3);
        uVar6 = FUN_0049b0a0();
        local_170 = uVar6;
        local_16c = fVar19 / fVar18;
        FUN_0062ccd0(&local_168,param_2);
        local_164 = *(undefined4 *)(iVar2 + 0x5dfdc);
        local_160 = local_170;
        local_15c = local_16c;
        FUN_0062ccd0(&local_158,&local_168);
        local_4c = (code *)0x0;
        local_154 = local_164;
        local_54[0] = operator_new(0x10);
        *local_54[0] = local_160;
        local_54[0][1] = local_15c;
        local_54[0][2] = local_158;
        local_54[0][3] = local_154;
        local_158 = piVar13 + 3;
        local_4c = pcVar8;
        local_48 = iVar17;
        FUN_0049a994(uVar6,0,0,local_54);
        if (local_4c != (code *)0x0) {
          (*local_4c)(local_54,local_54,3);
        }
        if (local_158 + -3 != piVar13) {
          piVar5 = local_158 + -1;
          DataMemoryBarrier(0xf);
          do {
            iVar9 = *piVar5;
            bVar1 = (bool)hasExclusiveAccess(piVar5);
          } while (!bVar1);
          *piVar5 = iVar9 + -1;
          DataMemoryBarrier(0xf);
          if (iVar9 < 1) {
            operator_delete(local_158 + -3);
          }
        }
        if ((int *)(local_168 + -0xc) != piVar13) {
          piVar5 = (int *)(local_168 + -4);
          DataMemoryBarrier(0xf);
          do {
            iVar9 = *piVar5;
            bVar1 = (bool)hasExclusiveAccess(piVar5);
          } while (!bVar1);
          *piVar5 = iVar9 + -1;
          DataMemoryBarrier(0xf);
          if (iVar9 < 1) {
            operator_delete((int *)(local_168 + -0xc));
          }
        }
        if (local_110 != (int *)0x0) {
          FUN_004a12d4();
        }
        if (local_13c + -3 != piVar13) {
          piVar5 = local_13c + -1;
          DataMemoryBarrier(0xf);
          do {
            iVar9 = *piVar5;
            bVar1 = (bool)hasExclusiveAccess(piVar5);
          } while (!bVar1);
          *piVar5 = iVar9 + -1;
          DataMemoryBarrier(0xf);
          if (iVar9 < 1) {
            operator_delete(local_13c + -3);
          }
        }
        FUN_004a12d4(piVar4);
      }
      iVar12 = iVar14 + 1;
      iVar9 = iVar14;
      iVar14 = iVar12;
    } while (iVar12 != iVar3 + 1);
  }
  FUN_0062c544(&local_174,DAT_0005e654 + 0x5e1f4,0xf);
  piVar4 = (int *)FUN_0049b0a0();
  local_13c = piVar4;
  FUN_0062ccd0(&local_138,&local_174);
  local_134 = 0;
  FUN_0062ccd0(&local_130,param_2);
  local_12c = *(undefined4 *)(DAT_0005e658 + 0x5e240);
  local_110 = local_13c;
  FUN_0062ccd0(&local_10c,&local_138);
  local_108 = local_134;
  FUN_0062ccd0(&local_104,&local_130);
  local_3c = (code *)0x0;
  local_100 = local_12c;
  local_44[0] = operator_new(0x14);
  iVar2 = DAT_0005e650;
  *local_44[0] = local_110;
  local_44[0][1] = local_10c;
  local_10c = *(int *)(iVar16 + iVar2) + 0xc;
  local_44[0][3] = local_104;
  local_44[0][2] = local_108;
  iVar2 = DAT_0005e660;
  local_38 = DAT_0005e65c;
  local_44[0][4] = local_100;
  local_38 = local_38 + 0x5e2e4;
  local_3c = (code *)(iVar2 + 0x5e2e8);
  local_104 = local_10c;
  FUN_0049a994(piVar4,0,0,local_44);
  if (local_3c != (code *)0x0) {
    (*local_3c)(local_44,local_44,3);
  }
  FUN_0062c0e8(local_104 + -0xc,auStack_178);
  FUN_0062c0e8(local_10c + -0xc,auStack_178);
  FUN_0062c0e8(local_130 + -0xc,&local_110);
  FUN_0062c0e8(local_138 + -0xc,&local_110);
  FUN_0062c0e8(local_174 + -0xc,&local_110);
  FUN_003e26dc(auStack_128);
  FUN_00405cc4(auStack_150);
  if (local_34 == *piVar10) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}


//==== FUN_002c28cc @ 002c28cc

int * FUN_002c28cc(int *param_1,int *param_2)

{
  *param_1 = *(int *)(DAT_002c293c + 0x2c28dc) + 0xc;
  FUN_0062c888(param_1,*(int *)(*param_2 + -0xc) + 0xf);
  FUN_0062ca1c(param_1,DAT_002c2940 + 0x2c2910,0xf);
  FUN_0062c908(param_1,param_2);
  return param_1;
}


//==== FUN_000b90d8 @ 000b90d8

void FUN_000b90d8(int param_1,string *param_2)

{
  bool bVar1;
  int *piVar2;
  void *pvVar3;
  void *pvVar4;
  int iVar5;
  undefined4 *puVar6;
  int iVar7;
  void *pvVar8;
  int iVar9;
  int *piVar10;
  int iVar11;
  uint in_fpscr;
  undefined4 uVar12;
  int *local_8b8;
  undefined1 auStack_8a4 [4];
  undefined1 auStack_8a0 [4];
  undefined1 auStack_89c [4];
  undefined1 auStack_898 [8];
  int local_890;
  int local_88c;
  int local_888;
  int local_884;
  int local_880;
  int local_87c;
  int local_878;
  undefined1 auStack_874 [8];
  int local_86c;
  int local_868;
  undefined1 auStack_864 [12];
  undefined4 local_858;
  undefined4 local_854;
  undefined1 auStack_44c [12];
  undefined4 local_440;
  int local_34;
  
  piVar10 = *(int **)(DAT_000b97e8 + 0xb90fc);
  pvVar8 = *(void **)(DAT_000b97ec + 0xb9110);
  local_34 = *piVar10;
  local_890 = (int)pvVar8 + 0xc;
  FUN_0062c888(&local_890,*(int *)(*(int *)param_2 + -0xc) + 0x10);
  FUN_0062ca1c(&local_890,DAT_000b97f0 + 0xb9140,0x10);
  FUN_0062c908(&local_890,param_2);
  FUN_00390024(*(int *)(*(int *)(param_1 + 0x18) + 0x90) + 8);
  FUN_003f6458(auStack_864,param_2);
  FUN_0062d27c(&local_888,local_858,auStack_8a4);
  FUN_003f6458(auStack_44c,&local_888);
  FUN_0062d27c(&local_88c,local_440,auStack_8a0);
  if ((void *)(local_888 + -0xc) != pvVar8) {
    piVar2 = (int *)(local_888 + -4);
    DataMemoryBarrier(0xf);
    do {
      iVar5 = *piVar2;
      bVar1 = (bool)hasExclusiveAccess(piVar2);
    } while (!bVar1);
    *piVar2 = iVar5 + -1;
    DataMemoryBarrier(0xf);
    if (iVar5 < 1) {
      operator_delete((void *)(local_888 + -0xc));
    }
  }
  FUN_0062cf08(&local_880,&local_890,0,*(int *)(local_890 + -0xc) + -3);
  piVar2 = (int *)FUN_0062ca1c(&local_880,DAT_000b97f4 + 0xb91fc,3);
  local_884 = *piVar2;
  *piVar2 = (int)pvVar8 + 0xc;
  if ((void *)(local_880 + -0xc) != pvVar8) {
    piVar2 = (int *)(local_880 + -4);
    DataMemoryBarrier(0xf);
    do {
      iVar5 = *piVar2;
      bVar1 = (bool)hasExclusiveAccess(piVar2);
    } while (!bVar1);
    *piVar2 = iVar5 + -1;
    DataMemoryBarrier(0xf);
    if (iVar5 < 1) {
      operator_delete((void *)(local_880 + -0xc));
    }
  }
  pvVar3 = operator_new(0x14);
  FUN_00405b98(pvVar3,&local_890);
  if (pvVar3 != (void *)0x0) {
    FUN_004a1234(pvVar3);
  }
  pvVar4 = operator_new(0x14);
  FUN_00405b98(pvVar4,&local_884);
  if (pvVar4 != (void *)0x0) {
    FUN_004a1234(pvVar4);
  }
  iVar5 = FUN_00317454(*(undefined4 *)(*(int *)(param_1 + 0x18) + 0x98),&local_88c);
  if (iVar5 == 0) {
    FUN_0062d27c(&local_87c,local_854,auStack_89c);
    iVar5 = FUN_0062bf0c(&local_87c,DAT_000b97f8 + 0xb932c);
    if ((void *)(local_87c + -0xc) != pvVar8) {
      piVar2 = (int *)(local_87c + -4);
      DataMemoryBarrier(0xf);
      do {
        iVar7 = *piVar2;
        bVar1 = (bool)hasExclusiveAccess(piVar2);
      } while (!bVar1);
      *piVar2 = iVar7 + -1;
      DataMemoryBarrier(0xf);
      if (iVar7 < 1) {
        operator_delete((void *)(local_87c + -0xc));
      }
    }
    if (iVar5 == 0) {
      local_8b8 = operator_new(0x1c);
      *local_8b8 = 0;
      local_8b8[1] = 0;
      local_8b8[2] = 0;
      local_8b8[3] = 0;
      local_8b8[4] = 0;
      local_8b8[5] = 0;
      local_8b8[6] = 0;
      FUN_00324f90();
      *local_8b8 = *(int *)(DAT_000b97fc + 0xb9390) + 8;
      FUN_004a1234();
    }
    else {
      FUN_0062d27c(&local_878,local_854,auStack_898);
      iVar5 = FUN_0062bf0c(&local_878,DAT_000b9800 + 0xb943c);
      FUN_0062c0e8(local_878 + -0xc,&local_86c);
      if (iVar5 == 0) {
        local_8b8 = operator_new(0x1c);
        FUN_0031eb58();
        if (local_8b8 != (int *)0x0) {
          FUN_004a1234(local_8b8);
        }
      }
      else {
        local_8b8 = (int *)0x0;
      }
    }
    iVar5 = (**(code **)(*local_8b8 + 0xc))
                      (local_8b8,*(undefined4 *)(*(int *)(param_1 + 0x18) + 0x90),pvVar3,pvVar4);
    if (iVar5 != 0) {
      FUN_004a1234();
    }
    FUN_0031a6d8(*(undefined4 *)(*(int *)(param_1 + 0x18) + 0x98),&local_88c,iVar5);
    if (*(int *)(*(int *)(*(int *)(param_1 + 0x18) + 0x90) + 0x24) != 0) {
      FUN_00326a30(iVar5);
      FUN_00326a48(iVar5);
      puVar6 = (undefined4 *)
               std::
               map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string_const,int>>>
               ::operator[]((map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string_const,int>>>
                             *)(param_1 + 0x1c),param_2);
      iVar11 = *(int *)(param_1 + 0x18);
      *puVar6 = *(undefined4 *)(*(int *)(iVar11 + 0x90) + 0x24);
      iVar7 = *(int *)(param_1 + 0x28);
      uVar12 = DAT_000b97e4;
      if (iVar7 != param_1 + 0x20) {
        iVar9 = 0;
        do {
          iVar9 = iVar9 + *(int *)(iVar7 + 0x14);
          iVar7 = FUN_005ff960();
        } while (iVar7 != param_1 + 0x20);
        uVar12 = VectorSignedToFloat(iVar9,(byte)(in_fpscr >> 0x16) & 3);
      }
      FUN_0039f10c(auStack_874,*(undefined4 *)(iVar11 + 0x10));
      FUN_0039fcf8(iVar11);
      local_86c = DAT_000b9804 + 0xb9540;
      local_868 = DAT_000b9804 + 0xb9553;
      FUN_00396cfc(*(undefined4 *)(iVar11 + 0x10),&local_86c);
      FUN_00396cec(*(undefined4 *)(iVar11 + 0x10),uVar12);
      FUN_003988ac(*(undefined4 *)(iVar11 + 0x10),0xfffffffd);
      FUN_0039f150(auStack_874);
    }
    if (iVar5 != 0) {
      FUN_004a12d4(iVar5);
    }
    FUN_004a12d4(local_8b8);
  }
  FUN_00390024(*(int *)(*(int *)(param_1 + 0x18) + 0x90) + 8);
  if (pvVar4 != (void *)0x0) {
    FUN_004a12d4(pvVar4);
  }
  if (pvVar3 != (void *)0x0) {
    FUN_004a12d4(pvVar3);
  }
  if ((void *)(local_884 + -0xc) != pvVar8) {
    piVar2 = (int *)(local_884 + -4);
    DataMemoryBarrier(0xf);
    do {
      iVar5 = *piVar2;
      bVar1 = (bool)hasExclusiveAccess(piVar2);
    } while (!bVar1);
    *piVar2 = iVar5 + -1;
    DataMemoryBarrier(0xf);
    if (iVar5 < 1) {
      operator_delete((void *)(local_884 + -0xc));
    }
  }
  if ((void *)(local_88c + -0xc) != pvVar8) {
    piVar2 = (int *)(local_88c + -4);
    DataMemoryBarrier(0xf);
    do {
      iVar5 = *piVar2;
      bVar1 = (bool)hasExclusiveAccess(piVar2);
    } while (!bVar1);
    *piVar2 = iVar5 + -1;
    DataMemoryBarrier(0xf);
    if (iVar5 < 1) {
      operator_delete((void *)(local_88c + -0xc));
    }
  }
  if ((void *)(local_890 + -0xc) != pvVar8) {
    piVar2 = (int *)(local_890 + -4);
    DataMemoryBarrier(0xf);
    do {
      iVar5 = *piVar2;
      bVar1 = (bool)hasExclusiveAccess(piVar2);
    } while (!bVar1);
    *piVar2 = iVar5 + -1;
    DataMemoryBarrier(0xf);
    if (iVar5 < 1) {
      operator_delete((void *)(local_890 + -0xc));
    }
  }
  if (local_34 == *piVar10) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}


//==== FUN_001b06fc @ 001b06fc

void FUN_001b06fc(undefined4 param_1,undefined4 param_2,int *param_3)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int *piVar6;
  void *pvVar7;
  int *piVar8;
  int *piVar9;
  int *piVar10;
  void *pvVar11;
  uint uVar12;
  int *piVar13;
  undefined1 auStack_38 [4];
  int local_34;
  int local_30;
  int local_2c [2];
  
  FUN_0062d27c(&local_34,DAT_001b0ad8 + 0x1b0728,auStack_38);
  FUN_0062ccd0(&local_30,&local_34);
  FUN_0062ca1c(&local_30,DAT_001b0adc + 0x1b074c,1);
  piVar2 = (int *)FUN_0062c908(&local_30,param_2);
  local_2c[0] = *piVar2;
  pvVar11 = *(void **)(DAT_001b0ae0 + 0x1b0770);
  *piVar2 = (int)pvVar11 + 0xc;
  FUN_003f87c0(local_2c);
  if ((void *)(local_2c[0] + -0xc) != pvVar11) {
    piVar2 = (int *)(local_2c[0] + -4);
    DataMemoryBarrier(0xf);
    do {
      iVar3 = *piVar2;
      bVar1 = (bool)hasExclusiveAccess(piVar2);
    } while (!bVar1);
    *piVar2 = iVar3 + -1;
    DataMemoryBarrier(0xf);
    if (iVar3 < 1) {
      operator_delete((void *)(local_2c[0] + -0xc));
    }
  }
  if ((void *)(local_30 + -0xc) != pvVar11) {
    piVar2 = (int *)(local_30 + -4);
    DataMemoryBarrier(0xf);
    do {
      iVar3 = *piVar2;
      bVar1 = (bool)hasExclusiveAccess(piVar2);
    } while (!bVar1);
    *piVar2 = iVar3 + -1;
    DataMemoryBarrier(0xf);
    if (iVar3 < 1) {
      operator_delete((void *)(local_30 + -0xc));
    }
  }
  if ((void *)(local_34 + -0xc) != pvVar11) {
    piVar2 = (int *)(local_34 + -4);
    DataMemoryBarrier(0xf);
    do {
      iVar3 = *piVar2;
      bVar1 = (bool)hasExclusiveAccess(piVar2);
    } while (!bVar1);
    *piVar2 = iVar3 + -1;
    DataMemoryBarrier(0xf);
    if (iVar3 < 1) {
      operator_delete((void *)(local_34 + -0xc));
    }
  }
  iVar3 = param_3[1];
  if (iVar3 != param_3[2]) {
    iVar4 = 0;
    if (iVar3 != 0) {
      FUN_0062ccd0(iVar3,param_2);
      iVar4 = param_3[1];
    }
    param_3[1] = iVar4 + 4;
    return;
  }
  uVar5 = iVar3 - *param_3 >> 2;
  if (uVar5 == 0) {
    uVar12 = 1;
  }
  else {
    uVar12 = uVar5 * 2;
    if ((uVar12 < uVar5) || (0x3fffffff < uVar12)) {
      uVar5 = 0xfffffffc;
      uVar12 = 0x3fffffff;
      goto LAB_001b0804;
    }
  }
  uVar5 = uVar12 << 2;
LAB_001b0804:
  piVar6 = operator_new(uVar5);
  piVar2 = (int *)*param_3;
  piVar13 = (int *)param_3[1];
  iVar3 = (int)piVar6 + ((int)piVar13 - (int)piVar2 & 0xfffffffcU);
  if (iVar3 != 0) {
    FUN_0062ccd0(iVar3,param_2);
    piVar2 = (int *)*param_3;
    piVar13 = (int *)param_3[1];
  }
  if (piVar2 == piVar13) {
    piVar8 = piVar6 + 1;
  }
  else {
    uVar5 = (uint)((int)piVar13 - (int)(piVar2 + 1)) >> 2;
    piVar8 = piVar6;
    piVar9 = piVar2 + 1;
    do {
      piVar10 = piVar9 + 1;
      if (piVar8 != (int *)0x0) {
        *piVar8 = piVar9[-1];
        piVar9[-1] = (int)pvVar11 + 0xc;
      }
      piVar8 = piVar8 + 1;
      piVar9 = piVar10;
    } while (piVar10 != piVar2 + uVar5 + 2);
    piVar8 = piVar6 + uVar5 + 2;
    do {
      piVar9 = piVar2 + 1;
      pvVar7 = (void *)(*piVar2 + -0xc);
      if (pvVar7 != pvVar11) {
        piVar2 = (int *)(*piVar2 + -4);
        DataMemoryBarrier(0xf);
        do {
          iVar3 = *piVar2;
          bVar1 = (bool)hasExclusiveAccess(piVar2);
        } while (!bVar1);
        *piVar2 = iVar3 + -1;
        DataMemoryBarrier(0xf);
        if (iVar3 < 1) {
          operator_delete(pvVar7);
        }
      }
      piVar2 = piVar9;
    } while (piVar13 != piVar9);
    piVar2 = (int *)*param_3;
  }
  if (piVar2 != (int *)0x0) {
    operator_delete(piVar2);
  }
  *param_3 = (int)piVar6;
  param_3[2] = (int)(piVar6 + uVar12);
  param_3[1] = (int)piVar8;
  return;
}


