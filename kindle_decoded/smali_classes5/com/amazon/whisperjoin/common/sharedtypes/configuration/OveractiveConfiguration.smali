.class public Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;
.super Ljava/lang/Object;
.source "OveractiveConfiguration.java"


# instance fields
.field private final mBucketLengthMs:J

.field private final mMonitoringWindowMs:J

.field private final mThresholdPercentage:D


# direct methods
.method public constructor <init>(JJD)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->mBucketLengthMs:J

    .line 26
    iput-wide p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->mMonitoringWindowMs:J

    .line 27
    iput-wide p5, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->mThresholdPercentage:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 55
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    .line 59
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    iget-wide v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->mBucketLengthMs:J

    iget-wide v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->mBucketLengthMs:J

    .line 60
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->mMonitoringWindowMs:J

    iget-wide v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->mMonitoringWindowMs:J

    .line 61
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->mThresholdPercentage:D

    iget-wide v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->mThresholdPercentage:D

    .line 62
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(DD)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 63
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBucketLengthMs()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->mBucketLengthMs:J

    return-wide v0
.end method

.method public getMonitoringWindowMs()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->mMonitoringWindowMs:J

    return-wide v0
.end method

.method public getThresholdPercentage()D
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->mThresholdPercentage:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 68
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>(II)V

    iget-wide v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->mBucketLengthMs:J

    .line 69
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->mMonitoringWindowMs:J

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->mThresholdPercentage:D

    .line 71
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(D)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 72
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OveractiveConfiguration{mBucketLengthMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->mBucketLengthMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mMonitoringWindowMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->mMonitoringWindowMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mThresholdPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->mThresholdPercentage:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
