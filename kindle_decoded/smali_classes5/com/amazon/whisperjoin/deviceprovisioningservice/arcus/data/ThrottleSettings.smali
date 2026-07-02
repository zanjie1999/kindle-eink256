.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;
.super Ljava/lang/Object;
.source "ThrottleSettings.java"


# instance fields
.field private final overactiveBucketLengthPeriod:Ljava/lang/String;

.field private final overactiveMonitoringWindowPeriod:Ljava/lang/String;

.field private final overactiveThresholdPercentage:D

.field private final retryBackoffAttemptCount:I

.field private final retryBackoffBaseDuration:Ljava/lang/String;

.field private final ztwDssFailedMonitorWindowPeriod:Ljava/lang/String;

.field private final ztwDssFailedThreshold:J

.field private final ztwFailedMonitorWindowPeriod:Ljava/lang/String;

.field private final ztwFailedThreshold:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PT10S"

    .line 39
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveBucketLengthPeriod:Ljava/lang/String;

    const-string v0, "PT3M"

    .line 40
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveMonitoringWindowPeriod:Ljava/lang/String;

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 41
    iput-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveThresholdPercentage:D

    const-string v0, "PT1M"

    .line 42
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwFailedMonitorWindowPeriod:Ljava/lang/String;

    const-wide/16 v1, 0x3

    .line 43
    iput-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwFailedThreshold:J

    .line 44
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwDssFailedMonitorWindowPeriod:Ljava/lang/String;

    const-wide/16 v0, 0x4

    .line 45
    iput-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwDssFailedThreshold:J

    const/4 v0, 0x5

    .line 46
    iput v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->retryBackoffAttemptCount:I

    const-string v0, "PT5M"

    .line 47
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->retryBackoffBaseDuration:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "overactive"

    .line 51
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string v1, "bucketLengthPeriod"

    const-string v2, "PT10S"

    .line 54
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveBucketLengthPeriod:Ljava/lang/String;

    const-string v1, "monitoringWindowPeriod"

    const-string v2, "PT3M"

    .line 55
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveMonitoringWindowPeriod:Ljava/lang/String;

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    const-string/jumbo v3, "thresholdPercentage"

    .line 56
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveThresholdPercentage:D

    const-string/jumbo v0, "zeroTouchWorkflow"

    .line 58
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    const-string v1, "PT1M"

    const-string v2, "failedMonitorWindowPeriod"

    .line 61
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwFailedMonitorWindowPeriod:Ljava/lang/String;

    const-wide/16 v2, 0x3

    const-string v4, "failedThreshold"

    .line 62
    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwFailedThreshold:J

    const-string v2, "dssFailedMonitorWindowPeriod"

    .line 63
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwDssFailedMonitorWindowPeriod:Ljava/lang/String;

    const-wide/16 v1, 0x4

    const-string v3, "dssFailedThreshold"

    .line 64
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwDssFailedThreshold:J

    const-string/jumbo v0, "retryBackoff"

    .line 66
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :goto_2
    const/4 v0, 0x5

    const-string v1, "backoffAttemptCount"

    .line 69
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->retryBackoffAttemptCount:I

    const-string v0, "backoffBaseDuration"

    const-string v1, "PT5M"

    .line 70
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->retryBackoffBaseDuration:Ljava/lang/String;

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;
    .locals 1

    .line 161
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 113
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    .line 117
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveThresholdPercentage:D

    iget-wide v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveThresholdPercentage:D

    .line 118
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(DD)Lorg/apache/commons/lang/builder/EqualsBuilder;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwFailedThreshold:J

    iget-wide v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwFailedThreshold:J

    .line 119
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwDssFailedThreshold:J

    iget-wide v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwDssFailedThreshold:J

    .line 120
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    iget v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->retryBackoffAttemptCount:I

    iget v2, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->retryBackoffAttemptCount:I

    .line 121
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveBucketLengthPeriod:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveBucketLengthPeriod:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveMonitoringWindowPeriod:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveMonitoringWindowPeriod:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwFailedMonitorWindowPeriod:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwFailedMonitorWindowPeriod:Ljava/lang/String;

    .line 124
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwDssFailedMonitorWindowPeriod:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwDssFailedMonitorWindowPeriod:Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->retryBackoffBaseDuration:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->retryBackoffBaseDuration:Ljava/lang/String;

    .line 126
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 127
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getOveractiveBucketLengthPeriod()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveBucketLengthPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public getOveractiveConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;
    .locals 8

    .line 189
    new-instance v7, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    .line 190
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->getOveractiveBucketLengthPeriod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Iso8601TimeConverter;->convertDurationToMs(Ljava/lang/String;)J

    move-result-wide v1

    .line 191
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->getOveractiveMonitoringWindowPeriod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Iso8601TimeConverter;->convertDurationToMs(Ljava/lang/String;)J

    move-result-wide v3

    .line 192
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->getOveractiveThresholdPercentage()D

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;-><init>(JJD)V

    return-object v7
.end method

.method public getOveractiveMonitoringWindowPeriod()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveMonitoringWindowPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public getOveractiveThresholdPercentage()D
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveThresholdPercentage:D

    return-wide v0
.end method

.method public getRetryBackoffAttemptCount()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->retryBackoffAttemptCount:I

    return v0
.end method

.method public getRetryBackoffBaseDuration()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->retryBackoffBaseDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getZtwDssFailedMonitorWindowPeriod()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwDssFailedMonitorWindowPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public getZtwDssFailedThreshold()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwDssFailedThreshold:J

    return-wide v0
.end method

.method public getZtwFailedMonitorWindowPeriod()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwFailedMonitorWindowPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public getZtwFailedThreshold()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwFailedThreshold:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 132
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>(II)V

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveBucketLengthPeriod:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveMonitoringWindowPeriod:Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveThresholdPercentage:D

    .line 135
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(D)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwFailedMonitorWindowPeriod:Ljava/lang/String;

    .line 136
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwFailedThreshold:J

    .line 137
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwDssFailedMonitorWindowPeriod:Ljava/lang/String;

    .line 138
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwDssFailedThreshold:J

    .line 139
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    iget v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->retryBackoffAttemptCount:I

    .line 140
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(I)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->retryBackoffBaseDuration:Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 142
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 165
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 166
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 167
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 168
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "overactive"

    .line 170
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "zeroTouchWorkflow"

    .line 171
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "retryBackoff"

    .line 172
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveBucketLengthPeriod:Ljava/lang/String;

    const-string v5, "bucketLengthPeriod"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveMonitoringWindowPeriod:Ljava/lang/String;

    const-string v5, "monitoringWindowPeriod"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    iget-wide v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveThresholdPercentage:D

    const-string/jumbo v6, "thresholdPercentage"

    invoke-virtual {v1, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 178
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwFailedMonitorWindowPeriod:Ljava/lang/String;

    const-string v4, "failedMonitorWindowPeriod"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    iget-wide v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwFailedThreshold:J

    const-string v1, "failedThreshold"

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 180
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwDssFailedMonitorWindowPeriod:Ljava/lang/String;

    const-string v4, "dssFailedMonitorWindowPeriod"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    iget-wide v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwDssFailedThreshold:J

    const-string v1, "dssFailedThreshold"

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 183
    iget v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->retryBackoffAttemptCount:I

    const-string v2, "backoffAttemptCount"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->retryBackoffBaseDuration:Ljava/lang/String;

    const-string v2, "backoffBaseDuration"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 147
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringBuilder;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveBucketLengthPeriod:Ljava/lang/String;

    const-string/jumbo v2, "overactiveBucketLengthPeriod"

    .line 148
    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/lang/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveMonitoringWindowPeriod:Ljava/lang/String;

    const-string/jumbo v2, "overactiveMonitoringWindowPeriod"

    .line 149
    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/lang/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->overactiveThresholdPercentage:D

    const-string/jumbo v3, "overactiveThresholdPercentage"

    .line 150
    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/commons/lang/builder/ToStringBuilder;->append(Ljava/lang/String;D)Lorg/apache/commons/lang/builder/ToStringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwFailedMonitorWindowPeriod:Ljava/lang/String;

    const-string/jumbo v2, "ztwFailedMonitorWindowPeriod"

    .line 151
    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/lang/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwFailedThreshold:J

    const-string/jumbo v3, "ztwFailedThreshold"

    .line 152
    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/commons/lang/builder/ToStringBuilder;->append(Ljava/lang/String;J)Lorg/apache/commons/lang/builder/ToStringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwDssFailedMonitorWindowPeriod:Ljava/lang/String;

    const-string/jumbo v2, "ztwDssFailedMonitorWindowPeriod"

    .line 153
    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/lang/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->ztwDssFailedThreshold:J

    const-string/jumbo v3, "ztwDssFailedThreshold"

    .line 154
    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/commons/lang/builder/ToStringBuilder;->append(Ljava/lang/String;J)Lorg/apache/commons/lang/builder/ToStringBuilder;

    iget v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->retryBackoffAttemptCount:I

    const-string/jumbo v2, "retryBackoffAttemptCount"

    .line 155
    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/lang/builder/ToStringBuilder;->append(Ljava/lang/String;I)Lorg/apache/commons/lang/builder/ToStringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->retryBackoffBaseDuration:Ljava/lang/String;

    const-string/jumbo v2, "retryBackoffBaseDuration"

    .line 156
    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/lang/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;

    .line 157
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
