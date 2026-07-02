.class public Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;
.super Ljava/lang/Object;
.source "OveractiveBleActivityDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;,
        Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$OveractivityDetected;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OveractiveBleActivityDetector"


# instance fields
.field private mActiveBucketCount:I

.field private final mActivityBuckets:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;",
            ">;"
        }
    .end annotation
.end field

.field private final mBucketCount:J

.field private final mClock:Lcom/amazon/whisperjoin/util/Clock;

.field private final mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)V
    .locals 1

    .line 80
    new-instance v0, Lcom/amazon/whisperjoin/util/Clock;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/util/Clock;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;-><init>(Lcom/amazon/whisperjoin/util/Clock;Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/whisperjoin/util/Clock;Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)V
    .locals 7

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mActiveBucketCount:I

    .line 84
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mClock:Lcom/amazon/whisperjoin/util/Clock;

    if-eqz p2, :cond_0

    .line 85
    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->isValidOveractiveConfig(Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    goto :goto_0

    .line 88
    :cond_0
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    sget-wide v1, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/Config$Overactive;->BUCKET_LENGTH_MS:J

    sget-wide v3, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/Config$Overactive;->MONITORING_WINDOW_MS:J

    const-wide/high16 v5, 0x4049000000000000L    # 50.0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;-><init>(JJD)V

    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    .line 91
    :goto_0
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->getMonitoringWindowMs()J

    move-result-wide p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->getBucketLengthMs()J

    move-result-wide v0

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mBucketCount:J

    .line 92
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mActivityBuckets:Ljava/util/LinkedList;

    return-void
.end method

.method private isValidOveractiveConfig(Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)Z
    .locals 6

    .line 175
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->getThresholdPercentage()D

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmpg-double v5, v0, v3

    if-lez v5, :cond_3

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->getThresholdPercentage()D

    move-result-wide v0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpl-double v5, v0, v3

    if-ltz v5, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->getMonitoringWindowMs()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->getBucketLengthMs()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    return v2

    .line 181
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->getBucketLengthMs()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_3

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->getMonitoringWindowMs()J

    move-result-wide v0

    cmp-long p1, v0, v3

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v2
.end method


# virtual methods
.method public onNewDiscoveryActivity()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$OveractivityDetected;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mClock:Lcom/amazon/whisperjoin/util/Clock;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 99
    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->getMonitoringWindowMs()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 104
    iget-object v4, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mActivityBuckets:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mActivityBuckets:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;

    invoke-virtual {v4}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;->getBucketStartTime()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    .line 105
    iget-object v4, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mActivityBuckets:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 112
    :cond_0
    iget-object v4, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mActivityBuckets:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    iget-object v4, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mActivityBuckets:Ljava/util/LinkedList;

    new-instance v5, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;

    iget-object v6, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    invoke-virtual {v6}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->getBucketLengthMs()J

    move-result-wide v6

    invoke-direct {v5, v2, v3, v6, v7}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;-><init>(JJ)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_1
    iget-object v4, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mActivityBuckets:Ljava/util/LinkedList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 130
    iget-object v6, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mActivityBuckets:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;

    .line 131
    :goto_0
    invoke-virtual {v6, v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;->isTimeInBucket(J)Z

    move-result v7

    if-nez v7, :cond_2

    .line 134
    new-instance v7, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;

    invoke-virtual {v6}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;->getBucketEndTime()J

    move-result-wide v8

    iget-object v6, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    .line 135
    invoke-virtual {v6}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->getBucketLengthMs()J

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;-><init>(JJ)V

    .line 136
    invoke-interface {v4, v7}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 137
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {v6}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;->isActivityDetected()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 148
    invoke-virtual {v6, v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;->setActivityDetected(Z)V

    .line 154
    iput v5, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mActiveBucketCount:I

    .line 156
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 157
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;

    .line 158
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;->getBucketStartTime()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-gtz v8, :cond_5

    .line 160
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 163
    :cond_5
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$ActivityBucket;->isActivityDetected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    iget v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mActiveBucketCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mActiveBucketCount:I

    goto :goto_1

    .line 167
    :cond_6
    iget v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mActiveBucketCount:I

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mBucketCount:J

    long-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    .line 168
    sget-object v3, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v0, v5

    const-string v5, " Discovery Activity Update: Percentage of Window with Activity: %.2f"

    invoke-static {v4, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;->getThresholdPercentage()D

    move-result-wide v3

    cmpl-double v0, v1, v3

    if-gtz v0, :cond_7

    return-void

    .line 170
    :cond_7
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$OveractivityDetected;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$OveractivityDetected;-><init>()V

    throw v0
.end method
