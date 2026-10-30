bF_la702h:
        LD      b,b                                 ;a702
        LD      bc,bF_la560h                        ;a703
        LD      (bc),a                              ;a706
        SUB     h                                   ;a707
bF_la708h:
        LD      hl,0x8402                           ;a708
        LD      sp,0x7402                           ;a70b
        LD      b,c                                 ;a70e
        LD      (bc),a                              ;a70f
bF_la710h:
        AND     (hl)                                ;a710
        LD      h,a                                 ;a711
        INC     bc                                  ;a712
        LD      (hl),d                              ;a713
        LD      b,b                                 ;a714
        INC     bc                                  ;a715
        ADD     a,b                                 ;a716
        OR      l                                   ;a717
        INC     b                                   ;a718
        ADD     a,h                                 ;a719
        LD      hl,0x9404                           ;a71a
        LD      sp,0xa404                           ;a71d
        LD      b,c                                 ;a720
        INC     b                                   ;a721
        ADD     a,b                                 ;a722
        ADD     a,h                                 ;a723
        DEC     b                                   ;a724
        AND     (hl)                                ;a725
        OR      a                                   ;a726
        LD      b,0x70                              ;a727
        LD      (hl),0x6                            ;a729
        ADD     a,d                                 ;a72b
        LD      d,b                                 ;a72c
        RLCA                                        ;a72d
        ADD     a,d                                 ;a72e
        JR      nz,bF_la738h                        ;a72f
        LD      (hl),b                              ;a731
        ADD     a,l                                 ;a732
        RLCA                                        ;a733
        AND     h                                   ;a734
        OR      c                                   ;a735
        RLCA                                        ;a736
        ADD     a,h                                 ;a737
bF_la738h:
        POP     bc                                  ;a738
        EX      af,af'                              ;a739
        HALT                                        ;a73a
        SUB     a                                   ;a73b
        ADD     hl,bc                               ;a73c
        LD      (hl),b                              ;a73d
        LD      h,0x9                               ;a73e
        ADD     a,b                                 ;a740
        AND     h                                   ;a741
        LD      a,(bc)                              ;a742
        ADD     a,b                                 ;a743
        LD      b,h                                 ;a744
        LD      a,(bc)                              ;a745
        ADD     a,h                                 ;a746
        OR      c                                   ;a747
bF_la748h:
        LD      a,(bc)                              ;a748
        LD      (hl),h                              ;a749
        POP     bc                                  ;a74a
        DEC     c                                   ;a74b
        ADD     a,b                                 ;a74c
        LD      h,(hl)                              ;a74d
        DEC     c                                   ;a74e
        AND     b                                   ;a74f
        LD      h,(hl)                              ;a750
        LD      c,0x80                              ;a751
        LD      h,h                                 ;a753
        LD      c,0x60                              ;a754
        AND     l                                   ;a756
        RRCA                                        ;a757
        LD      (hl),h                              ;a758
        LD      de,0x840f                           ;a759
        LD      hl,0x940f                           ;a75c
        LD      sp,0x810f                           ;a75f
        AND     b                                   ;a762
        DJNZ    bF_la7dbh                           ;a763
        DAA                                         ;a765
        DJNZ    bF_la708h                           ;a766
        LD      (hl),0x10                           ;a768
        LD      (hl),b                              ;a76a
        LD      h,(hl)                              ;a76b
        LD      de,0xc194                           ;a76c
        LD      de,0xd184                           ;a76f
        LD      de,0xe174                           ;a772
        LD      (de),a                              ;a775
        ADD     a,c                                 ;a776
        LD      b,b                                 ;a777
        LD      (de),a                              ;a778
        LD      h,b                                 ;a779
        ADD     a,l                                 ;a77a
        LD      (de),a                              ;a77b
        AND     b                                   ;a77c
        AND     h                                   ;a77d
        INC     d                                   ;a77e
        LD      (hl),b                              ;a77f
        LD      d,(hl)                              ;a780
        INC     d                                   ;a781
        AND     h                                   ;a782
        AND     c                                   ;a783
        INC     d                                   ;a784
        SUB     h                                   ;a785
bF_la786h:
        OR      c                                   ;a786
        INC     d                                   ;a787
        ADD     a,h                                 ;a788
        POP     bc                                  ;a789
        DEC     d                                   ;a78a
        LD      h,b                                 ;a78b
        DEC     (hl)                                ;a78c
        DEC     d                                   ;a78d
        ADD     a,b                                 ;a78e
        LD      d,h                                 ;a78f
        RST     KEYINT                              ;a790
        INC     l                                   ;a791
        LD      (bc),a                              ;a792
        SUB     h                                   ;a793
        LD      b,c                                 ;a794
        LD      (bc),a                              ;a795
bF_la796h:
        AND     h                                   ;a796
        LD      h,c                                 ;a797
        INC     bc                                  ;a798
        SUB     b                                   ;a799
        LD      d,(hl)                              ;a79a
        INC     b                                   ;a79b
        AND     b                                   ;a79c
        LD      (hl),0x6                            ;a79d
        SUB     b                                   ;a79f
        LD      b,h                                 ;a7a0
        RLCA                                        ;a7a1
bF_la7a2h:
        SUB     (hl)                                ;a7a2
        SUB     a                                   ;a7a3
        LD      a,(bc)                              ;a7a4
        AND     (hl)                                ;a7a5
        DAA                                         ;a7a6
        DEC     bc                                  ;a7a7
        SUB     d                                   ;a7a8
        LD      (hl),b                              ;a7a9
        DEC     c                                   ;a7aa
        ADD     a,c                                 ;a7ab
        LD      d,b                                 ;a7ac
        LD      c,0x80                              ;a7ad
        LD      b,(hl)                              ;a7af
        RRCA                                        ;a7b0
        HALT                                        ;a7b1
        DAA                                         ;a7b2
        DJNZ    bF_la827h                           ;a7b3
        LD      d,b                                 ;a7b5
        DJNZ    bF_la748h                           ;a7b6
        AND     h                                   ;a7b8
        LD      de,0x3184                           ;a7b9
        LD      de,0x4194                           ;a7bc
        LD      de,0x51a4                           ;a7bf
        LD      de,0x9560                           ;a7c2
        INC     de                                  ;a7c5
        ADD     a,(hl)                              ;a7c6
        SUB     a                                   ;a7c7
        DEC     d                                   ;a7c8
        AND     b                                   ;a7c9
        LD      d,(hl)                              ;a7ca
        DEC     d                                   ;a7cb
        HALT                                        ;a7cc
        AND     a                                   ;a7cd
        DEC     d                                   ;a7ce
        LD      h,b                                 ;a7cf
        OR      l                                   ;a7d0
        LD      d,0x60                              ;a7d1
        LD      (hl),l                              ;a7d3
        LD      d,0x90                              ;a7d4
        SUB     h                                   ;a7d6
        RLA                                         ;a7d7
        ADD     a,c                                 ;a7d8
        JR      nc,bF_la7f5h                        ;a7d9
bF_la7dbh:
        SUB     b                                   ;a7db
        LD      h,0x1a                              ;a7dc
        LD      h,b                                 ;a7de
        AND     l                                   ;a7df
        INC     e                                   ;a7e0
        SUB     b                                   ;a7e1
        ADD     a,h                                 ;a7e2
        DEC     e                                   ;a7e3
        ADD     a,b                                 ;a7e4
        LD      b,h                                 ;a7e5
        DEC     e                                   ;a7e6
        AND     b                                   ;a7e7
        ADD     a,h                                 ;a7e8
        RRA                                         ;a7e9
        LD      (hl),h                              ;a7ea
        LD      hl,0x941f                           ;a7eb
        LD      hl,bF_la41fh                        ;a7ee
        LD      b,c                                 ;a7f1
        LD      hl,0x4490                           ;a7f2
bF_la7f5h:
        LD      hl,BSndSaveSongCnt                  ;a7f5
        LD      (0x26b0),hl                         ;a7f8
        LD      (0xc796),hl                         ;a7fb
        INC     h                                   ;a7fe
        SUB     (hl)                                ;a7ff
        RST     0                                   ;a800
        DEC     h                                   ;a801
        OR      (hl)                                ;a802
        SCF                                         ;a803
        DEC     h                                   ;a804
        OR      h                                   ;a805
        LD      (hl),c                              ;a806
        DEC     h                                   ;a807
        AND     h                                   ;a808
        SUB     c                                   ;a809
        DEC     h                                   ;a80a
        SUB     h                                   ;a80b
        OR      c                                   ;a80c
        DAA                                         ;a80d
        AND     b                                   ;a80e
        LD      h,h                                 ;a80f
        JR      z,bF_la7a2h                         ;a810
        LD      b,h                                 ;a812
        LD      hl,(bF_la796h)                      ;a813
        RST     KEYINT                              ;a816
        DEC     c                                   ;a817
        RLCA                                        ;a818
        HALT                                        ;a819
        AND     a                                   ;a81a
        DEC     c                                   ;a81b
        AND     (hl)                                ;a81c
        RST     CHRGTR                              ;a81d
        DEC     d                                   ;a81e
        HALT                                        ;a81f
        AND     a                                   ;a820
        ADD     hl,de                               ;a821
        HALT                                        ;a822
        AND     a                                   ;a823
        DEC     e                                   ;a824
        AND     (hl)                                ;a825
        SUB     a                                   ;a826
bF_la827h:
        LD      hl,bF_lb7a6h                        ;a827
        INC     h                                   ;a82a
        HALT                                        ;a82b
        OR      a                                   ;a82c
        ADD     hl,sp                               ;a82d
        ADD     a,(hl)                              ;a82e
        SCF                                         ;a82f
        INC     a                                   ;a830
        HALT                                        ;a831
        RST     CHRGTR                              ;a832
        LD      b,d                                 ;a833
        LD      (hl),c                              ;a834
        LD      h,b                                 ;a835
        LD      b,d                                 ;a836
        ADD     a,(hl)                              ;a837
        RST     DCOMPR                              ;a838
        LD      c,c                                 ;a839
        ADD     a,d                                 ;a83a
        SUB     b                                   ;a83b
        LD      c,e                                 ;a83c
        LD      h,b                                 ;a83d
        ADD     a,l                                 ;a83e
        RST     KEYINT                              ;a83f
        LD      l,0x0                               ;a840
        HALT                                        ;a842
        LD      h,a                                 ;a843
        LD      bc,0x3560                           ;a844
        LD      bc,0x9071                           ;a847
        LD      (bc),a                              ;a84a
        AND     b                                   ;a84b
        LD      b,h                                 ;a84c
        LD      (bc),a                              ;a84d
        LD      h,b                                 ;a84e
        ADD     a,l                                 ;a84f
        INC     bc                                  ;a850
        AND     (hl)                                ;a851
        SCF                                         ;a852
        INC     b                                   ;a853
        SUB     h                                   ;a854
        SUB     c                                   ;a855
        INC     b                                   ;a856
        LD      (hl),h                              ;a857
        AND     c                                   ;a858
        DEC     b                                   ;a859
        LD      (hl),b                              ;a85a
        LD      (hl),0x6                            ;a85b
        LD      (hl),h                              ;a85d
        LD      b,c                                 ;a85e
        LD      b,0x84                              ;a85f
        LD      h,c                                 ;a861
        LD      b,0x94                              ;a862
        ADD     a,c                                 ;a864
        LD      b,0xa4                              ;a865
        AND     c                                   ;a867
        RLCA                                        ;a868
        AND     (hl)                                ;a869
        DAA                                         ;a86a
        RLCA                                        ;a86b
        ADD     a,b                                 ;a86c
        LD      b,l                                 ;a86d
        RLCA                                        ;a86e
        ADD     a,b                                 ;a86f
        LD      h,(hl)                              ;a870
        RLCA                                        ;a871
        AND     h                                   ;a872
        SUB     c                                   ;a873
        RLCA                                        ;a874
        AND     h                                   ;a875
        POP     bc                                  ;a876
        EX      af,af'                              ;a877
        ADD     a,h                                 ;a878
        SUB     c                                   ;a879
        EX      af,af'                              ;a87a
        LD      (hl),h                              ;a87b
        OR      c                                   ;a87c
        ADD     hl,bc                               ;a87d
        ADD     a,b                                 ;a87e
        INC     h                                   ;a87f
        LD      a,(bc)                              ;a880
        HALT                                        ;a881
        ADD     a,a                                 ;a882
        DEC     bc                                  ;a883
        SUB     h                                   ;a884
        LD      hl,0x900b                           ;a885
        LD      b,(hl)                              ;a888
        DEC     bc                                  ;a889
        LD      h,b                                 ;a88a
        PUSH    bc                                  ;a88b
        INC     c                                   ;a88c
        ADD     a,c                                 ;a88d
        LD      (hl),b                              ;a88e
        DEC     c                                   ;a88f
        HALT                                        ;a890
        DAA                                         ;a891
        LD      c,0x70                              ;a892
        LD      h,(hl)                              ;a894
        LD      c,0xa0                              ;a895
        LD      h,(hl)                              ;a897
        RRCA                                        ;a898
        LD      (hl),d                              ;a899
        JR      nz,bF_la8ach                        ;a89a
        ADD     a,h                                 ;a89c
        LD      hl,0x8010                           ;a89d
        LD      d,h                                 ;a8a0
        DJNZ    bF_la903h                           ;a8a1
        SUB     l                                   ;a8a3
        LD      de,0x4072                           ;a8a4
        LD      de,bF_lb7a6h                        ;a8a7
        LD      (de),a                              ;a8aa
        AND     (hl)                                ;a8ab
bF_la8ach:
        RST     CHRGTR                              ;a8ac
        INC     de                                  ;a8ad
        AND     h                                   ;a8ae
        LD      sp,0x8213                           ;a8af
        ADD     a,b                                 ;a8b2
        DEC     d                                   ;a8b3
        HALT                                        ;a8b4
        LD      b,a                                 ;a8b5
        LD      d,0x76                              ;a8b6
        ADD     a,a                                 ;a8b8
        RLA                                         ;a8b9
        SUB     b                                   ;a8ba
        INC     h                                   ;a8bb
        RLA                                         ;a8bc
        ADD     a,b                                 ;a8bd
        LD      h,h                                 ;a8be
        RLA                                         ;a8bf
        AND     b                                   ;a8c0
        AND     h                                   ;a8c1
        JR      $-125                               ;a8c2
        LD      d,b                                 ;a8c4
        ADD     hl,de                               ;a8c5
        LD      h,b                                 ;a8c6
        LD      b,h                                 ;a8c7
        ADD     hl,de                               ;a8c8
        ADD     a,b                                 ;a8c9
        ADD     a,h                                 ;a8ca
        RST     KEYINT                              ;a8cb
        INC     h                                   ;a8cc
        NOP                                         ;a8cd
        LD      h,(hl)                              ;a8ce
        LD      h,a                                 ;a8cf
        NOP                                         ;a8d0
        ADD     a,b                                 ;a8d1
        LD      h,(hl)                              ;a8d2
        NOP                                         ;a8d3
        AND     b                                   ;a8d4
        LD      b,(hl)                              ;a8d5
        LD      bc,0x3680                           ;a8d6
        LD      bc,BSndSaveSongCnt                  ;a8d9
        LD      (bc),a                              ;a8dc
        ADD     a,b                                 ;a8dd
        LD      h,0x2                               ;a8de
        AND     c                                   ;a8e0
        LD      (hl),b                              ;a8e1
        INC     bc                                  ;a8e2
        LD      h,b                                 ;a8e3
        DEC     (hl)                                ;a8e4
        INC     bc                                  ;a8e5
        SUB     b                                   ;a8e6
        LD      d,(hl)                              ;a8e7
        INC     b                                   ;a8e8
        LD      (hl),h                              ;a8e9
        LD      hl,0x6004                           ;a8ea
        LD      d,l                                 ;a8ed
        INC     b                                   ;a8ee
        ADD     a,b                                 ;a8ef
        LD      (hl),l                              ;a8f0
        INC     b                                   ;a8f1
        SUB     h                                   ;a8f2
        OR      c                                   ;a8f3
        INC     b                                   ;a8f4
        AND     h                                   ;a8f5
        POP     bc                                  ;a8f6
        DEC     b                                   ;a8f7
        LD      h,(hl)                              ;a8f8
        LD      (hl),a                              ;a8f9
        DEC     b                                   ;a8fa
        ADD     a,b                                 ;a8fb
        LD      h,0x5                               ;a8fc
        OR      b                                   ;a8fe
        LD      b,(hl)                              ;a8ff
        LD      b,0x90                              ;a900
        LD      d,(hl)                              ;a902
bF_la903h:
        LD      b,0x76                              ;a903
        RST     0                                   ;a905
        RLCA                                        ;a906
        LD      h,b                                 ;a907
        DEC     h                                   ;a908
        RLCA                                        ;a909
        ADD     a,b                                 ;a90a
        LD      h,l                                 ;a90b
        RLCA                                        ;a90c
        HALT                                        ;a90d
        ADD     a,a                                 ;a90e
        RLCA                                        ;a90f
        LD      h,b                                 ;a910
        AND     l                                   ;a911
        LD      a,(bc)                              ;a912
        HALT                                        ;a913
        RST     0                                   ;a914
        DEC     bc                                  ;a915
        LD      (hl),b                              ;a916
        DEC     (hl)                                ;a917
        DEC     bc                                  ;a918
        SUB     c                                   ;a919
        LD      (hl),b                              ;a91a
        DEC     bc                                  ;a91b
        LD      (hl),b                              ;a91c
        OR      l                                   ;a91d
        DEC     c                                   ;a91e
        LD      (hl),b                              ;a91f
        DEC     (hl)                                ;a920
        DEC     c                                   ;a921
        SUB     b                                   ;a922
        LD      d,h                                 ;a923
        DEC     c                                   ;a924
        LD      (hl),h                              ;a925
        LD      h,c                                 ;a926
        DEC     c                                   ;a927
        SUB     h                                   ;a928
        AND     c                                   ;a929
        LD      c,0x96                              ;a92a
        LD      d,a                                 ;a92c
        LD      c,0x60                              ;a92d
        LD      (hl),h                              ;a92f
        LD      c,0x80                              ;a930
        LD      (hl),h                              ;a932
        LD      c,0x80                              ;a933
        OR      l                                   ;a935
        RRCA                                        ;a936
        ADD     a,b                                 ;a937
        LD      d,(hl)                              ;a938
        RST     KEYINT                              ;a939
        DEC     d                                   ;a93a
        LD      bc,bF_lb1a4h                        ;a93b
        LD      (bc),a                              ;a93e
        LD      h,(hl)                              ;a93f
        LD      (hl),a                              ;a940
        INC     b                                   ;a941
        OR      (hl)                                ;a942
        ADD     a,a                                 ;a943
        DEC     b                                   ;a944
        LD      (hl),h                              ;a945
        OR      c                                   ;a946
        LD      b,0xa6                              ;a947
        AND     a                                   ;a949
        LD      b,0x94                              ;a94a
        POP     bc                                  ;a94c
        RLCA                                        ;a94d
        AND     (hl)                                ;a94e
        AND     a                                   ;a94f
        EX      af,af'                              ;a950
        SUB     (hl)                                ;a951
        SCF                                         ;a952
        ADD     hl,bc                               ;a953
        SUB     (hl)                                ;a954
        LD      d,a                                 ;a955
        DEC     bc                                  ;a956
        AND     d                                   ;a957
        LD      h,b                                 ;a958
        INC     c                                   ;a959
        ADD     a,h                                 ;a95a
        LD      de,0x940c                           ;a95b
        LD      hl,bF_la40ch                        ;a95e
        LD      sp,0x860c                           ;a961
        AND     a                                   ;a964
        LD      c,0xa6                              ;a965
        SCF                                         ;a967
        LD      c,0x84                              ;a968
        POP     bc                                  ;a96a
        LD      de,0xc776                           ;a96b
        LD      (de),a                              ;a96e
        LD      (hl),h                              ;a96f
        LD      sp,0x7112                           ;a970
        LD      h,b                                 ;a973
        INC     de                                  ;a974
        HALT                                        ;a975
        RST     0                                   ;a976
        INC     d                                   ;a977
        LD      h,h                                 ;a978
        SUB     c                                   ;a979
        RST     KEYINT                              ;a97a
        INC     sp                                  ;a97b
        NOP                                         ;a97c
        AND     (hl)                                ;a97d
        AND     a                                   ;a97e
        LD      bc,bF_lb776h                        ;a97f
        LD      (bc),a                              ;a982
        OR      (hl)                                ;a983
        SCF                                         ;a984
bF_la985h:
        LD      (bc),a                              ;a985
        AND     c                                   ;a986
        LD      d,b                                 ;a987
        INC     bc                                  ;a988
        ADD     a,b                                 ;a989
        LD      h,h                                 ;a98a
        INC     bc                                  ;a98b
        LD      h,b                                 ;a98c
        ADD     a,h                                 ;a98d
        INC     bc                                  ;a98e
        ADD     a,b                                 ;a98f
        AND     l                                   ;a990
        INC     b                                   ;a991
        ADD     a,b                                 ;a992
        LD      b,(hl)                              ;a993
        LD      b,0xb4                              ;a994
        AND     c                                   ;a996
        LD      b,0x94                              ;a997
        OR      c                                   ;a999
        LD      b,0x74                              ;a99a
        POP     bc                                  ;a99c
        RLCA                                        ;a99d
        HALT                                        ;a99e
        DAA                                         ;a99f
        RLCA                                        ;a9a0
        SUB     b                                   ;a9a1
        SUB     h                                   ;a9a2
        EX      af,af'                              ;a9a3
        LD      (hl),h                              ;a9a4
        LD      b,c                                 ;a9a5
        LD      a,(bc)                              ;a9a6
        HALT                                        ;a9a7
        LD      h,a                                 ;a9a8
        LD      a,(bc)                              ;a9a9
        AND     h                                   ;a9aa
        LD      (hl),c                              ;a9ab
        LD      a,(bc)                              ;a9ac
        SUB     h                                   ;a9ad
        SUB     c                                   ;a9ae
        LD      a,(bc)                              ;a9af
        ADD     a,h                                 ;a9b0
        OR      c                                   ;a9b1
        DEC     bc                                  ;a9b2
        AND     (hl)                                ;a9b3
        OR      a                                   ;a9b4
        INC     c                                   ;a9b5
        LD      (hl),b                              ;a9b6
        LD      (hl),l                              ;a9b7
        DEC     c                                   ;a9b8
        ADD     a,b                                 ;a9b9
        LD      b,h                                 ;a9ba
        LD      c,0xa0                              ;a9bb
        LD      h,h                                 ;a9bd
        LD      c,0x80                              ;a9be
        AND     h                                   ;a9c0
        RRCA                                        ;a9c1
        ADD     a,h                                 ;a9c2
        LD      b,c                                 ;a9c3
        DJNZ    $-104                               ;a9c4
        OR      a                                   ;a9c6
        LD      de,0x7184                           ;a9c7
        LD      de,0x71a4                           ;a9ca
        LD      de,bF_la080h+1                      ;a9cd
        LD      de,0xc7b6                           ;a9d0
        LD      (de),a                              ;a9d3
        LD      h,b                                 ;a9d4
        LD      (hl),l                              ;a9d5
        INC     de                                  ;a9d6
        LD      h,b                                 ;a9d7
        INC     h                                   ;a9d8
        INC     de                                  ;a9d9
        LD      h,b                                 ;a9da
        LD      h,l                                 ;a9db
        INC     d                                   ;a9dc
        SUB     d                                   ;a9dd
        ADD     a,b                                 ;a9de
        DEC     d                                   ;a9df
        ADD     a,h                                 ;a9e0
        LD      d,c                                 ;a9e1
        DEC     d                                   ;a9e2
        SUB     h                                   ;a9e3
        LD      h,c                                 ;a9e4
        DEC     d                                   ;a9e5
        AND     h                                   ;a9e6
        LD      (hl),c                              ;a9e7
        LD      d,0xa6                              ;a9e8
        RST     CHRGTR                              ;a9ea
        RLA                                         ;a9eb
        ADD     a,b                                 ;a9ec
        LD      b,(hl)                              ;a9ed
        RLA                                         ;a9ee
        OR      b                                   ;a9ef
        LD      b,(hl)                              ;a9f0
        JR      bF_la985h                           ;a9f1
        OR      b                                   ;a9f3
        ADD     hl,de                               ;a9f4
        ADD     a,h                                 ;a9f5
        LD      hl,0x9419                           ;a9f6
        LD      b,c                                 ;a9f9
        ADD     hl,de                               ;a9fa
        AND     h                                   ;a9fb
        LD      h,c                                 ;a9fc
        LD      a,(de)                              ;a9fd
        SUB     c                                   ;a9fe
        SUB     b                                   ;a9ff
        DEC     de                                  ;aa00
        ADD     a,b                                 ;aa01
        DEC     (hl)                                ;aa02
        DEC     de                                  ;aa03
        ADD     a,b                                 ;aa04
        LD      d,(hl)                              ;aa05
        DEC     de                                  ;aa06
        HALT                                        ;aa07
        RST     0                                   ;aa08
        INC     e                                   ;aa09
        SUB     d                                   ;aa0a
        ADD     a,b                                 ;aa0b
        DEC     e                                   ;aa0c
        ADD     a,h                                 ;aa0d
        LD      hl,0x941d                           ;aa0e
        LD      b,c                                 ;aa11
bF_laa12h:
        DEC     e                                   ;aa12
        AND     h                                   ;aa13
        LD      h,c                                 ;aa14
        RST     KEYINT                              ;aa15
        INC     (hl)                                ;aa16
        NOP                                         ;aa17
        LD      (hl),b                              ;aa18
        LD      (hl),l                              ;aa19
        LD      bc,0x3174                           ;aa1a
        LD      bc,0x4164                           ;aa1d
        LD      bc,0x7164                           ;aa20
        LD      bc,0x2680                           ;aa23
        LD      bc,0xa570                           ;aa26
        LD      (bc),a                              ;aa29
        ADD     a,b                                 ;aa2a
        LD      d,(hl)                              ;aa2b
        INC     bc                                  ;aa2c
        LD      (hl),b                              ;aa2d
        LD      b,(hl)                              ;aa2e
        INC     bc                                  ;aa2f
        AND     b                                   ;aa30
        LD      b,(hl)                              ;aa31
        INC     bc                                  ;aa32
        ADD     a,d                                 ;aa33
bF_laa34h:
        LD      h,b                                 ;aa34
        INC     b                                   ;aa35
        LD      h,b                                 ;aa36
        DEC     h                                   ;aa37
        INC     b                                   ;aa38
        ADD     a,b                                 ;aa39
        LD      b,(hl)                              ;aa3a
        DEC     b                                   ;aa3b
        HALT                                        ;aa3c
        RLA                                         ;aa3d
        LD      b,0x76                              ;aa3e
        LD      d,a                                 ;aa40
        RLCA                                        ;aa41
        SUB     b                                   ;aa42
        LD      b,(hl)                              ;aa43
        DEC     bc                                  ;aa44
        ADD     a,b                                 ;aa45
        LD      h,0xb                               ;aa46
        SUB     b                                   ;aa48
        LD      h,h                                 ;aa49
        DEC     bc                                  ;aa4a
        LD      (hl),b                              ;aa4b
        AND     l                                   ;aa4c
        INC     c                                   ;aa4d
        SUB     b                                   ;aa4e
        LD      b,h                                 ;aa4f
        INC     c                                   ;aa50
        LD      h,b                                 ;aa51
        ADD     a,l                                 ;aa52
        INC     c                                   ;aa53
        ADD     a,d                                 ;aa54
        LD      d,b                                 ;aa55
        LD      c,0x60                              ;aa56
        DEC     h                                   ;aa58
        LD      c,0x90                              ;aa59
        LD      b,(hl)                              ;aa5b
        LD      c,0x71                              ;aa5c
        LD      (hl),b                              ;aa5e
        LD      c,0x76                              ;aa5f
        AND     a                                   ;aa61
        RRCA                                        ;aa62
        HALT                                        ;aa63
        RLA                                         ;aa64
        DJNZ    bF_laaddh                           ;aa65
        LD      d,a                                 ;aa67
        LD      de,0x3560                           ;aa68
        LD      de,0x5480                           ;aa6b
        LD      de,0x9580                           ;aa6e
        LD      de,0x7071                           ;aa71
        LD      (de),a                              ;aa74
        AND     h                                   ;aa75
        LD      (hl),c                              ;aa76
        LD      (de),a                              ;aa77
        SUB     h                                   ;aa78
        ADD     a,c                                 ;aa79
        LD      (de),a                              ;aa7a
        ADD     a,h                                 ;aa7b
        SUB     c                                   ;aa7c
        INC     de                                  ;aa7d
        LD      h,b                                 ;aa7e
        DEC     h                                   ;aa7f
        INC     de                                  ;aa80
        SUB     b                                   ;aa81
        LD      b,(hl)                              ;aa82
        INC     d                                   ;aa83
        LD      (hl),b                              ;aa84
        SUB     l                                   ;aa85
        RLA                                         ;aa86
        AND     b                                   ;aa87
        LD      (hl),0x17                           ;aa88
        LD      (hl),b                              ;aa8a
        OR      l                                   ;aa8b
        JR      bF_laa34h                           ;aa8c
        DAA                                         ;aa8e
        JR      bF_laa12h                           ;aa8f
        LD      (hl),b                              ;aa91
        ADD     hl,de                               ;aa92
        AND     (hl)                                ;aa93
        RST     0                                   ;aa94
        LD      a,(de)                              ;aa95
        HALT                                        ;aa96
        LD      d,a                                 ;aa97
        DEC     de                                  ;aa98
        ADD     a,b                                 ;aa99
        LD      d,0x1b                              ;aa9a
        LD      h,b                                 ;aa9c
        SUB     l                                   ;aa9d
        DEC     de                                  ;aa9e
        LD      h,d                                 ;aa9f
        LD      d,b                                 ;aaa0
        DEC     de                                  ;aaa1
        AND     (hl)                                ;aaa2
        SCF                                         ;aaa3
        INC     e                                   ;aaa4
        LD      h,b                                 ;aaa5
        OR      l                                   ;aaa6
        INC     e                                   ;aaa7
        SUB     b                                   ;aaa8
        LD      (hl),h                              ;aaa9
        DEC     e                                   ;aaaa
        SUB     d                                   ;aaab
        JR      nc,$+31                             ;aaac
        HALT                                        ;aaae
        SUB     a                                   ;aaaf
        RST     KEYINT                              ;aab0
        JR      bF_laab6h                           ;aab1
