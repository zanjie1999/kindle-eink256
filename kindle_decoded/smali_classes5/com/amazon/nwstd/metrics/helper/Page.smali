.class public Lcom/amazon/nwstd/metrics/helper/Page;
.super Ljava/lang/Object;
.source "Page.java"


# instance fields
.field private final mArticleName:Ljava/lang/String;

.field private mInteractivityEngaged:Z

.field private final mOrientation:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

.field private final mPageIndex:I

.field private mStartReadingTime:J

.field private mTotalDuration:J


# direct methods
.method private reportPageViewedEvent(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;Ljava/util/AbstractCollection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;",
            "Ljava/util/AbstractCollection<",
            "Lcom/amazon/nwstd/metrics/IMetricsLogger;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 117
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PAGEID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget v2, p0, Lcom/amazon/nwstd/metrics/helper/Page;->mPageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_NAME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-object v2, p0, Lcom/amazon/nwstd/metrics/helper/Page;->mArticleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_TYPE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object p1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-wide v1, p0, Lcom/amazon/nwstd/metrics/helper/Page;->mTotalDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object p1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-object v1, p0, Lcom/amazon/nwstd/metrics/helper/Page;->mOrientation:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object p1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->INTERACTIVITY_ENGAGED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-boolean v1, p0, Lcom/amazon/nwstd/metrics/helper/Page;->mInteractivityEngaged:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/nwstd/metrics/IMetricsLogger;

    .line 128
    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->PAGE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-interface {p2, v1, v0}, Lcom/amazon/nwstd/metrics/IMetricsLogger;->reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public onPauseSession(J)V
    .locals 6

    .line 82
    iget-wide v0, p0, Lcom/amazon/nwstd/metrics/helper/Page;->mStartReadingTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 83
    iget-wide v4, p0, Lcom/amazon/nwstd/metrics/helper/Page;->mTotalDuration:J

    sub-long/2addr p1, v0

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/amazon/nwstd/metrics/helper/Page;->mTotalDuration:J

    .line 84
    iput-wide v2, p0, Lcom/amazon/nwstd/metrics/helper/Page;->mStartReadingTime:J

    :cond_0
    return-void
.end method

.method public onResumeSession(J)V
    .locals 0

    .line 94
    iput-wide p1, p0, Lcom/amazon/nwstd/metrics/helper/Page;->mStartReadingTime:J

    return-void
.end method

.method public stopReading(JLcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;Ljava/util/AbstractCollection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;",
            "Ljava/util/AbstractCollection<",
            "Lcom/amazon/nwstd/metrics/IMetricsLogger;",
            ">;)V"
        }
    .end annotation

    .line 105
    iget-wide v0, p0, Lcom/amazon/nwstd/metrics/helper/Page;->mStartReadingTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 106
    iget-wide v2, p0, Lcom/amazon/nwstd/metrics/helper/Page;->mTotalDuration:J

    sub-long/2addr p1, v0

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/amazon/nwstd/metrics/helper/Page;->mTotalDuration:J

    .line 108
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/amazon/nwstd/metrics/helper/Page;->reportPageViewedEvent(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;Ljava/util/AbstractCollection;)V

    return-void
.end method
