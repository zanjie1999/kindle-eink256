.class synthetic Lcom/amazon/kindle/rendering/KRIFUIEventHandler$2;
.super Ljava/lang/Object;
.source "KRIFUIEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/rendering/KRIFUIEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$krf$platform$UIData$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 116
    invoke-static {}, Lcom/amazon/krf/platform/UIData$Type;->values()[Lcom/amazon/krf/platform/UIData$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$2;->$SwitchMap$com$amazon$krf$platform$UIData$Type:[I

    :try_start_0
    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->SINGLE_TAP:Lcom/amazon/krf/platform/UIData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$2;->$SwitchMap$com$amazon$krf$platform$UIData$Type:[I

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->SINGLE_TAP_UP:Lcom/amazon/krf/platform/UIData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$2;->$SwitchMap$com$amazon$krf$platform$UIData$Type:[I

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->PINCH:Lcom/amazon/krf/platform/UIData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$2;->$SwitchMap$com$amazon$krf$platform$UIData$Type:[I

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->PINCH_FLING:Lcom/amazon/krf/platform/UIData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
