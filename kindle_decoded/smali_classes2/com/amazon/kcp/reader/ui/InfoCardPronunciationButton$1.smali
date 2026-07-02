.class synthetic Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$1;
.super Ljava/lang/Object;
.source "InfoCardPronunciationButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$reader$ui$InfoCardPronunciationButton$IconState:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 117
    invoke-static {}, Lcom/amazon/kindle/krx/ui/ColorMode;->values()[Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    sget-object v3, Lcom/amazon/kindle/krx/ui/ColorMode;->NIGHT:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    sget-object v4, Lcom/amazon/kindle/krx/ui/ColorMode;->SEPIA:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    sget-object v5, Lcom/amazon/kindle/krx/ui/ColorMode;->GREEN:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    sget-object v5, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 69
    :catch_4
    invoke-static {}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->values()[Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$1;->$SwitchMap$com$amazon$kcp$reader$ui$InfoCardPronunciationButton$IconState:[I

    :try_start_5
    sget-object v5, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->SPEAK_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$1;->$SwitchMap$com$amazon$kcp$reader$ui$InfoCardPronunciationButton$IconState:[I

    sget-object v4, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->STOP_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$1;->$SwitchMap$com$amazon$kcp$reader$ui$InfoCardPronunciationButton$IconState:[I

    sget-object v1, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->PROGRESS_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$1;->$SwitchMap$com$amazon$kcp$reader$ui$InfoCardPronunciationButton$IconState:[I

    sget-object v1, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->HIDE_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
