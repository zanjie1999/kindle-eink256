.class synthetic Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;
.super Ljava/lang/Object;
.source "BaseMetricsServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$client$metrics$thirdparty$Channel:[I

.field static final synthetic $SwitchMap$com$amazon$client$metrics$thirdparty$configuration$BatchQueueType:[I

.field static final synthetic $SwitchMap$com$amazon$client$metrics$thirdparty$configuration$BatchTransmitterType:[I

.field static final synthetic $SwitchMap$com$amazon$client$metrics$thirdparty$configuration$CodecType:[I

.field static final synthetic $SwitchMap$com$amazon$client$metrics$thirdparty$configuration$HttpRequestSignerType:[I

.field static final synthetic $SwitchMap$com$amazon$client$metrics$thirdparty$configuration$TransportType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 472
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->values()[Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$configuration$BatchTransmitterType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->PERIODIC:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$configuration$BatchTransmitterType:[I

    sget-object v3, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->URGENT:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    :catch_1
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;->values()[Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$configuration$BatchQueueType:[I

    :try_start_2
    sget-object v3, Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;->VOLATILE:Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$configuration$BatchQueueType:[I

    sget-object v3, Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;->NON_VOLATILE:Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$configuration$BatchQueueType:[I

    sget-object v4, Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;->SEMI_VOLATILE:Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 360
    :catch_4
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;->values()[Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$configuration$CodecType:[I

    :try_start_5
    sget-object v4, Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;->PROTOCOL_BUFFERS:Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$configuration$CodecType:[I

    sget-object v4, Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;->STRING:Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 295
    :catch_6
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;->values()[Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$configuration$TransportType:[I

    :try_start_7
    sget-object v4, Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;->HTTP:Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$configuration$TransportType:[I

    sget-object v4, Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;->OUTPUT_STREAM:Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 297
    :catch_8
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;->values()[Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$configuration$HttpRequestSignerType:[I

    :try_start_9
    sget-object v4, Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;->OAUTH:Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v3, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$configuration$HttpRequestSignerType:[I

    sget-object v4, Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;->DCP:Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v3, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$configuration$HttpRequestSignerType:[I

    sget-object v4, Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;->DCP_OAUTH:Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 260
    :catch_b
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/Channel;->values()[Lcom/amazon/client/metrics/thirdparty/Channel;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$Channel:[I

    :try_start_c
    sget-object v4, Lcom/amazon/client/metrics/thirdparty/Channel;->ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/Channel;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$Channel:[I

    sget-object v3, Lcom/amazon/client/metrics/thirdparty/Channel;->NON_ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/Channel;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$Channel:[I

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/Channel;->LOCATION:Lcom/amazon/client/metrics/thirdparty/Channel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method
