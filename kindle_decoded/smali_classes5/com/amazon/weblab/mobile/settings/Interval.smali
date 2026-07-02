.class public Lcom/amazon/weblab/mobile/settings/Interval;
.super Ljava/lang/Object;
.source "Interval.java"


# instance fields
.field private durationInMillis:J


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/amazon/weblab/mobile/settings/Interval;->durationInMillis:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    if-eqz p3, :cond_0

    .line 30
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/weblab/mobile/settings/Interval;->durationInMillis:J

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "unit can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "duration can\'t be less than 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public convertTo(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 41
    iget-wide v0, p0, Lcom/amazon/weblab/mobile/settings/Interval;->durationInMillis:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 83
    instance-of v0, p1, Lcom/amazon/weblab/mobile/settings/Interval;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 87
    :cond_0
    check-cast p1, Lcom/amazon/weblab/mobile/settings/Interval;

    .line 88
    iget-wide v2, p1, Lcom/amazon/weblab/mobile/settings/Interval;->durationInMillis:J

    iget-wide v4, p0, Lcom/amazon/weblab/mobile/settings/Interval;->durationInMillis:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 70
    iget-wide v0, p0, Lcom/amazon/weblab/mobile/settings/Interval;->durationInMillis:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lcom/amazon/weblab/mobile/settings/Interval;->toString(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    invoke-virtual {p0, p1}, Lcom/amazon/weblab/mobile/settings/Interval;->convertTo(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%d %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
