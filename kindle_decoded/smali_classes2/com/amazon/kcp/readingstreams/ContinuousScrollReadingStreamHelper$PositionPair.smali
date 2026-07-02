.class Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;
.super Ljava/lang/Object;
.source "ContinuousScrollReadingStreamHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PositionPair"
.end annotation


# instance fields
.field final inverted:Z

.field final larger:J

.field final smaller:J


# direct methods
.method constructor <init>(JJ)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->smaller:J

    .line 32
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->larger:J

    cmp-long v0, p3, p1

    if-gez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 35
    :goto_0
    iput-boolean p1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->inverted:Z

    return-void
.end method


# virtual methods
.method removeOverlap(Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;)Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;
    .locals 12

    .line 48
    iget-wide v0, p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->smaller:J

    iget-wide v2, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->smaller:J

    const/4 v4, 0x0

    const-wide/16 v5, 0x1

    cmp-long v7, v0, v2

    if-ltz v7, :cond_3

    iget-wide v7, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->larger:J

    cmp-long v9, v0, v7

    if-gtz v9, :cond_3

    iget-wide v9, p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->larger:J

    cmp-long v11, v9, v2

    if-ltz v11, :cond_3

    cmp-long v11, v9, v7

    if-gtz v11, :cond_3

    .line 51
    sget-object v7, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->NEXT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    if-eq p2, v7, :cond_1

    sget-object v7, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->UNKNOWN:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    if-ne p2, v7, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;

    sub-long/2addr v0, v5

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;-><init>(JJ)V

    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    new-instance p2, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;

    iget-wide v0, p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->larger:J

    add-long/2addr v0, v5

    iget-wide v2, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->larger:J

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;-><init>(JJ)V

    move-object p1, p2

    .line 57
    :goto_1
    iget-boolean p2, p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->inverted:Z

    if-nez p2, :cond_2

    move-object v4, p1

    :cond_2
    return-object v4

    .line 65
    :cond_3
    iget-wide v0, p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->larger:J

    iget-wide v2, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->smaller:J

    cmp-long p2, v0, v2

    if-ltz p2, :cond_5

    iget-wide v2, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->larger:J

    cmp-long p2, v0, v2

    if-gtz p2, :cond_5

    .line 66
    new-instance p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;

    add-long/2addr v0, v5

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;-><init>(JJ)V

    .line 67
    iget-boolean p2, p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->inverted:Z

    if-nez p2, :cond_4

    move-object v4, p1

    :cond_4
    return-object v4

    .line 74
    :cond_5
    iget-wide v0, p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->smaller:J

    iget-wide v2, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->smaller:J

    cmp-long p2, v0, v2

    if-ltz p2, :cond_7

    iget-wide v7, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->larger:J

    cmp-long p2, v0, v7

    if-gtz p2, :cond_7

    .line 75
    new-instance p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;

    sub-long/2addr v0, v5

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;-><init>(JJ)V

    .line 76
    iget-boolean p2, p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->inverted:Z

    if-nez p2, :cond_6

    move-object v4, p1

    :cond_6
    return-object v4

    .line 83
    :cond_7
    iget-wide v0, p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->smaller:J

    iget-wide v2, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->smaller:J

    cmp-long p2, v0, v2

    if-gtz p2, :cond_8

    iget-wide p1, p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->larger:J

    iget-wide v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->larger:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    return-object v4

    :cond_8
    return-object p0
.end method
