.class public Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationParser;
.super Ljava/lang/Object;
.source "MetricsConfigurationParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MetricsConfigurationParser"

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mConfigurationInputStream:Ljava/io/InputStream;

.field private mIsDebuggable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "MetricsConfigurationParser"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationParser;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationParser;->mIsDebuggable:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 49
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationParser;->mConfigurationInputStream:Ljava/io/InputStream;

    .line 51
    iget p1, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationParser;->mIsDebuggable:Z

    return-void

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ApplicationInfo is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Configuration InputStream is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readConfigurationInputStream()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationParser;->mConfigurationInputStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 169
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method


# virtual methods
.method public parseConfiguration()Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "Type"

    .line 63
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationParser;->readConfigurationInputStream()Ljava/lang/String;

    move-result-object v2

    .line 65
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    sget-object v2, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration$Domain;->DEVO:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration$Domain;

    invoke-virtual {v2}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration$Domain;->getName()Ljava/lang/String;

    move-result-object v2

    .line 68
    sget-object v4, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration$Domain;->PROD:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration$Domain;

    invoke-virtual {v4}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration$Domain;->getName()Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "isDebuggable"

    const/4 v8, 0x4

    const/4 v9, 0x3

    const-string v10, "Build"

    const/4 v11, 0x2

    const-string v12, "Domain"

    const/4 v13, 0x6

    const-string v14, "Picking configuration"

    const-string v15, "MetricsConfigurationParser"

    const-string v6, "eng"

    const/16 v17, 0x1

    const/16 v18, 0x0

    if-eqz v5, :cond_1

    :try_start_1
    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, v1, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationParser;->mIsDebuggable:Z

    if-eqz v5, :cond_1

    .line 71
    :cond_0
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 72
    sget-object v3, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationParser;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v12, v4, v18

    const-string v5, "devo"

    aput-object v5, v4, v17

    aput-object v10, v4, v11

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    aput-object v5, v4, v9

    aput-object v7, v4, v8

    iget-boolean v5, v1, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationParser;->mIsDebuggable:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v7, 0x5

    aput-object v5, v4, v7

    invoke-virtual {v3, v15, v14, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 75
    sget-object v3, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationParser;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v12, v4, v18

    const-string/jumbo v5, "prod"

    aput-object v5, v4, v17

    aput-object v10, v4, v11

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    aput-object v5, v4, v9

    aput-object v7, v4, v8

    iget-boolean v5, v1, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationParser;->mIsDebuggable:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v7, 0x5

    aput-object v5, v4, v7

    invoke-virtual {v3, v15, v14, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const-string v3, "TransportType"

    .line 79
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->fromString(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    move-result-object v8

    const-string v3, "BatchQueueConfiguration"

    .line 82
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 83
    new-instance v10, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;->fromString(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    move-result-object v4

    const-string v5, "DirectoryPrefix"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v4, v3}, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;-><init>(Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;Ljava/lang/String;)V

    .line 88
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    const-string v3, "NetworkTypes"

    .line 89
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 90
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 91
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/whispersync/client/metrics/configuration/NetworkType;->fromString(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/configuration/NetworkType;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "CodecConfiguration"

    .line 95
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 96
    new-instance v11, Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/client/metrics/configuration/CodecType;->fromString(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/configuration/CodecType;

    move-result-object v0

    const-string v4, "Version"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v0, v3}, Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;-><init>(Lcom/amazon/whispersync/client/metrics/configuration/CodecType;Ljava/lang/String;)V

    const-string v0, "HttpConfiguration"

    .line 101
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 104
    new-instance v3, Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;

    const-string v4, "RequestSignerType"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;->fromString(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    move-result-object v4

    const-string v5, "UrlEndpoint"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "StaticCredentialUrlEndpoint"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;-><init>(Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v3

    goto :goto_3

    .line 109
    :cond_3
    new-instance v0, Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;

    sget-object v3, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;->OAUTH:Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "https://dp-mont.integ.amazon.com:443"

    goto :goto_2

    :cond_4
    const-string v4, "https://device-metrics-us.amazon.com:443"

    :goto_2
    const-string v5, "https://device-metrics-us-2.amazon.com:443"

    invoke-direct {v0, v3, v4, v5}, Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;-><init>(Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v0

    .line 116
    :goto_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "NormalPriority"

    .line 117
    sget-object v4, Lcom/amazon/whispersync/client/metrics/Priority;->NORMAL:Lcom/amazon/whispersync/client/metrics/Priority;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "HighPriority"

    .line 118
    sget-object v4, Lcom/amazon/whispersync/client/metrics/Priority;->HIGH:Lcom/amazon/whispersync/client/metrics/Priority;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ReservedForLocationServicePriority"

    .line 119
    sget-object v4, Lcom/amazon/whispersync/client/metrics/Priority;->RESERVED_FOR_LOCATION_SERVICE:Lcom/amazon/whispersync/client/metrics/Priority;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ReservedForNonAnonymousMetricsPriority"

    .line 120
    sget-object v4, Lcom/amazon/whispersync/client/metrics/Priority;->RESERVED_FOR_NON_ANONYMOUS_METRICS:Lcom/amazon/whispersync/client/metrics/Priority;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "PipelineConfiguration"

    .line 121
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 123
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 126
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_4

    .line 134
    :cond_5
    new-instance v5, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;

    const-string v6, "MaxBatchOpenTimeMillis"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    const-string v6, "CheckBatchOpenTimeMillis"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    const-string v6, "MaxBatchEntries"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    const-string v6, "MaxBatchSizeBytes"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    const-string v6, "MaxBatchQueueCapacityBytes"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    const-string v6, "MaxBatchQueueEntries"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    const-string v6, "ExpiryTimeMillis"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v23

    const-string v6, "PurgePeriodMillis"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v25

    const-string v6, "TransmissionPeriodMillis"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v27

    const-string v6, "BatchTransmitterType"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;->fromString(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;

    move-result-object v29

    move-object v14, v5

    invoke-direct/range {v14 .. v29}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;-><init>(JJIIIIJJJLcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;)V

    .line 147
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v13, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 150
    :cond_6
    new-instance v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;-><init>(Lcom/amazon/whispersync/client/metrics/configuration/TransportType;Ljava/util/Set;Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 160
    new-instance v2, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;

    const-string v3, "An JSONException was throw was parsing the metrics configuration file"

    invoke-direct {v2, v3, v0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 157
    new-instance v2, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;

    const-string v3, "An IOException was throw was parsing the metrics configuration file"

    invoke-direct {v2, v3, v0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
