.class synthetic Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory$1;
.super Ljava/lang/Object;
.source "BaseMetricsServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$client$metrics$configuration$BatchQueueType:[I

.field static final synthetic $SwitchMap$com$amazon$client$metrics$configuration$BatchTransmitterType:[I

.field static final synthetic $SwitchMap$com$amazon$client$metrics$configuration$CodecType:[I

.field static final synthetic $SwitchMap$com$amazon$client$metrics$configuration$HttpRequestSignerType:[I

.field static final synthetic $SwitchMap$com$amazon$client$metrics$configuration$TransportType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 390
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;->values()[Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$configuration$BatchTransmitterType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;->PERIODIC:Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$configuration$BatchTransmitterType:[I

    sget-object v3, Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;->URGENT:Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 346
    :catch_1
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;->values()[Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$configuration$BatchQueueType:[I

    :try_start_2
    sget-object v3, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;->VOLATILE:Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$configuration$BatchQueueType:[I

    sget-object v3, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;->NON_VOLATILE:Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 314
    :catch_3
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/configuration/CodecType;->values()[Lcom/amazon/whispersync/client/metrics/configuration/CodecType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$configuration$CodecType:[I

    :try_start_4
    sget-object v3, Lcom/amazon/whispersync/client/metrics/configuration/CodecType;->PROTOCOL_BUFFERS:Lcom/amazon/whispersync/client/metrics/configuration/CodecType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v2, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$configuration$CodecType:[I

    sget-object v3, Lcom/amazon/whispersync/client/metrics/configuration/CodecType;->STRING:Lcom/amazon/whispersync/client/metrics/configuration/CodecType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 278
    :catch_5
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;->values()[Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$configuration$HttpRequestSignerType:[I

    :try_start_6
    sget-object v3, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;->OAUTH:Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 244
    :catch_6
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->values()[Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$configuration$TransportType:[I

    :try_start_7
    sget-object v3, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->HTTP:Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$configuration$TransportType:[I

    sget-object v2, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->OUTPUT_STREAM:Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
