.class synthetic Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;
.super Ljava/lang/Object;
.source "StandaloneFontOptionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$font$ManualFontDownloadHelper$DownloadableFont:[I

.field static final synthetic $SwitchMap$com$mobipocket$android$drawing$FontFamily:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 492
    invoke-static {}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->values()[Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$amazon$kcp$font$ManualFontDownloadHelper$DownloadableFont:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->MYINGHEI:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$amazon$kcp$font$ManualFontDownloadHelper$DownloadableFont:[I

    sget-object v3, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->STBSHUSONG:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$amazon$kcp$font$ManualFontDownloadHelper$DownloadableFont:[I

    sget-object v4, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->STHEITI:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$amazon$kcp$font$ManualFontDownloadHelper$DownloadableFont:[I

    sget-object v5, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->KAI:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$amazon$kcp$font$ManualFontDownloadHelper$DownloadableFont:[I

    sget-object v6, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->YUAN:Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 126
    :catch_4
    invoke-static {}, Lcom/mobipocket/android/drawing/FontFamily;->values()[Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    :try_start_5
    sget-object v6, Lcom/mobipocket/android/drawing/FontFamily;->BASKERVILLE:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v5, Lcom/mobipocket/android/drawing/FontFamily;->CAECILIA:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->DROID_SERIF:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->GEORGIA:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->HELVETICA:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->LUCIDA:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->PALATINO:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->TBGOTHICMED:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->TBMINCHOMEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->MYINGHEI:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->STBSHUSONG:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->STHEITI:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->KAI:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->YUAN:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->BOOKERLY:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->STSONGTC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->STHEITITC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->STKAITITC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->STYUANTC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMTC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->DEVANAGARI:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->MURASU_TAMIL:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->NEW_MALAYALAM:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->SAGUNA_GUJARATI:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    return-void
.end method
