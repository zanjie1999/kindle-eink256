.class public Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;
.super Ljava/lang/Object;
.source "MetricsConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;
    }
.end annotation


# static fields
.field protected static sPassThroughHighPriorityPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;

.field protected static sPassThroughNormalPriorityPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;


# instance fields
.field private final mBatchQueueConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueConfiguration;

.field private mCodecConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;

.field private mDomain:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

.field private final mHttpConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

.field private mNetworkConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;

.field private mPipelineConfigurationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;",
            "Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 34
    new-instance v18, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;

    move-object/from16 v0, v18

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;->NON_VOLATILE:Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    sget-object v17, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->PERIODIC:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    const-string v2, ""

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x1f4

    const/16 v7, 0xa

    const/high16 v8, 0x10000

    const/high16 v9, 0x500000

    const/high16 v10, 0x10000

    const-wide/32 v11, 0x240c8400

    const-wide/32 v13, 0x5265c00

    const-wide/32 v15, 0x927c0

    invoke-direct/range {v0 .. v17}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;Ljava/lang/String;JJIIIIJJJLcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;)V

    sput-object v18, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->sPassThroughNormalPriorityPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;

    .line 49
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;

    move-object/from16 v19, v0

    sget-object v20, Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;->SEMI_VOLATILE:Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    sget-object v36, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->URGENT:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    const-string v21, ""

    const-wide/16 v22, 0x3e8

    const-wide/16 v24, 0x1f4

    const/16 v26, 0x1

    const/high16 v27, 0x10000

    const/high16 v28, 0x100000

    const/high16 v29, 0x10000

    const-wide/32 v30, 0x240c8400

    const-wide/32 v32, 0x5265c00

    const-wide/32 v34, 0x927c0

    invoke-direct/range {v19 .. v36}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;Ljava/lang/String;JJIIIIJJJLcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->sPassThroughHighPriorityPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueConfiguration;Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    if-eqz p5, :cond_2

    .line 137
    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mNetworkConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;

    .line 141
    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mBatchQueueConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueConfiguration;

    .line 142
    iput-object p3, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mCodecConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;

    .line 143
    iput-object p4, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mHttpConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    .line 144
    invoke-direct {p0, p5}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->sanitizeBatchPipelineConfigurationMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mPipelineConfigurationMap:Ljava/util/Map;

    .line 151
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    .line 152
    iget-object p3, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mPipelineConfigurationMap:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    invoke-interface {p3}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getBatchQueueType()Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    move-result-object p3

    if-nez p3, :cond_0

    .line 154
    iget-object p3, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mPipelineConfigurationMap:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    iget-object p4, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mBatchQueueConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueConfiguration;

    invoke-virtual {p4}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueConfiguration;->getBatchQueueType()Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->setBatchQueueType(Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;)V

    .line 155
    iget-object p3, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mPipelineConfigurationMap:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    iget-object p3, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mBatchQueueConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueConfiguration;

    invoke-virtual {p3}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueConfiguration;->getDirectoryPrefix()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->setDirectoryPrefix(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    .line 138
    :cond_2
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    const-string p2, "PipelineConfiguration map is null or empty"

    invoke-direct {p1, p2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_3
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    const-string p2, "HttpConfiguration is null"

    invoke-direct {p1, p2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_4
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    const-string p2, "CodecConfiguration is null"

    invoke-direct {p1, p2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_5
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    const-string p2, "BatchQueueConfiguration is null"

    invoke-direct {p1, p2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_6
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    const-string p2, "NetworkConfiguration is null"

    invoke-direct {p1, p2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    .line 183
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mNetworkConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;

    .line 187
    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mCodecConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;

    .line 188
    iput-object p3, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mHttpConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    .line 189
    invoke-direct {p0, p4}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->sanitizeBatchPipelineConfigurationMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mPipelineConfigurationMap:Ljava/util/Map;

    .line 200
    new-instance p2, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    sget-object p3, Lcom/amazon/client/metrics/thirdparty/Priority;->NORMAL:Lcom/amazon/client/metrics/thirdparty/Priority;

    sget-object p4, Lcom/amazon/client/metrics/thirdparty/Channel;->ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/Channel;

    invoke-direct {p2, p3, p4}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;-><init>(Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    if-eqz p1, :cond_0

    .line 202
    new-instance p2, Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueConfiguration;

    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getBatchQueueType()Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    move-result-object p3

    .line 203
    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getDirectoryPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mBatchQueueConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueConfiguration;

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mPipelineConfigurationMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    .line 206
    new-instance p2, Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueConfiguration;

    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getBatchQueueType()Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    move-result-object p3

    .line 207
    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getDirectoryPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mBatchQueueConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueConfiguration;

    :goto_0
    return-void

    .line 184
    :cond_1
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    const-string p2, "PipelineConfiguration map is null or empty"

    invoke-direct {p1, p2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_2
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    const-string p2, "HttpConfiguration is null"

    invoke-direct {p1, p2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_3
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    const-string p2, "CodecConfiguration is null"

    invoke-direct {p1, p2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_4
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    const-string p2, "NetworkConfiguration is null"

    invoke-direct {p1, p2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isPipelineConfigurationMapPriorityBased(Ljava/util/Map;)Z
    .locals 3

    .line 370
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 371
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 373
    instance-of v2, v1, Lcom/amazon/client/metrics/thirdparty/Priority;

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    if-nez v1, :cond_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private isPipelineConfigurationMapPriorityChannelPairBased(Ljava/util/Map;)Z
    .locals 3

    .line 391
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 392
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 394
    instance-of v2, v1, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    if-nez v1, :cond_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private static removeNormalAndHightPriorityConfigurations(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;",
            "Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 290
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 294
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 295
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 298
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/Priority;->NORMAL:Lcom/amazon/client/metrics/thirdparty/Priority;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;->getPriority()Lcom/amazon/client/metrics/thirdparty/Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/Priority;->HIGH:Lcom/amazon/client/metrics/thirdparty/Priority;

    .line 299
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;->getPriority()Lcom/amazon/client/metrics/thirdparty/Priority;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private sanitizeBatchPipelineConfigurationMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/Map<",
            "Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;",
            "Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 332
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->isPipelineConfigurationMapPriorityChannelPairBased(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 336
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->isPipelineConfigurationMapPriorityBased(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 342
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 343
    sget-object v3, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$Priority:[I

    move-object v4, v2

    check-cast v4, Lcom/amazon/client/metrics/thirdparty/Priority;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    .line 351
    new-instance v3, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    sget-object v5, Lcom/amazon/client/metrics/thirdparty/Channel;->ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/Channel;

    invoke-direct {v3, v4, v5}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;-><init>(Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    goto :goto_1

    .line 348
    :cond_1
    new-instance v3, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    sget-object v4, Lcom/amazon/client/metrics/thirdparty/Priority;->NORMAL:Lcom/amazon/client/metrics/thirdparty/Priority;

    sget-object v5, Lcom/amazon/client/metrics/thirdparty/Channel;->LOCATION:Lcom/amazon/client/metrics/thirdparty/Channel;

    invoke-direct {v3, v4, v5}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;-><init>(Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    goto :goto_1

    .line 345
    :cond_2
    new-instance v3, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    sget-object v4, Lcom/amazon/client/metrics/thirdparty/Priority;->NORMAL:Lcom/amazon/client/metrics/thirdparty/Priority;

    sget-object v5, Lcom/amazon/client/metrics/thirdparty/Channel;->NON_ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/Channel;

    invoke-direct {v3, v4, v5}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;-><init>(Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    .line 354
    :goto_1
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    .line 353
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0

    .line 337
    :cond_4
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    const-string v0, "Invalid Batch Pipeline Configuration"

    invoke-direct {p1, v0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBatchQueueDirectoryName(Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;)Ljava/lang/String;
    .locals 2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mPipelineConfigurationMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    invoke-interface {v1}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getDirectoryPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;->getPriority()Lcom/amazon/client/metrics/thirdparty/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;->getChannel()Lcom/amazon/client/metrics/thirdparty/Channel;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getNetworkConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;->getTransportType()Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;

    move-result-object v0

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;->OUTPUT_STREAM:Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
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

.method public getCodecConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mCodecConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;

    return-object v0
.end method

.method public getHttpConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mHttpConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    return-object v0
.end method

.method public getNetworkConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mNetworkConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;

    return-object v0
.end method

.method public getPipelineConfiguration(Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;)Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mPipelineConfigurationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    return-object p1
.end method

.method public setPassThroughMode()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 271
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsNetworkConfiguration;

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;->OUTPUT_STREAM:Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mNetworkConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;

    invoke-interface {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;->getNetworkTypes()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsNetworkConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mNetworkConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;

    .line 272
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;->STRING:Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;

    const-string v2, "1.0"

    invoke-direct {v0, v1, v2}, Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mCodecConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;

    .line 274
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mPipelineConfigurationMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->removeNormalAndHightPriorityConfigurations(Ljava/util/Map;)V

    .line 275
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/Channel;->values()[Lcom/amazon/client/metrics/thirdparty/Channel;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 276
    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mPipelineConfigurationMap:Ljava/util/Map;

    new-instance v5, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    sget-object v6, Lcom/amazon/client/metrics/thirdparty/Priority;->NORMAL:Lcom/amazon/client/metrics/thirdparty/Priority;

    invoke-direct {v5, v6, v3}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;-><init>(Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    sget-object v6, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->sPassThroughNormalPriorityPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->mPipelineConfigurationMap:Ljava/util/Map;

    new-instance v5, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    sget-object v6, Lcom/amazon/client/metrics/thirdparty/Priority;->HIGH:Lcom/amazon/client/metrics/thirdparty/Priority;

    invoke-direct {v5, v6, v3}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;-><init>(Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    sget-object v3, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->sPassThroughHighPriorityPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
