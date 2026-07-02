.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;
.super Ljava/lang/Object;
.source "OveractiveBleActivityDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityBucket"
.end annotation


# instance fields
.field private mActivityDetected:Z

.field private final mBucketEndTime:J

.field private final mBucketStartTime:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;->mBucketStartTime:J

    add-long/2addr p1, p3

    .line 42
    iput-wide p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;->mBucketEndTime:J

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;->mActivityDetected:Z

    return-void
.end method


# virtual methods
.method public getBucketEndTime()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;->mBucketEndTime:J

    return-wide v0
.end method

.method public getBucketStartTime()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;->mBucketStartTime:J

    return-wide v0
.end method

.method public isActivityDetected()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;->mActivityDetected:Z

    return v0
.end method

.method public isTimeInBucket(J)Z
    .locals 3

    .line 50
    iget-wide v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;->mBucketStartTime:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;->mBucketEndTime:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setActivityDetected(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;->mActivityDetected:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 71
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;->mBucketStartTime:J

    const-string v3, "mBucketStartTime"

    .line 72
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;->mBucketEndTime:J

    const-string v3, "mBucketEndTime"

    .line 73
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;->mActivityDetected:Z

    const-string v2, "mActivityDetected"

    .line 74
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 75
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
