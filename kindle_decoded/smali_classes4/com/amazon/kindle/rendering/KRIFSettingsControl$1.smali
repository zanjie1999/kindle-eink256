.class synthetic Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;
.super Ljava/lang/Object;
.source "KRIFSettingsControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/rendering/KRIFSettingsControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$android$docviewer$KindleDocLineSettings$TextAlignment:[I

.field static final synthetic $SwitchMap$com$amazon$android$docviewer$LetterboxingColor:[I

.field static final synthetic $SwitchMap$com$amazon$kcp$reader$ui$MultiColumnStatus:[I

.field static final synthetic $SwitchMap$com$amazon$ksdk$presets$ReadingRulerNumberOfLinesType:[I

.field static final synthetic $SwitchMap$com$amazon$ksdk$presets$ReadingRulerStyleType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1059
    invoke-static {}, Lcom/amazon/kcp/reader/ui/MultiColumnStatus;->values()[Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;->$SwitchMap$com$amazon$kcp$reader$ui$MultiColumnStatus:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/kcp/reader/ui/MultiColumnStatus;->DISABLED:Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;->$SwitchMap$com$amazon$kcp$reader$ui$MultiColumnStatus:[I

    sget-object v3, Lcom/amazon/kcp/reader/ui/MultiColumnStatus;->USER_SPECIFIED:Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;->$SwitchMap$com$amazon$kcp$reader$ui$MultiColumnStatus:[I

    sget-object v4, Lcom/amazon/kcp/reader/ui/MultiColumnStatus;->ENFORCED:Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 523
    :catch_2
    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->values()[Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;->$SwitchMap$com$amazon$android$docviewer$KindleDocLineSettings$TextAlignment:[I

    :try_start_3
    sget-object v4, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->LEFT:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;->$SwitchMap$com$amazon$android$docviewer$KindleDocLineSettings$TextAlignment:[I

    sget-object v4, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->JUSTIFY:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 436
    :catch_4
    invoke-static {}, Lcom/amazon/android/docviewer/LetterboxingColor;->values()[Lcom/amazon/android/docviewer/LetterboxingColor;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;->$SwitchMap$com$amazon$android$docviewer$LetterboxingColor:[I

    :try_start_5
    sget-object v4, Lcom/amazon/android/docviewer/LetterboxingColor;->BLACK:Lcom/amazon/android/docviewer/LetterboxingColor;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;->$SwitchMap$com$amazon$android$docviewer$LetterboxingColor:[I

    sget-object v4, Lcom/amazon/android/docviewer/LetterboxingColor;->PUBLISHER:Lcom/amazon/android/docviewer/LetterboxingColor;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;->$SwitchMap$com$amazon$android$docviewer$LetterboxingColor:[I

    sget-object v4, Lcom/amazon/android/docviewer/LetterboxingColor;->TRANSPARENT:Lcom/amazon/android/docviewer/LetterboxingColor;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 366
    :catch_7
    invoke-static {}, Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;->values()[Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;->$SwitchMap$com$amazon$ksdk$presets$ReadingRulerNumberOfLinesType:[I

    :try_start_8
    sget-object v4, Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;->ONE:Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v3, Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;->$SwitchMap$com$amazon$ksdk$presets$ReadingRulerNumberOfLinesType:[I

    sget-object v4, Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;->THREE:Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v3, Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;->$SwitchMap$com$amazon$ksdk$presets$ReadingRulerNumberOfLinesType:[I

    sget-object v4, Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;->FIVE:Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 341
    :catch_a
    invoke-static {}, Lcom/amazon/ksdk/presets/ReadingRulerStyleType;->values()[Lcom/amazon/ksdk/presets/ReadingRulerStyleType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;->$SwitchMap$com$amazon$ksdk$presets$ReadingRulerStyleType:[I

    :try_start_b
    sget-object v3, Lcom/amazon/ksdk/presets/ReadingRulerStyleType;->SOLID:Lcom/amazon/ksdk/presets/ReadingRulerStyleType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;->$SwitchMap$com$amazon$ksdk$presets$ReadingRulerStyleType:[I

    sget-object v2, Lcom/amazon/ksdk/presets/ReadingRulerStyleType;->BANDED:Lcom/amazon/ksdk/presets/ReadingRulerStyleType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method
