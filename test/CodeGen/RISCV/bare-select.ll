; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=riscv32 -verify-machineinstrs < %s \
; RUN:   | FileCheck %s -check-prefix=RV32I

define i32 @bare_select(i1 %a, i32 %b, i32 %c) {
; RV32I-LABEL: bare_select:
; RV32I:       # %bb.0:
; RV32I-NEXT:    andi a0, a0, 1
; RV32I-NEXT:    bnez a0, .LBB0_2
; RV32I-NEXT:  # %bb.1:
; RV32I-NEXT:    mv a1, a2
; RV32I-NEXT:  .LBB0_2:
; RV32I-NEXT:    mv a0, a1
; RV32I-NEXT:    ret
  %1 = select i1 %a, i32 %b, i32 %c
  ret i32 %1
}