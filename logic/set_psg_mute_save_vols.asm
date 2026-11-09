; === SetPsgMuteSaveVols (0x4129) ===
SetPsgMuteSaveVols:
        LD      a,0x8                               ;4129
        CALL    RDPSG                               ;412b
        LD      (BPsgVolASaved),a                   ;412e
        LD      a,0x9                               ;4131
        CALL    RDPSG                               ;4133
        LD      (BPsgVolBSaved),a                   ;4136
        LD      a,0xa                               ;4139
        CALL    RDPSG                               ;413b
        LD      (BPsgVolCSaved),a                   ;413e
SetPsgVolsZero:
        LD      e,0x0                               ;4141
        LD      a,0x8                               ;4143
        CALL    WRTPSG                              ;4145
        LD      e,0x0                               ;4148
        INC     a                                   ;414a
        CALL    WRTPSG                              ;414b
        LD      e,0x0                               ;414e
        INC     a                                   ;4150
        JP      WRTPSG                              ;4151
SetPsgVolsFromSave:
        LD      a,(BPsgVolASaved)                   ;4154
        LD      e,a                                 ;4157
        LD      a,0x8                               ;4158
        CALL    WRTPSG                              ;415a
        LD      a,(BPsgVolBSaved)                   ;415d
        LD      e,a                                 ;4160
        LD      a,0x9                               ;4161
        CALL    WRTPSG                              ;4163
        LD      a,(BPsgVolCSaved)                   ;4166
        LD      e,a                                 ;4169
        LD      a,0xa                               ;416a
        JP      WRTPSG                              ;416c
