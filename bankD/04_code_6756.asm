bD_l6756h:
        LD      (de),a                              ;6756
        LD      a,(de)                              ;6757
        NOP                                         ;6758
        DEC     de                                  ;6759
        INC     b                                   ;675a
        LD      (de),a                              ;675b
        ADD     a,h                                 ;675c
        JR      bD_l67a9h                           ;675d
bD_l675fh:
        NOP                                         ;675f
        LD      c,c                                 ;6760
        INC     b                                   ;6761
        JR      bD_l6774h                           ;6762
        NOP                                         ;6764
        ADC     a,b                                 ;6765
        ADD     hl,hl                               ;6766
        INC     l                                   ;6767
        LD      l,0x2b                              ;6768
bD_l676ah:
        ADD     hl,hl                               ;676a
        DAA                                         ;676b
        ADD     hl,hl                               ;676c
        LD      c,e                                 ;676d
        RLCA                                        ;676e
        INC     hl                                  ;676f
        ADD     a,c                                 ;6770
        INC     sp                                  ;6771
        RLCA                                        ;6772
        LD      (de),a                              ;6773
bD_l6774h:
        ADD     a,c                                 ;6774
        LD      c,(hl)                              ;6775
        EX      af,af'                              ;6776
        JR      bD_l6789h                           ;6777
        NOP                                         ;6779
        SUB     b                                   ;677a
        LD      c,e                                 ;677b
        LD      c,h                                 ;677c
        LD      c,e                                 ;677d
        LD      b,d                                 ;677e
        ADD     hl,de                               ;677f
        LD      b,h                                 ;6780
        LD      c,e                                 ;6781
        LD      c,h                                 ;6782
        DEC     (hl)                                ;6783
        LD      (hl),0x34                           ;6784
        LD      b,l                                 ;6786
        INC     de                                  ;6787
        LD      b,(hl)                              ;6788
bD_l6789h:
        INC     (hl)                                ;6789
        INC     (hl)                                ;678a
        EX      af,af'                              ;678b
        LD      de,0x1806                           ;678c
        ADD     a,d                                 ;678f
        DEC     d                                   ;6790
        DJNZ    bD_l6799h                           ;6791
        NOP                                         ;6793
        ADD     a,d                                 ;6794
        RLA                                         ;6795
        DJNZ    bD_l679fh                           ;6796
        NOP                                         ;6798
bD_l6799h:
        SUB     e                                   ;6799
        DEC     d                                   ;679a
        LD      c,e                                 ;679b
        LD      e,0x4                               ;679c
        DEC     b                                   ;679e
bD_l679fh:
        INC     b                                   ;679f
        LD      b,0x7                               ;67a0
        INC     b                                   ;67a2
        DEC     (hl)                                ;67a3
        LD      (hl),0x8                            ;67a4
        EX      af,af'                              ;67a6
        INC     c                                   ;67a7
        EX      af,af'                              ;67a8
bD_l67a9h:
        INC     c                                   ;67a9
        EX      af,af'                              ;67aa
        LD      de,0x647                            ;67ab
        JR      bD_l6732h                           ;67ae
        DJNZ    bD_l67c8h                           ;67b0
        LD      b,0x0                               ;67b2
        ADD     a,c                                 ;67b4
        INC     d                                   ;67b5
        RLCA                                        ;67b6
        NOP                                         ;67b7
        ADD     a,c                                 ;67b8
        INC     e                                   ;67b9
        RLCA                                        ;67ba
        LD      de,0x48a                            ;67bb
        DEC     b                                   ;67be
        LD      bc,0x202                            ;67bf
        INC     bc                                  ;67c2
        INC     b                                   ;67c3
        LD      b,0x8                               ;67c4
        INC     c                                   ;67c6
        INC     b                                   ;67c7
bD_l67c8h:
        EX      af,af'                              ;67c8
        ADD     a,d                                 ;67c9
        INC     c                                   ;67ca
        EX      af,af'                              ;67cb
        EX      af,af'                              ;67cc
        JR      bD_l67dfh                           ;67cd
        NOP                                         ;67cf
        EX      af,af'                              ;67d0
        LD      de,0x18a                            ;67d1
        LD      (bc),a                              ;67d4
        INC     bc                                  ;67d5
        INC     b                                   ;67d6
        LD      b,0x1                               ;67d7
        LD      (bc),a                              ;67d9
        INC     bc                                  ;67da
        EX      af,af'                              ;67db
        INC     c                                   ;67dc
        INC     b                                   ;67dd
        EX      af,af'                              ;67de
bD_l67dfh:
        ADD     a,d                                 ;67df
        INC     c                                   ;67e0
        EX      af,af'                              ;67e1
        EX      af,af'                              ;67e2
        JR      bD_l67f5h                           ;67e3
        NOP                                         ;67e5
        EX      af,af'                              ;67e6
        LD      de,0x402                            ;67e7
        ADC     a,b                                 ;67ea
        DEC     b                                   ;67eb
        LD      b,0x6                               ;67ec
        RLCA                                        ;67ee
        DEC     b                                   ;67ef
        INC     b                                   ;67f0
        EX      af,af'                              ;67f1
        INC     c                                   ;67f2
        INC     b                                   ;67f3
        EX      af,af'                              ;67f4
bD_l67f5h:
        ADD     a,d                                 ;67f5
        INC     c                                   ;67f6
        EX      af,af'                              ;67f7
        EX      af,af'                              ;67f8
        JR      bD_l680bh                           ;67f9
        NOP                                         ;67fb
        ADD     a,h                                 ;67fc
        LD      de,0x47                             ;67fd
        LD      c,b                                 ;6800
        INC     b                                   ;6801
        LD      de,0x48b                            ;6802
        DEC     b                                   ;6805
        INC     b                                   ;6806
        RLCA                                        ;6807
        INC     b                                   ;6808
        LD      b,0x4                               ;6809
bD_l680bh:
        DEC     b                                   ;680b
        EX      af,af'                              ;680c
        INC     c                                   ;680d
        INC     h                                   ;680e
        INC     bc                                  ;680f
        EX      af,af'                              ;6810
        ADD     a,l                                 ;6811
        INC     c                                   ;6812
        EX      af,af'                              ;6813
        JR      $+26                                ;6814
        NOP                                         ;6816
        DEC     b                                   ;6817
        JR      bD_l682ah                           ;6818
        NOP                                         ;681a
        EX      af,af'                              ;681b
        LD      de,0x48a                            ;681c
        DEC     b                                   ;681f
        LD      b,0x4                               ;6820
        DEC     b                                   ;6822
        INC     b                                   ;6823
        RRA                                         ;6824
        LD      c,e                                 ;6825
        EX      af,af'                              ;6826
        INC     c                                   ;6827
        INC     b                                   ;6828
        EX      af,af'                              ;6829
bD_l682ah:
        ADD     a,d                                 ;682a
        INC     (hl)                                ;682b
        DEC     (hl)                                ;682c
        LD      b,0x18                              ;682d
        ADD     a,d                                 ;682f
        LD      c,b                                 ;6830
        LD      de,0x6                              ;6831
        ADD     a,d                                 ;6834
        RLA                                         ;6835
        DJNZ    bD_l683fh                           ;6836
        NOP                                         ;6838
        ADD     a,c                                 ;6839
        DEC     d                                   ;683a
        RLCA                                        ;683b
        LD      de,0x1d89                           ;683c
bD_l683fh:
        SCF                                         ;683f
        DEC     hl                                  ;6840
        DAA                                         ;6841
        DEC     hl                                  ;6842
        DEC     sp                                  ;6843
        CCF                                         ;6844
        CCF                                         ;6845
        SCF                                         ;6846
        EX      af,af'                              ;6847
        LD      (0x1282),hl                         ;6848
bD_l684bh:
        LD      a,(de)                              ;684b
        LD      b,0x18                              ;684c
        ADD     a,d                                 ;684e
        DJNZ    $+24                                ;684f
        LD      b,0x0                               ;6851
        ADD     a,c                                 ;6853
        INC     d                                   ;6854
        RLCA                                        ;6855
        NOP                                         ;6856
        EX      af,af'                              ;6857
        CPL                                         ;6858
        ADC     a,b                                 ;6859
        SCF                                         ;685a
        DAA                                         ;685b
        INC     l                                   ;685c
        DEC     l                                   ;685d
        DEC     l                                   ;685e
        LD      l,0x27                              ;685f
        CCF                                         ;6861
        EX      af,af'                              ;6862
        LD      (0x1808),hl                         ;6863
        DJNZ    bD_l6868h                           ;6866
bD_l6868h:
        LD      (bc),a                              ;6868
        CPL                                         ;6869
        ADD     a,c                                 ;686a
        NOP                                         ;686b
        DEC     b                                   ;686c
        CPL                                         ;686d
        ADC     a,e                                 ;686e
        SCF                                         ;686f
        DEC     hl                                  ;6870
        DAA                                         ;6871
        DEC     hl                                  ;6872
        CCF                                         ;6873
        CCF                                         ;6874
        DEC     sp                                  ;6875
        SCF                                         ;6876
        LD      (0x2422),hl                         ;6877
        DEC     b                                   ;687a
        LD      (0x1802),hl                         ;687b
        ADD     a,c                                 ;687e
        NOP                                         ;687f
        DEC     b                                   ;6880
        JR      bD_l6893h                           ;6881
        NOP                                         ;6883
        EX      af,af'                              ;6884
        CPL                                         ;6885
        ADC     a,b                                 ;6886
        LD      bc,0x302                            ;6887
        DEC     b                                   ;688a
        INC     b                                   ;688b
        LD      bc,0x302                            ;688c
        EX      af,af'                              ;688f
        LD      (0x1808),hl                         ;6890
bD_l6893h:
        DJNZ    bD_l6895h                           ;6893
bD_l6895h:
        EX      af,af'                              ;6895
        CPL                                         ;6896
        ADC     a,b                                 ;6897
        CCF                                         ;6898
        SCF                                         ;6899
        SCF                                         ;689a
        CCF                                         ;689b
        DEC     hl                                  ;689c
        DAA                                         ;689d
        DEC     hl                                  ;689e
        DEC     sp                                  ;689f
        EX      af,af'                              ;68a0
        LD      (0x1806),hl                         ;68a1
        ADD     a,d                                 ;68a4
        DEC     de                                  ;68a5
        LD      (de),a                              ;68a6
        LD      b,0x0                               ;68a7
        ADD     a,d                                 ;68a9
        RLA                                         ;68aa
        DJNZ    bD_l68b4h                           ;68ab
        NOP                                         ;68ad
        ADD     a,c                                 ;68ae
        DEC     d                                   ;68af
        EX      af,af'                              ;68b0
        CPL                                         ;68b1
        SUB     b                                   ;68b2
        INC     b                                   ;68b3
bD_l68b4h:
        LD      bc,0x302                            ;68b4
        RLCA                                        ;68b7
        LD      b,0x4                               ;68b8
        LD      b,0x8                               ;68ba
        EX      af,af'                              ;68bc
        INC     c                                   ;68bd
        EX      af,af'                              ;68be
        EX      af,af'                              ;68bf
        INC     c                                   ;68c0
        EX      af,af'                              ;68c1
        EX      af,af'                              ;68c2
        EX      af,af'                              ;68c3
        LD      (de),a                              ;68c4
        ADD     a,c                                 ;68c5
        INC     d                                   ;68c6
        RLCA                                        ;68c7
        JR      bD_l684bh                           ;68c8
        LD      d,0x7                               ;68ca
        NOP                                         ;68cc
        EX      af,af'                              ;68cd
        CPL                                         ;68ce
        SUB     b                                   ;68cf
        LD      b,0x5                               ;68d0
        RLCA                                        ;68d2
        LD      b,0x6                               ;68d3
        INC     b                                   ;68d5
        LD      b,0x6                               ;68d6
        EX      af,af'                              ;68d8
        EX      af,af'                              ;68d9
        INC     c                                   ;68da
        EX      af,af'                              ;68db
        EX      af,af'                              ;68dc
        INC     c                                   ;68dd
        EX      af,af'                              ;68de
        EX      af,af'                              ;68df
        EX      af,af'                              ;68e0
        LD      (de),a                              ;68e1
        EX      af,af'                              ;68e2
        JR      bD_l68edh                           ;68e3
        NOP                                         ;68e5
        LD      (bc),a                              ;68e6
        CPL                                         ;68e7
        ADD     a,c                                 ;68e8
        NOP                                         ;68e9
        DEC     b                                   ;68ea
        CPL                                         ;68eb
        SUB     b                                   ;68ec
bD_l68edh:
        INC     b                                   ;68ed
        DAA                                         ;68ee
        LD      bc,0x202                            ;68ef
        INC     bc                                  ;68f2
        DAA                                         ;68f3
        INC     b                                   ;68f4
        EX      af,af'                              ;68f5
        EX      af,af'                              ;68f6
        INC     c                                   ;68f7
        EX      af,af'                              ;68f8
        EX      af,af'                              ;68f9
        INC     c                                   ;68fa
        EX      af,af'                              ;68fb
        EX      af,af'                              ;68fc
        EX      af,af'                              ;68fd
        LD      (de),a                              ;68fe
        EX      af,af'                              ;68ff
        JR      bD_l690ah                           ;6900
        NOP                                         ;6902
        EX      af,af'                              ;6903
        CPL                                         ;6904
        SUB     b                                   ;6905
        INC     b                                   ;6906
        LD      bc,0x202                            ;6907
bD_l690ah:
        INC     bc                                  ;690a
        INC     b                                   ;690b
        DAA                                         ;690c
        INC     b                                   ;690d
        EX      af,af'                              ;690e
        EX      af,af'                              ;690f
        INC     c                                   ;6910
        EX      af,af'                              ;6911
        EX      af,af'                              ;6912
        INC     c                                   ;6913
        EX      af,af'                              ;6914
        EX      af,af'                              ;6915
        EX      af,af'                              ;6916
        LD      (de),a                              ;6917
        EX      af,af'                              ;6918
        JR      bD_l6923h                           ;6919
        NOP                                         ;691b
        EX      af,af'                              ;691c
        CPL                                         ;691d
        SUB     b                                   ;691e
        DEC     b                                   ;691f
        LD      b,0x27                              ;6920
        INC     l                                   ;6922
bD_l6923h:
        DEC     l                                   ;6923
        LD      l,0x27                              ;6924
        INC     b                                   ;6926
        EX      af,af'                              ;6927
        INC     c                                   ;6928
        EX      af,af'                              ;6929
        ADD     hl,bc                               ;692a
        LD      a,(bc)                              ;692b
        DEC     bc                                  ;692c
        EX      af,af'                              ;692d
        INC     c                                   ;692e
        INC     bc                                  ;692f
        LD      (de),a                              ;6930
        ADD     a,l                                 ;6931
        DEC     c                                   ;6932
        LD      c,0xf                               ;6933
        LD      (de),a                              ;6935
        LD      (de),a                              ;6936
        EX      af,af'                              ;6937
        JR      $+10                                ;6938
        NOP                                         ;693a
        EX      af,af'                              ;693b
        CPL                                         ;693c
        INC     b                                   ;693d
        INC     hl                                  ;693e
        ADD     a,h                                 ;693f
        LD      hl,0x441                            ;6940
        INC     b                                   ;6943
        INC     b                                   ;6944
        INC     hl                                  ;6945
        ADD     a,h                                 ;6946
        LD      sp,0x83a                            ;6947
        EX      af,af'                              ;694a
        DEC     b                                   ;694b
        DEC     a                                   ;694c
        ADD     a,e                                 ;694d
        LD      a,0x12                              ;694e
        LD      (de),a                              ;6950
        EX      af,af'                              ;6951
        JR      bD_l695ch                           ;6952
        NOP                                         ;6954
        EX      af,af'                              ;6955
        CPL                                         ;6956
        ADD     a,e                                 ;6957
        LD      b,0x40                              ;6958
        JR      nz,bD_l6961h                        ;695a
bD_l695ch:
        INC     hl                                  ;695c
        ADD     a,e                                 ;695d
        EX      af,af'                              ;695e
        JR      c,bD_l6991h                         ;695f
bD_l6961h:
        DEC     b                                   ;6961
        INC     hl                                  ;6962
        ADD     a,d                                 ;6963
        LD      (de),a                              ;6964
        INC     a                                   ;6965
        LD      b,0x3d                              ;6966
        EX      af,af'                              ;6968
        JR      $+10                                ;6969
        NOP                                         ;696b
        EX      af,af'                              ;696c
        CPL                                         ;696d
        SUB     b                                   ;696e
        INC     b                                   ;696f
        DEC     b                                   ;6970
        INC     b                                   ;6971
        LD      bc,0x503                            ;6972
        LD      b,0x6                               ;6975
        EX      af,af'                              ;6977
        EX      af,af'                              ;6978
        INC     c                                   ;6979
        EX      af,af'                              ;697a
        EX      af,af'                              ;697b
        INC     c                                   ;697c
        EX      af,af'                              ;697d
        EX      af,af'                              ;697e
        EX      af,af'                              ;697f
        LD      (de),a                              ;6980
        LD      b,0x18                              ;6981
        ADD     a,d                                 ;6983
        DEC     d                                   ;6984
        DJNZ    bD_l698dh                           ;6985
        NOP                                         ;6987
        ADD     a,d                                 ;6988
        RLA                                         ;6989
        DJNZ    bD_l6994h                           ;698a
        CPL                                         ;698c
bD_l698dh:
        NOP                                         ;698d
        SUB     d                                   ;698e
        DEC     bc                                  ;698f
        ADD     hl,bc                               ;6990
bD_l6991h:
        DEC     bc                                  ;6991
        ADD     hl,bc                               ;6992
        DEC     bc                                  ;6993
bD_l6994h:
        ADD     hl,bc                               ;6994
        DEC     bc                                  ;6995
        ADD     hl,bc                               ;6996
        LD      a,(bc)                              ;6997
        LD      de,0x110a                           ;6998
        LD      a,(bc)                              ;699b
        LD      de,0x110a                           ;699c
        INC     b                                   ;699f
        LD      bc,0x6                              ;69a0
        ADD     a,d                                 ;69a3
        INC     a                                   ;69a4
        LD      a,0x6                               ;69a5
        NOP                                         ;69a7
        ADD     a,e                                 ;69a8
        INC     a                                   ;69a9
        INC     bc                                  ;69aa
        LD      bc,0x5                              ;69ab
        LD      (bc),a                              ;69ae
        INC     a                                   ;69af
        ADD     a,c                                 ;69b0
        INC     bc                                  ;69b1
        DEC     b                                   ;69b2
        INC     b                                   ;69b3
        SUB     b                                   ;69b4
        DEC     bc                                  ;69b5
        LD      b,0x7                               ;69b6
        EX      af,af'                              ;69b8
        DEC     bc                                  ;69b9
        ADD     hl,bc                               ;69ba
        DEC     bc                                  ;69bb
        ADD     hl,bc                               ;69bc
        LD      a,(bc)                              ;69bd
        LD      de,0x110c                           ;69be
        LD      a,(bc)                              ;69c1
        LD      de,0x110a                           ;69c2
        EX      af,af'                              ;69c5
        NOP                                         ;69c6
        ADD     a,h                                 ;69c7
        LD      (bc),a                              ;69c8
        INC     b                                   ;69c9
        INC     b                                   ;69ca
        LD      bc,0x4                              ;69cb
        ADC     a,c                                 ;69ce
        CCF                                         ;69cf
        INC     a                                   ;69d0
        INC     a                                   ;69d1
        INC     bc                                  ;69d2
        INC     b                                   ;69d3
        LD      bc,0x0                              ;69d4
        DEC     b                                   ;69d7
        INC     b                                   ;69d8
        INC     a                                   ;69d9
        SUB     e                                   ;69da
        INC     bc                                  ;69db
        INC     b                                   ;69dc
        INC     b                                   ;69dd
        DEC     bc                                  ;69de
        ADD     hl,bc                               ;69df
        DEC     bc                                  ;69e0
        ADD     hl,bc                               ;69e1
        DEC     bc                                  ;69e2
        ADD     hl,bc                               ;69e3
        DEC     bc                                  ;69e4
        ADD     hl,bc                               ;69e5
        LD      a,(bc)                              ;69e6
        LD      de,0x110a                           ;69e7
        LD      a,(bc)                              ;69ea
        LD      de,0x110a                           ;69eb
        DEC     bc                                  ;69ee
        NOP                                         ;69ef
        ADD     a,c                                 ;69f0
        LD      (bc),a                              ;69f1
        INC     b                                   ;69f2
        INC     b                                   ;69f3
        LD      (bc),a                              ;69f4
        NOP                                         ;69f5
        ADD     a,d                                 ;69f6
        LD      (bc),a                              ;69f7
        DEC     b                                   ;69f8
        INC     b                                   ;69f9
        INC     a                                   ;69fa
        LD      (bc),a                              ;69fb
        INC     b                                   ;69fc
        ADD     a,c                                 ;69fd
        DEC     b                                   ;69fe
        DEC     b                                   ;69ff
        INC     a                                   ;6a00
        SUB     b                                   ;6a01
        DEC     bc                                  ;6a02
        ADD     hl,bc                               ;6a03
        DEC     bc                                  ;6a04
        ADD     hl,bc                               ;6a05
        DEC     bc                                  ;6a06
        ADD     hl,bc                               ;6a07
        DEC     bc                                  ;6a08
        ADD     hl,bc                               ;6a09
        LD      a,(bc)                              ;6a0a
        LD      de,0x110a                           ;6a0b
        LD      a,(bc)                              ;6a0e
        LD      de,0x110a                           ;6a0f
        EX      af,af'                              ;6a12
        NOP                                         ;6a13
        LD      (bc),a                              ;6a14
        INC     b                                   ;6a15
        ADD     a,c                                 ;6a16
        LD      bc,0x5                              ;6a17
        LD      (bc),a                              ;6a1a
        INC     a                                   ;6a1b
        ADD     a,(hl)                              ;6a1c
        INC     bc                                  ;6a1d
        INC     b                                   ;6a1e
        INC     b                                   ;6a1f
        LD      bc,0x0                              ;6a20
        DEC     b                                   ;6a23
        INC     a                                   ;6a24
        SUB     e                                   ;6a25
        INC     bc                                  ;6a26
        INC     b                                   ;6a27
        INC     b                                   ;6a28
        DEC     bc                                  ;6a29
        ADD     hl,bc                               ;6a2a
        DEC     bc                                  ;6a2b
        ADD     hl,bc                               ;6a2c
        DEC     bc                                  ;6a2d
        ADD     hl,bc                               ;6a2e
        DEC     bc                                  ;6a2f
        ADD     hl,bc                               ;6a30
        LD      a,(bc)                              ;6a31
        LD      de,0x110a                           ;6a32
        LD      a,(bc)                              ;6a35
        LD      de,0x110a                           ;6a36
        LD      b,0x0                               ;6a39
        SUB     l                                   ;6a3b
        LD      (bc),a                              ;6a3c
        INC     b                                   ;6a3d
        NOP                                         ;6a3e
        NOP                                         ;6a3f
        LD      (bc),a                              ;6a40
        INC     b                                   ;6a41
        LD      bc,0x3f00                           ;6a42
        INC     a                                   ;6a45
        NOP                                         ;6a46
        NOP                                         ;6a47
        CCF                                         ;6a48
        INC     a                                   ;6a49
        INC     bc                                  ;6a4a
        INC     b                                   ;6a4b
        DEC     b                                   ;6a4c
        INC     a                                   ;6a4d
        INC     b                                   ;6a4e
        INC     b                                   ;6a4f
        DEC     b                                   ;6a50
        DEC     b                                   ;6a51
        INC     a                                   ;6a52
        SUB     c                                   ;6a53
        LD      c,b                                 ;6a54
        SCF                                         ;6a55
        RLA                                         ;6a56
        LD      a,(de)                              ;6a57
        DEC     de                                  ;6a58
        DEC     de                                  ;6a59
        INC     e                                   ;6a5a
        JR      $+74                                ;6a5b
        LD      b,l                                 ;6a5d
        INC     l                                   ;6a5e
        DEC     e                                   ;6a5f
        LD      e,0x1e                              ;6a60
        RRA                                         ;6a62
        DEC     hl                                  ;6a63
        LD      c,b                                 ;6a64
        RLCA                                        ;6a65
        DEC     c                                   ;6a66
        SBC     a,d                                 ;6a67
        LD      c,b                                 ;6a68
        DEC     c                                   ;6a69
        DJNZ    bD_l6a79h                           ;6a6a
        DJNZ    bD_l6a7bh                           ;6a6c
        DJNZ    $+15                                ;6a6e
        LD      c,b                                 ;6a70
        LD      (de),a                              ;6a71
        INC     de                                  ;6a72
        LD      (de),a                              ;6a73
        INC     de                                  ;6a74
        LD      (de),a                              ;6a75
        INC     de                                  ;6a76
        LD      (de),a                              ;6a77
        LD      c,b                                 ;6a78
bD_l6a79h:
        DEC     a                                   ;6a79
        LD      a,(bc)                              ;6a7a
bD_l6a7bh:
        LD      de,0x110a                           ;6a7b
        LD      a,(bc)                              ;6a7e
        LD      de,0x1a17                           ;6a7f
        INC     bc                                  ;6a82
        DEC     de                                  ;6a83
        ADD     a,l                                 ;6a84
        INC     e                                   ;6a85
        JR      $+57                                ;6a86
        INC     l                                   ;6a88
        DEC     e                                   ;6a89
        INC     bc                                  ;6a8a
        LD      e,0x83                              ;6a8b
        RRA                                         ;6a8d
        DEC     hl                                  ;6a8e
        LD      b,l                                 ;6a8f
        EX      af,af'                              ;6a90
        DEC     c                                   ;6a91
        XOR     b                                   ;6a92
        DJNZ    bD_l6ad7h                           ;6a93
        DEC     c                                   ;6a95
        LD      b,e                                 ;6a96
        DJNZ    $+15                                ;6a97
        DJNZ    bD_l6aa8h                           ;6a99
        INC     de                                  ;6a9b
        LD      b,b                                 ;6a9c
        DEC     c                                   ;6a9d
        LD      b,c                                 ;6a9e
        INC     de                                  ;6a9f
        LD      (de),a                              ;6aa0
        INC     de                                  ;6aa1
        LD      (de),a                              ;6aa2
        LD      a,(bc)                              ;6aa3
        LD      de,0x110c                           ;6aa4
        LD      a,(bc)                              ;6aa7
