.class public Lcom/amazon/nwstd/metrics/helper/UpsellBanner;
.super Ljava/lang/Object;
.source "UpsellBanner.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mArticleId:Ljava/lang/String;

.field private mOrientationChangeCount:I

.field private final mReadingMode:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;

.field private final mReadingPercentage:D

.field private mStartReadingTime:J

.field private mTotalDuration:J

.field private mWasClicked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/nwstd/metrics/helper/Article;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DLcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mArticleId:Ljava/lang/String;

    .line 63
    iput-wide p2, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mReadingPercentage:D

    .line 64
    iput-object p4, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mReadingMode:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mWasClicked:Z

    return-void
.end method

.method public onOrientationChange()V
    .locals 1

    .line 132
    iget v0, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mOrientationChangeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mOrientationChangeCount:I

    return-void
.end method

.method public onPauseSession(J)V
    .locals 6

    .line 88
    iget-wide v0, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mStartReadingTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 89
    iget-wide v4, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mTotalDuration:J

    sub-long/2addr p1, v0

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mTotalDuration:J

    .line 90
    iput-wide v2, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mStartReadingTime:J

    :cond_0
    return-void
.end method

.method public onResumeSession(J)V
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mStartReadingTime:J

    return-void
.end method

.method public startReading(J)V
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mStartReadingTime:J

    return-void
.end method

.method public stopReading(JLcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;Ljava/util/AbstractCollection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;",
            "Ljava/util/AbstractCollection<",
            "Lcom/amazon/nwstd/metrics/IMetricsLogger;",
            ">;)V"
        }
    .end annotation

    .line 111
    iget-wide v0, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mStartReadingTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 112
    iget-wide v2, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mTotalDuration:J

    sub-long/2addr p1, v0

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mTotalDuration:J

    .line 115
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 116
    sget-object p2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object p2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION_CHANGES:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget p3, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mOrientationChangeCount:I

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object p2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-wide v0, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mTotalDuration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object p2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->UPSELL_BUTTON_CLICKED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-boolean p3, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mWasClicked:Z

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object p2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-object p3, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mArticleId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object p2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PERCENT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-wide v0, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mReadingPercentage:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object p2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->READING_MODE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-object p3, p0, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->mReadingMode:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {p4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/nwstd/metrics/IMetricsLogger;

    .line 124
    sget-object p4, Lcom/amazon/nwstd/metrics/MetricsTags;->UPSELL_BANNER_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-interface {p3, p4, p1}, Lcom/amazon/nwstd/metrics/IMetricsLogger;->reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method
