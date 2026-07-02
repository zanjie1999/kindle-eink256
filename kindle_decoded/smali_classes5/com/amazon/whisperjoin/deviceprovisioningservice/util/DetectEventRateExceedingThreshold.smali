.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;
.super Ljava/lang/Object;
.source "DetectEventRateExceedingThreshold.java"


# instance fields
.field private final mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

.field private final mEventsInWindowThreshold:J

.field private final mMonitorWindowMs:J

.field private final mTimestamps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;JJ)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;->mTimestamps:Ljava/util/LinkedList;

    .line 19
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;->mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    .line 20
    iput-wide p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;->mMonitorWindowMs:J

    .line 21
    iput-wide p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;->mEventsInWindowThreshold:J

    return-void
.end method


# virtual methods
.method public thresholdExceeded()Z
    .locals 6

    .line 25
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;->mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 26
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;->mClock:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    invoke-interface {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;->mMonitorWindowMs:J

    sub-long/2addr v2, v4

    .line 29
    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;->mTimestamps:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;->mTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;->mTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v0, v0

    .line 43
    iget-wide v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;->mEventsInWindowThreshold:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
