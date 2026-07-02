.class synthetic Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$1;
.super Ljava/lang/Object;
.source "MetricsConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$client$metrics$thirdparty$Priority:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 343
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/Priority;->values()[Lcom/amazon/client/metrics/thirdparty/Priority;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$Priority:[I

    :try_start_0
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/Priority;->RESERVED_FOR_NON_ANONYMOUS_METRICS:Lcom/amazon/client/metrics/thirdparty/Priority;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$Priority:[I

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/Priority;->RESERVED_FOR_LOCATION_SERVICE:Lcom/amazon/client/metrics/thirdparty/Priority;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
