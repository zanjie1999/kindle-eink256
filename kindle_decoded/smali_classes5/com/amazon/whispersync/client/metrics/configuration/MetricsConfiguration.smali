.class public Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;
.super Ljava/lang/Object;
.source "MetricsConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration$Domain;
    }
.end annotation


# static fields
.field public static final BUILD_TYPE:Ljava/lang/String; = "buildType"

.field public static final COUNTRY_OF_RESIDENCE:Ljava/lang/String; = "countryOfResidence"

.field public static final CUSTOMER_ID:Ljava/lang/String; = "CustomerId"

.field public static final DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static final DEVICE_LANGUAGE:Ljava/lang/String; = "deviceLanguage"

.field public static final DEVICE_MODE:Ljava/lang/String; = "deviceMode"

.field public static final DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final HARDWARE:Ljava/lang/String; = "hardware"

.field public static final IP_ADDRESS:Ljava/lang/String; = "REMOTE_ADDR"

.field protected static final METRICS_SERVICE_NAME:Ljava/lang/String; = "DeviceMetricsService"

.field protected static final METRIC_NON_TCOMM_SUFFIX:Ljava/lang/String; = "_NonTComm"

.field public static final MODEL:Ljava/lang/String; = "model"

.field protected static final PASSTHROUGH_SETTINGS_PREFIX:Ljava/lang/String; = "PASSTHROUGH_"

.field public static final PLATFORM:Ljava/lang/String; = "platform"

.field public static final PREFERRED_MARKETPLACE:Ljava/lang/String; = "MarketplaceID"

.field public static final PROTOCOL_BUFFER_CODEC_FORMAT_HEADER:Ljava/lang/String; = "x-codec-format"

.field public static final PROTOCOL_BUFFER_CODEC_VERSION_HEADER:Ljava/lang/String; = "x-codec-version"

.field public static final RSM_GROUP:Ljava/lang/String; = "remoteSettingsGroup"

.field public static final SESSION_ID:Ljava/lang/String; = "Session"

.field public static final SOFTWARE_VERSION:Ljava/lang/String; = "softwareVersion"

.field public static final STATIC_CREDENTIAL_TOKEN_HEADER:Ljava/lang/String; = "x-credential-token"

.field public static final USER_AGENT:Ljava/lang/String; = "HTTP_USER_AGENT"

.field protected static sPassThroughHighPriorityPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;

.field protected static sPassThroughNormalPriorityPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;


# instance fields
.field private final mBatchQueueConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;

.field private mCodecConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;

.field private mDomain:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration$Domain;

.field private final mHttpConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;

.field private mNetworkTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/client/metrics/configuration/NetworkType;",
            ">;"
        }
    .end annotation
.end field

.field private mPipelineConfigurationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/client/metrics/Priority;",
            "Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mTransportType:Lcom/amazon/whispersync/client/metrics/configuration/TransportType;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 30
    new-instance v16, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;

    sget-object v15, Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;->PERIODIC:Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;

    const-wide/16 v1, 0x2710

    const-wide/16 v3, 0x1f4

    const/16 v5, 0xa

    const/high16 v6, 0x10000

    const/high16 v7, 0x500000

    const/high16 v8, 0x10000

    const-wide/32 v9, 0x240c8400

    const-wide/32 v11, 0x5265c00

    const-wide/32 v13, 0x927c0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;-><init>(JJIIIIJJJLcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;)V

    sput-object v16, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->sPassThroughNormalPriorityPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;

    .line 43
    new-instance v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;

    sget-object v32, Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;->URGENT:Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;

    const-wide/16 v18, 0x3e8

    const-wide/16 v20, 0x1f4

    const/16 v22, 0x1

    const/high16 v23, 0x10000

    const/high16 v24, 0x100000

    const/high16 v25, 0x10000

    const-wide/32 v26, 0x240c8400

    const-wide/32 v28, 0x5265c00

    const-wide/32 v30, 0x927c0

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v32}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;-><init>(JJIIIIJJJLcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->sPassThroughHighPriorityPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/client/metrics/configuration/TransportType;Ljava/util/Set;Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/client/metrics/configuration/TransportType;",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/client/metrics/configuration/NetworkType;",
            ">;",
            "Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;",
            "Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;",
            "Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;",
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/client/metrics/Priority;",
            "Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 105
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 117
    invoke-interface {p6}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mTransportType:Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    .line 121
    iput-object p2, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mNetworkTypes:Ljava/util/Set;

    .line 122
    iput-object p3, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mBatchQueueConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;

    .line 123
    iput-object p4, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mCodecConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;

    .line 124
    iput-object p5, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mHttpConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;

    .line 125
    iput-object p6, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mPipelineConfigurationMap:Ljava/util/Map;

    return-void

    .line 118
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;

    const-string p2, "PipelineConfiguration map is null"

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;

    const-string p2, "HttpConfiguration is null"

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_2
    new-instance p1, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;

    const-string p2, "CodecConfiguration is null"

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_3
    new-instance p1, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;

    const-string p2, "BatchQueueConfiguration is null"

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_4
    new-instance p1, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;

    const-string p2, "networkTypes is null or empty"

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_5
    new-instance p1, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;

    const-string p2, "TransportType is null"

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBatchQueueConfiguration()Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mBatchQueueConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;

    return-object v0
.end method

.method public getBatchQueueDirectoryName(Lcom/amazon/whispersync/client/metrics/Priority;)Ljava/lang/String;
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mBatchQueueConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;->getDirectoryPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->getTransportType()Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->OUTPUT_STREAM:Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PASSTHROUGH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_NonTComm"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getCodecConfiguration()Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mCodecConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;

    return-object v0
.end method

.method public getEndpointIdentity()Lamazon/whispersync/communication/identity/EndpointIdentity;
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mTransportType:Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    sget-object v1, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->HTTP:Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mHttpConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;->getUrlEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lamazon/whispersync/communication/identity/EndpointIdentityFactory;->createUrlEndpointIdentity(Ljava/lang/String;)Lamazon/whispersync/communication/identity/UrlEndpointIdentity;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "DeviceMetricsService"

    .line 178
    invoke-static {v0}, Lamazon/whispersync/communication/identity/EndpointIdentityFactory;->createServiceIdentity(Ljava/lang/String;)Lamazon/whispersync/communication/identity/ServiceIdentity;

    move-result-object v0

    return-object v0
.end method

.method public getHttpConfiguration()Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mHttpConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;

    return-object v0
.end method

.method public getNetworkTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/client/metrics/configuration/NetworkType;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mNetworkTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getPipelineConfiguration(Lcom/amazon/whispersync/client/metrics/Priority;)Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mPipelineConfigurationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    return-object p1
.end method

.method public getStaticCredentialEndpointIdentity()Lamazon/whispersync/communication/identity/EndpointIdentity;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mHttpConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;->getStaticCredentialUrlEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lamazon/whispersync/communication/identity/EndpointIdentityFactory;->createUrlEndpointIdentity(Ljava/lang/String;)Lamazon/whispersync/communication/identity/UrlEndpointIdentity;

    move-result-object v0

    return-object v0
.end method

.method public getTransportType()Lcom/amazon/whispersync/client/metrics/configuration/TransportType;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mTransportType:Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    return-object v0
.end method

.method public setPassThroughMode()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 193
    sget-object v0, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->OUTPUT_STREAM:Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mTransportType:Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    .line 194
    new-instance v0, Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;

    sget-object v1, Lcom/amazon/whispersync/client/metrics/configuration/CodecType;->STRING:Lcom/amazon/whispersync/client/metrics/configuration/CodecType;

    const-string v2, "1.0"

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;-><init>(Lcom/amazon/whispersync/client/metrics/configuration/CodecType;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mCodecConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;

    .line 195
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mPipelineConfigurationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 196
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mPipelineConfigurationMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/whispersync/client/metrics/Priority;->NORMAL:Lcom/amazon/whispersync/client/metrics/Priority;

    sget-object v2, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->sPassThroughNormalPriorityPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->mPipelineConfigurationMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/whispersync/client/metrics/Priority;->HIGH:Lcom/amazon/whispersync/client/metrics/Priority;

    sget-object v2, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->sPassThroughHighPriorityPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
