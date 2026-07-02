.class public final Lcom/amazon/device/sync/metrics/ThirdPartyMetricsConfig;
.super Ljava/lang/Object;
.source "ThirdPartyMetricsConfig.java"


# static fields
.field private static final DEVICE_TYPE_STOCK_ANDROID:Ljava/lang/String; = "AY856JYRFVLN2"

.field private static final METRICS_END_POINT_1:Ljava/lang/String; = "https://device-metrics-us.amazon.com:443"

.field private static final METRICS_END_POINT_2:Ljava/lang/String; = "https://device-metrics-us-2.amazon.com:443"

.field private static final PERIODIC_BATCH_DELETION_TIME:J = 0x240c8400L

.field private static final PERIODIC_BATCH_EXPIRY_TIME:J = 0x5265c00L

.field private static final PERIODIC_MAX_BATCH_OPEN_TIME:J = 0x927c0L

.field private static final PERIODIC_MAX_BATCH_OPEN_TIME_CHECK:J = 0x493e0L

.field private static final PERIODIC_MAX_BATCH_SIZE:I = 0x10000

.field private static final PERIODIC_MAX_ENTRIES_IN_QUEUE:I = 0x10000

.field private static final PERIODIC_MAX_ENTRIES_PER_BATCH:I = 0x10000

.field private static final PERIODIC_METRICS_TRANSMISSION_INTERVAL:J = 0x124f80L

.field private static final PERIODIC_QUEUE_CAPACITY_BYTES:I = 0x500000

.field private static final URGENT_BATCH_DELETION_TIME:J = 0x240c8400L

.field private static final URGENT_BATCH_EXPIRY_TIME:J = 0x5265c00L

.field private static final URGENT_MAX_BATCH_OPEN_TIME:J = 0x3e8L

.field private static final URGENT_MAX_BATCH_OPEN_TIME_CHECK:J = 0x1f4L

.field private static final URGENT_MAX_BATCH_SIZE:I = 0x10000

.field private static final URGENT_MAX_ENTRIES_IN_QUEUE:I = 0x10000

.field private static final URGENT_MAX_ENTRIES_PER_BATCH:I = 0x10000

.field private static final URGENT_METRICS_TRANSMISSION_INTERVAL:J = 0x493e0L

.field private static final URGENT_QUEUE_CAPACITY_BYTES:I = 0x100000


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .annotation runtime Lcom/amazon/whispersync/javax/inject/Named;
        value = "SystemContext"
    .end annotation
.end field

.field private mDeviceId:Ljava/lang/String;

.field private mOAuthHelper:Lcom/amazon/device/sync/metrics/OAuthHelperImpl;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createMetricsConfiguration()Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;
    .locals 24

    .line 116
    :try_start_0
    sget-object v2, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->HTTP:Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    .line 117
    new-instance v4, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;

    sget-object v0, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;->NON_VOLATILE:Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    const-string v1, "com.amazon.device.sync"

    invoke-direct {v4, v0, v1}, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;-><init>(Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;Ljava/lang/String;)V

    .line 120
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 121
    sget-object v0, Lcom/amazon/whispersync/client/metrics/configuration/NetworkType;->WIFI:Lcom/amazon/whispersync/client/metrics/configuration/NetworkType;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/amazon/whispersync/client/metrics/configuration/NetworkType;->ETHERNET:Lcom/amazon/whispersync/client/metrics/configuration/NetworkType;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v5, Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;

    sget-object v0, Lcom/amazon/whispersync/client/metrics/configuration/CodecType;->PROTOCOL_BUFFERS:Lcom/amazon/whispersync/client/metrics/configuration/CodecType;

    const-string v1, "1.0"

    invoke-direct {v5, v0, v1}, Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;-><init>(Lcom/amazon/whispersync/client/metrics/configuration/CodecType;Ljava/lang/String;)V

    .line 124
    new-instance v6, Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;

    sget-object v0, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;->OAUTH:Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    const-string v1, "https://device-metrics-us.amazon.com:443"

    const-string v7, "https://device-metrics-us-2.amazon.com:443"

    invoke-direct {v6, v0, v1, v7}, Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;-><init>(Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 132
    new-instance v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;

    const-wide/32 v9, 0x927c0

    const-wide/32 v11, 0x493e0

    const/high16 v13, 0x10000

    const/high16 v14, 0x10000

    const/high16 v15, 0x500000

    const/high16 v16, 0x10000

    const-wide/32 v17, 0x240c8400

    const-wide/32 v19, 0x5265c00

    const-wide/32 v21, 0x124f80

    sget-object v23, Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;->PERIODIC:Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;

    move-object v8, v0

    invoke-direct/range {v8 .. v23}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;-><init>(JJIIIIJJJLcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;)V

    .line 146
    sget-object v1, Lcom/amazon/whispersync/client/metrics/Priority;->NORMAL:Lcom/amazon/whispersync/client/metrics/Priority;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;

    const-wide/16 v9, 0x3e8

    const-wide/16 v11, 0x1f4

    const/high16 v13, 0x10000

    const/high16 v14, 0x10000

    const/high16 v15, 0x100000

    const/high16 v16, 0x10000

    const-wide/32 v17, 0x240c8400

    const-wide/32 v19, 0x5265c00

    const-wide/32 v21, 0x493e0

    sget-object v23, Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;->URGENT:Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;

    move-object v8, v0

    invoke-direct/range {v8 .. v23}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;-><init>(JJIIIIJJJLcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;)V

    .line 162
    sget-object v1, Lcom/amazon/whispersync/client/metrics/Priority;->HIGH:Lcom/amazon/whispersync/client/metrics/Priority;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;-><init>(Lcom/amazon/whispersync/client/metrics/configuration/TransportType;Ljava/util/Set;Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 173
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public setMetricsConfig()V
    .locals 2

    .line 92
    invoke-direct {p0}, Lcom/amazon/device/sync/metrics/ThirdPartyMetricsConfig;->createMetricsConfiguration()Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/client/metrics/AndroidMetricsFactoryImpl;->setMetricsConfiguration(Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;)V

    .line 93
    iget-object v0, p0, Lcom/amazon/device/sync/metrics/ThirdPartyMetricsConfig;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/metrics/ThirdPartyMetricsConfig;->mOAuthHelper:Lcom/amazon/device/sync/metrics/OAuthHelperImpl;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/client/metrics/AndroidMetricsFactoryImpl;->setOAuthHelper(Landroid/content/Context;Lcom/amazon/whispersync/client/metrics/transport/OAuthHelper;)V

    .line 94
    iget-object v0, p0, Lcom/amazon/device/sync/metrics/ThirdPartyMetricsConfig;->mContext:Landroid/content/Context;

    const-string v1, "AY856JYRFVLN2"

    invoke-static {v0, v1}, Lcom/amazon/whispersync/client/metrics/AndroidMetricsFactoryImpl;->setDeviceType(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/metrics/ThirdPartyMetricsConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/DeviceDataStore;

    move-result-object v0

    const-string v1, "Device Serial Number"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/sync/metrics/ThirdPartyMetricsConfig;->mDeviceId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/DeviceDataStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    iget-object v0, p0, Lcom/amazon/device/sync/metrics/ThirdPartyMetricsConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/common/ThirdPartyDeviceUtils;->getSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/sync/metrics/ThirdPartyMetricsConfig;->mDeviceId:Ljava/lang/String;

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/sync/metrics/ThirdPartyMetricsConfig;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/metrics/ThirdPartyMetricsConfig;->mDeviceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/client/metrics/AndroidMetricsFactoryImpl;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
