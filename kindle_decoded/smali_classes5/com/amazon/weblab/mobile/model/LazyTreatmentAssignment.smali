.class public Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;
.super Lcom/amazon/weblab/mobile/model/TreatmentAssignment;
.source "LazyTreatmentAssignment.java"


# instance fields
.field mCanTriggerInflated:Z

.field mDateModifiedInflated:Z

.field private mInflator:Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

.field mKeepInCacheInflated:Z

.field mLockedInflated:Z

.field mSuggestedExpirationInflated:Z

.field mTreatmentInflated:Z

.field mVersionInflated:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mInflator:Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

    return-void
.end method


# virtual methods
.method public canTrigger()Z
    .locals 4

    .line 38
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mCanTriggerInflated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mInflator:Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mWeblab:Ljava/lang/String;

    sget-object v3, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->CAN_TRIGGER:[B

    invoke-virtual {v1, v2, v3}, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->getBool(Ljava/lang/String;[B)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mCanTrigger:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :goto_0
    iput-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mCanTriggerInflated:Z

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "LazyParserErrorCanTrigger"

    .line 42
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mInflator:Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

    invoke-virtual {v3}, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->getWeblabClientIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    :goto_1
    iput-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mCanTriggerInflated:Z

    .line 45
    throw v1

    .line 48
    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mCanTrigger:Z

    return v0
.end method

.method public getDateModified()Ljava/util/Date;
    .locals 4

    .line 98
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mDateModifiedInflated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mInflator:Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mWeblab:Ljava/lang/String;

    sget-object v3, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->DATE_MODIFIED:[B

    invoke-virtual {v1, v2, v3}, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->getLong(Ljava/lang/String;[B)J

    move-result-wide v1

    .line 101
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mDateModified:Ljava/util/Date;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "LazyParserErrorDateModified"

    .line 103
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mInflator:Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

    invoke-virtual {v3}, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->getWeblabClientIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :goto_0
    iput-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mDateModifiedInflated:Z

    goto :goto_2

    :goto_1
    iput-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mDateModifiedInflated:Z

    .line 106
    throw v1

    .line 109
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mDateModified:Ljava/util/Date;

    return-object v0
.end method

.method public getKeepInCacheDateInMillis()J
    .locals 4

    .line 130
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mKeepInCacheInflated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mInflator:Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mWeblab:Ljava/lang/String;

    sget-object v3, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->KEEP_IN_CACHE:[B

    invoke-virtual {v1, v2, v3}, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->getLong(Ljava/lang/String;[B)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mKeepInCacheDateInMillis:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    iput-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mKeepInCacheInflated:Z

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "LazyParserErrorKeepInCache"

    .line 134
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mInflator:Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

    invoke-virtual {v3}, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->getWeblabClientIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :goto_1
    iput-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mKeepInCacheInflated:Z

    .line 137
    throw v1

    .line 140
    :cond_0
    :goto_2
    iget-wide v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mKeepInCacheDateInMillis:J

    return-wide v0
.end method

.method public getSuggestedExpiration()Ljava/util/Date;
    .locals 4

    .line 114
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mSuggestedExpirationInflated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mInflator:Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mWeblab:Ljava/lang/String;

    sget-object v3, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->SUGGESTED_EXPIRATION:[B

    invoke-virtual {v1, v2, v3}, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->getLong(Ljava/lang/String;[B)J

    move-result-wide v1

    .line 117
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mSuggestedExpiration:Ljava/util/Date;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "LazyParserErrorSuggestedExpiration"

    .line 119
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mInflator:Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

    invoke-virtual {v3}, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->getWeblabClientIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :goto_0
    iput-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mSuggestedExpirationInflated:Z

    goto :goto_2

    :goto_1
    iput-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mSuggestedExpirationInflated:Z

    .line 122
    throw v1

    .line 125
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mSuggestedExpiration:Ljava/util/Date;

    return-object v0
.end method

.method public getTreatment()Ljava/lang/String;
    .locals 4

    .line 83
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mTreatmentInflated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mInflator:Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mWeblab:Ljava/lang/String;

    sget-object v3, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->TREATMENT:[B

    invoke-virtual {v1, v2, v3}, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->getString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mTreatment:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :goto_0
    iput-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mTreatmentInflated:Z

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "LazyParserErrorTreatment"

    .line 87
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mInflator:Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

    invoke-virtual {v3}, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->getWeblabClientIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :goto_1
    iput-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mTreatmentInflated:Z

    .line 90
    throw v1

    .line 93
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mTreatment:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 4

    .line 53
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mVersionInflated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mInflator:Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mWeblab:Ljava/lang/String;

    sget-object v3, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->VERSION:[B

    invoke-virtual {v1, v2, v3}, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->getString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mVersion:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :goto_0
    iput-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mVersionInflated:Z

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "LazyParserErrorVersion"

    .line 57
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mInflator:Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

    invoke-virtual {v3}, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->getWeblabClientIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :goto_1
    iput-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mVersionInflated:Z

    .line 60
    throw v1

    .line 63
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isLocked()Z
    .locals 4

    .line 68
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mLockedInflated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mInflator:Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mWeblab:Ljava/lang/String;

    sget-object v3, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->IS_LOCKED:[B

    invoke-virtual {v1, v2, v3}, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->getBool(Ljava/lang/String;[B)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mLocked:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_0
    iput-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mLockedInflated:Z

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "LazyParserErrorIsLocked"

    .line 72
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mInflator:Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

    invoke-virtual {v3}, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->getWeblabClientIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :goto_1
    iput-boolean v0, p0, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;->mLockedInflated:Z

    .line 75
    throw v1

    .line 78
    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->mLocked:Z

    return v0
.end method
