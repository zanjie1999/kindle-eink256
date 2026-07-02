.class public Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationHelper;
.super Ljava/lang/Object;
.source "MetricsConfigurationHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 31
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationHelper;->mContext:Landroid/content/Context;

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 78
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 86
    throw p1
.end method

.method private getMetricsConfigurationJSONObject(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 61
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationHelper;->convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 65
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    const-string v1, "JSON Exception while parsing Metrics Configuration"

    invoke-direct {v0, v1, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 63
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    const-string v1, "IO Exception while parsing the Metrics Configuration"

    invoke-direct {v0, v1, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public initializeMetricsConfiguration(Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationParser;)Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "metrics_configuration"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 44
    invoke-direct {p0, v0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationHelper;->getMetricsConfigurationJSONObject(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationHelper;->isDebugFlagEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationParser;->parseConfiguration(Lorg/json/JSONObject;Z)Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 47
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    const-string v1, "An IOException was thrown loading the metrics configuration"

    invoke-direct {v0, v1, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected isDebugFlagEnabled()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
