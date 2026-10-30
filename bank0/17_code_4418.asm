DrawBcdNum01:
        LD      hl,PlayerStatus                     ;4418
        LD      de,0xe808                           ;441b
        LD      b,0x1                               ;441e

; === DrawBcdNumber (0x4420) ===
DrawBcdNumber:
        LD      c,0x0                               ;4420
b0_l4422h:
        DEC     b                                   ;4422
        JR      nz,b0_l4427h                        ;4423
        LD      c,0xff                              ;4425
b0_l4427h:
        INC     b                                   ;4427
        LD      a,(hl)                              ;4428
        RRA                                         ;4429
        RRA                                         ;442a
        RRA                                         ;442b
        RRA                                         ;442c
        CALL    DrawBcdDigit                        ;442d
        LD      a,(hl)                              ;4430
        CALL    DrawBcdDigit                        ;4431
        DEC     hl                                  ;4434
        DJNZ    b0_l4422h                           ;4435
        RET                                         ;4437

; === DrawBcdDigit (0x4438) ===
DrawBcdDigit:
        AND     0xf                                 ;4438
        JR      z,b0_l443eh                         ;443a
        LD      c,0xff                              ;443c
b0_l443eh:
        ADD     a,0x20                              ;443e
        AND     c                                   ;4440
        CALL    DrawChar                            ;4441
        LD      a,d                                 ;4444
        ADD     a,0x8                               ;4445
        LD      d,a                                 ;4447
        RET                                         ;4448

; === SwapMemBlocks (0x4449) ===
SwapMemBlocks:
        PUSH    bc                                  ;4449
        LD      c,(hl)                              ;444a
        LD      a,(de)                              ;444b
        LD      (hl),a                              ;444c
        LD      a,c                                 ;444d
        LD      (de),a                              ;444e
        INC     hl                                  ;444f
        INC     de                                  ;4450
        POP     bc                                  ;4451
        DEC     bc                                  ;4452
        LD      a,b                                 ;4453
        OR      c                                   ;4454
        JR      nz,SwapMemBlocks                    ;4455
        RET                                         ;4457

; === PreDrawTitleCursor (0x4458) ===
PreDrawTitleCursor:
        LD      hl,WaitCounter                      ;4458
        BIT     3,(hl)                              ;445b
        LD      c,0xff                              ;445d
        JR      nz,DrawTitleModeCursor              ;445f
        INC     c                                   ;4461

; === DrawTitleModeCursor (0x4462) ===
DrawTitleModeCursor:
        LD      hl,0x48a6                           ;4462 (72,166) zh 12px line 1
        LD      de,0x48b4                           ;4465 (72,180) zh 12px line 2
        LD      a,(BTitle2PMode)                    ;4468
        OR      a                                   ;446b
        JR      nz,Draw1PlayerCursor                ;446c
        EX      de,hl                               ;446e
Draw1PlayerCursor:
        PUSH    hl                                  ;446f
        CALL    DrawCursor                          ;4470
        POP     de                                  ;4473
        LD      c,0x0                               ;4474

; === DrawCursor (0x4476) ===
DrawCursor:
        LD      hl,0x63d8                           ;4476
        JP      PrintText                           ;4479
GetPointerDE2A:
        LD      l,a                                 ;447c
        LD      h,0x0                               ;447d
        ADD     hl,hl                               ;447f
        ADD     hl,de                               ;4480
        LD      e,(hl)                              ;4481
        INC     hl                                  ;4482
        LD      d,(hl)                              ;4483
        RET                                         ;4484
b0_l4485h:
        LD      hl,0x9f09                           ;4485
        LD      c,0xe                               ;4488
        LD      a,(FrameDivider)                    ;448a
        ADD     a,a                                 ;448d
        INC     a                                   ;448e
        INC     a                                   ;448f
b0_l4490h:
        LD      d,a                                 ;4490
        LD      e,0x7                               ;4491
        JP      DrawRect                            ;4493
