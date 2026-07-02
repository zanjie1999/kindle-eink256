.class public Lcom/amazon/weblab/mobile/repository/LazyStorage;
.super Lcom/amazon/weblab/mobile/repository/FileStorage;
.source "LazyStorage.java"


# instance fields
.field private mParser:Lcom/amazon/weblab/mobile/repository/LazyParser;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/amazon/weblab/mobile/repository/FileStorage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public readBackup()Lcom/amazon/weblab/mobile/repository/StorageEntity;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "LazyParserLatency"

    .line 33
    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/repository/LazyStorage;->hasBackup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    .line 40
    :try_start_0
    new-instance v3, Lcom/amazon/weblab/mobile/repository/LazyParser;

    iget-object v4, p0, Lcom/amazon/weblab/mobile/repository/FileStorage;->mWeblabClientIdentifier:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/amazon/weblab/mobile/repository/LazyParser;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/amazon/weblab/mobile/repository/LazyStorage;->mParser:Lcom/amazon/weblab/mobile/repository/LazyParser;

    .line 41
    iget-object v4, p0, Lcom/amazon/weblab/mobile/repository/FileStorage;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Lcom/amazon/weblab/mobile/repository/LazyParser;->parse(Ljava/io/File;)V

    .line 43
    new-instance v3, Lcom/amazon/weblab/mobile/model/SessionInfo;

    iget-object v4, p0, Lcom/amazon/weblab/mobile/repository/LazyStorage;->mParser:Lcom/amazon/weblab/mobile/repository/LazyParser;

    invoke-virtual {v4}, Lcom/amazon/weblab/mobile/repository/LazyParser;->getSessionId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/weblab/mobile/repository/LazyStorage;->mParser:Lcom/amazon/weblab/mobile/repository/LazyParser;

    invoke-virtual {v5}, Lcom/amazon/weblab/mobile/repository/LazyParser;->getMarketplaceId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/amazon/weblab/mobile/model/SessionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v4, Lcom/amazon/weblab/mobile/repository/StorageEntity;

    iget-object v5, p0, Lcom/amazon/weblab/mobile/repository/LazyStorage;->mParser:Lcom/amazon/weblab/mobile/repository/LazyParser;

    invoke-virtual {v5}, Lcom/amazon/weblab/mobile/repository/LazyParser;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/weblab/mobile/repository/LazyStorage;->mParser:Lcom/amazon/weblab/mobile/repository/LazyParser;

    invoke-virtual {v6}, Lcom/amazon/weblab/mobile/repository/LazyParser;->getTreatmentAssignments()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v4, v5, v3, v6}, Lcom/amazon/weblab/mobile/repository/StorageEntity;-><init>(Ljava/lang/String;Lcom/amazon/weblab/mobile/model/SessionInfo;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-double v5, v5

    sub-double/2addr v5, v1

    .line 50
    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/FileStorage;->mWeblabClientIdentifier:Ljava/lang/String;

    invoke-static {v0, v5, v6, v1}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;

    return-object v4

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "LazyParserCacheLoadFailed"

    .line 46
    iget-object v5, p0, Lcom/amazon/weblab/mobile/repository/FileStorage;->mWeblabClientIdentifier:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 47
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Stored data is in an unexpected format or it is corrupted"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    sub-double/2addr v4, v1

    .line 50
    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/FileStorage;->mWeblabClientIdentifier:Ljava/lang/String;

    invoke-static {v0, v4, v5, v1}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;

    .line 51
    throw v3

    .line 34
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method
