.class public Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationParser;
.super Ljava/lang/Object;
.source "MetricsConfigurationParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MetricsConfigurationParser"

.field private static final log:Lcom/amazon/dp/logger/DPLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "MetricsConfigurationParser"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationParser;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDefaultHttpConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;->OAUTH:Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "userdebug"

    .line 223
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "https://dp-mont.integ.amazon.com:443"

    goto :goto_0

    :cond_0
    const-string v2, "https://device-metrics-us.amazon.com:443"

    :goto_0
    const-string v3, "https://device-metrics-us-2.amazon.com:443"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBatchPipelineConfigurationMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;",
            "Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 237
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 238
    sget-object v2, Lcom/amazon/client/metrics/thirdparty/Priority;->NORMAL:Lcom/amazon/client/metrics/thirdparty/Priority;

    const-string v3, "NormalPriority"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v2, Lcom/amazon/client/metrics/thirdparty/Priority;->HIGH:Lcom/amazon/client/metrics/thirdparty/Priority;

    const-string v3, "HighPriority"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v2, Lcom/amazon/client/metrics/thirdparty/Priority;->CRITICAL:Lcom/amazon/client/metrics/thirdparty/Priority;

    const-string v3, "CriticalPriority"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "PipelineConfiguration"

    .line 244
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 248
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string v5, "ReservedForLocationServicePriority"

    .line 249
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 251
    sget-object v5, Lcom/amazon/client/metrics/thirdparty/Channel;->LOCATION:Lcom/amazon/client/metrics/thirdparty/Channel;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v5, "ReservedForNonAnonymousMetricsPriority"

    .line 253
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 256
    sget-object v5, Lcom/amazon/client/metrics/thirdparty/Channel;->NON_ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/Channel;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 263
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 262
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const-string v7, "BatchQueueType"

    .line 269
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "BatchQueueDirectoryPrefix"

    .line 270
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "BatchQueueConfiguration"

    .line 271
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 272
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v9, :cond_3

    const-string v7, "Type"

    .line 279
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "DirectoryPrefix"

    .line 280
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 276
    :cond_3
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing Batch Queue type for priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    move-object v10, v8

    const-string v8, "Channels"

    .line 284
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 285
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    .line 288
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v9, v11, :cond_7

    .line 289
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amazon/client/metrics/thirdparty/Channel;->valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/Channel;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 286
    :cond_6
    :goto_3
    sget-object v8, Lcom/amazon/client/metrics/thirdparty/Channel;->ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/Channel;

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_7
    new-instance v15, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;

    move-object v8, v15

    .line 295
    invoke-static {v7}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;->fromString(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    move-result-object v9

    const-string v7, "MaxBatchOpenTimeMillis"

    .line 297
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v7, "CheckBatchOpenTimeMillis"

    .line 298
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    const-string v7, "MaxBatchEntries"

    .line 299
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    move-object v0, v15

    move v15, v7

    const-string v7, "MaxBatchSizeBytes"

    .line 300
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string v7, "MaxBatchQueueCapacityBytes"

    .line 301
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const-string v7, "MaxBatchQueueEntries"

    .line 302
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    const-string v7, "ExpiryTimeMillis"

    .line 303
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    const-string v7, "PurgePeriodMillis"

    .line 304
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    const-string v7, "TransmissionPeriodMillis"

    .line 305
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v23

    const-string v7, "BatchTransmitterType"

    .line 306
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->fromString(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    move-result-object v25

    invoke-direct/range {v8 .. v25}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;Ljava/lang/String;JJIIIIJJJLcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;)V

    .line 307
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/client/metrics/thirdparty/Channel;

    .line 308
    new-instance v8, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/client/metrics/thirdparty/Priority;

    invoke-direct {v8, v9, v7}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;-><init>(Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    .line 309
    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_9
    return-object v2
.end method

.method public getBatchQueueConfiguration(Lorg/json/JSONObject;)Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    const-string v0, "BatchQueueConfiguration"

    .line 153
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 155
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueConfiguration;

    const-string v1, "Type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;->fromString(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    move-result-object v1

    const-string v2, "DirectoryPrefix"

    .line 156
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCodecConfiguration(Lorg/json/JSONObject;)Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    const-string v0, "CodecConfiguration"

    .line 169
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 170
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;

    const-string v1, "Type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;->fromString(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;

    move-result-object v1

    const-string v2, "Version"

    .line 171
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;Ljava/lang/String;)V

    return-object v0
.end method

.method public getHttpConfiguration(Lorg/json/JSONObject;)Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "HttpConfiguration"

    .line 187
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 188
    :goto_0
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationParser;->getDefaultHttpConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    move-result-object v1

    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 194
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->getHttpRequestSignerType()Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "RequestSignerType"

    .line 193
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->getUrlEndpoint()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UrlEndpoint"

    .line 195
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 198
    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->getStaticCredentialUrlEndpoint()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StaticCredentialUrlEndpoint"

    .line 197
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 200
    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->getConnectTimeout()I

    move-result v2

    const-string v3, "ConnectTimeout"

    .line 199
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 202
    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->getReadTimeout()I

    move-result v2

    const-string v3, "ReadTimeout"

    .line 201
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 204
    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->getWakeLockTimeout()J

    move-result-wide v1

    const-string v3, "WakeLockTimeout"

    .line 203
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 206
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    .line 207
    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;->fromString(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;

    move-result-object v5

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;Ljava/lang/String;Ljava/lang/String;IIJ)V

    return-object v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getMetricsConfigurationForDomain(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 107
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;->DEVO:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;->getName()Ljava/lang/String;

    move-result-object v1

    .line 108
    sget-object v2, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;->MASTER:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;->getName()Ljava/lang/String;

    move-result-object v2

    .line 109
    sget-object v3, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;->PROD:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

    invoke-virtual {v3}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;->getName()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const-string v6, "isDebuggable"

    const/4 v8, 0x3

    const-string v9, "Build"

    const/4 v10, 0x2

    const/4 v11, 0x1

    const-string v12, "Domain"

    const/4 v13, 0x0

    const/4 v14, 0x6

    const-string v15, "Picking configuration"

    const-string v5, "MetricsConfigurationParser"

    if-eqz v4, :cond_1

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v7, "eng"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v7, "userdebug"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p2, :cond_1

    .line 112
    :cond_0
    sget-object v2, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationParser;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v3, v14, [Ljava/lang/Object;

    aput-object v12, v3, v13

    const-string v4, "devo"

    aput-object v4, v3, v11

    aput-object v9, v3, v10

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    aput-object v4, v3, v8

    const/4 v4, 0x4

    aput-object v6, v3, v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v3, v6

    invoke-virtual {v2, v5, v15, v3}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 114
    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v4, "user"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string/jumbo v4, "test-keys"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationParser;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v3, v14, [Ljava/lang/Object;

    aput-object v12, v3, v13

    const-string/jumbo v4, "master"

    aput-object v4, v3, v11

    aput-object v9, v3, v10

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    aput-object v4, v3, v8

    const/4 v4, 0x4

    aput-object v6, v3, v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v3, v6

    invoke-virtual {v1, v5, v15, v3}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 118
    :cond_2
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationParser;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v12, v2, v13

    const-string/jumbo v4, "prod"

    aput-object v4, v2, v11

    aput-object v9, v2, v10

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    aput-object v4, v2, v8

    const/4 v4, 0x4

    aput-object v6, v2, v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v2, v6

    invoke-virtual {v1, v5, v15, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkConfiguration(Lorg/json/JSONObject;)Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    const-string v0, "TransportType"

    .line 133
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;->fromString(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;

    move-result-object v0

    .line 135
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "NetworkTypes"

    .line 136
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    .line 137
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 138
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/client/metrics/thirdparty/configuration/NetworkType;->fromString(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/configuration/NetworkType;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    :cond_0
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsNetworkConfiguration;

    invoke-direct {p1, v0, v1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsNetworkConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;Ljava/util/Set;)V

    return-object p1
.end method

.method public parseConfiguration(Lorg/json/JSONObject;Z)Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 53
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationParser;->getMetricsConfigurationForDomain(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationParser;->getNetworkConfiguration(Lorg/json/JSONObject;)Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;

    move-result-object v1

    .line 60
    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationParser;->getBatchQueueConfiguration(Lorg/json/JSONObject;)Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueConfiguration;

    move-result-object v2

    .line 61
    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationParser;->getCodecConfiguration(Lorg/json/JSONObject;)Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;

    move-result-object v3

    .line 62
    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationParser;->getHttpConfiguration(Lorg/json/JSONObject;)Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    move-result-object v4

    .line 64
    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationParser;->getBatchPipelineConfigurationMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    if-eqz v2, :cond_0

    .line 69
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueConfiguration;Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;Ljava/util/Map;)V

    return-object p1

    .line 75
    :cond_0
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-direct {p1, v1, v3, v4, v5}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;Ljava/util/Map;)V

    return-object p1

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unable to parse metrics configuration. It can not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 82
    new-instance p2, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    const-string v0, "An JSONException was throw was parsing the metrics configuration file"

    invoke-direct {p2, v0, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
