.class synthetic Lcom/amazon/kindle/rendering/KRIFUIEvent$1;
.super Ljava/lang/Object;
.source "KRIFUIEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/rendering/KRIFUIEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$krf$platform$UIData$TransactionType:[I

.field static final synthetic $SwitchMap$com$amazon$krf$platform$UIData$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 162
    invoke-static {}, Lcom/amazon/krf/platform/UIData$TransactionType;->values()[Lcom/amazon/krf/platform/UIData$TransactionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$1;->$SwitchMap$com$amazon$krf$platform$UIData$TransactionType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/krf/platform/UIData$TransactionType;->PEN_TRANSACTION:Lcom/amazon/krf/platform/UIData$TransactionType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :catch_0
    invoke-static {}, Lcom/amazon/krf/platform/UIData$Type;->values()[Lcom/amazon/krf/platform/UIData$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$1;->$SwitchMap$com$amazon$krf$platform$UIData$Type:[I

    :try_start_1
    sget-object v2, Lcom/amazon/krf/platform/UIData$Type;->DRAG:Lcom/amazon/krf/platform/UIData$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$1;->$SwitchMap$com$amazon$krf$platform$UIData$Type:[I

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->HOVER:Lcom/amazon/krf/platform/UIData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$1;->$SwitchMap$com$amazon$krf$platform$UIData$Type:[I

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->PINCH:Lcom/amazon/krf/platform/UIData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$1;->$SwitchMap$com$amazon$krf$platform$UIData$Type:[I

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->PINCH_FLING:Lcom/amazon/krf/platform/UIData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$1;->$SwitchMap$com$amazon$krf$platform$UIData$Type:[I

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->SINGLE_TAP:Lcom/amazon/krf/platform/UIData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$1;->$SwitchMap$com$amazon$krf$platform$UIData$Type:[I

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->SINGLE_TAP_UP:Lcom/amazon/krf/platform/UIData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$1;->$SwitchMap$com$amazon$krf$platform$UIData$Type:[I

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->DOUBLE_TAP:Lcom/amazon/krf/platform/UIData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$1;->$SwitchMap$com$amazon$krf$platform$UIData$Type:[I

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->LONG_PRESS:Lcom/amazon/krf/platform/UIData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$1;->$SwitchMap$com$amazon$krf$platform$UIData$Type:[I

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->FLING:Lcom/amazon/krf/platform/UIData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$1;->$SwitchMap$com$amazon$krf$platform$UIData$Type:[I

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->KEYSTROKE:Lcom/amazon/krf/platform/UIData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
