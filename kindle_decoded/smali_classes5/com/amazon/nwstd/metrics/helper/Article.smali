.class public Lcom/amazon/nwstd/metrics/helper/Article;
.super Ljava/lang/Object;
.source "Article.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mArticleId:Ljava/lang/String;

.field private final mArticleName:Ljava/lang/String;

.field private final mArticleType:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

.field private mDownloadState:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

.field private mInteractivityEngaged:Z

.field private final mLandscapePagesViewed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpenedPages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amazon/nwstd/metrics/helper/Page;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationChangeCount:I

.field private final mPortraitPagesViewed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStartReadingTime:J

.field private mTotalDuration:J

.field private final mTotalLandscapePages:I

.field private final mTotalPortraitPages:I

.field private mZoomSession:Lcom/amazon/nwstd/metrics/helper/ZoomSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/nwstd/metrics/helper/Article;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/metrics/helper/Article;->TAG:Ljava/lang/String;

    return-void
.end method

.method private reportMetricsForDownloadedArticle(Ljava/util/AbstractCollection;Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractCollection<",
            "Lcom/amazon/nwstd/metrics/IMetricsLogger;",
            ">;",
            "Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;",
            ")V"
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 273
    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object p2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION_CHANGES:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget v1, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mOrientationChangeCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object p2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-wide v1, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mTotalDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object p2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->INTERACTIVITY_ENGAGED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-boolean v1, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mInteractivityEngaged:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget p2, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mTotalPortraitPages:I

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mPortraitPagesViewed:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 282
    iget-object p2, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mPortraitPagesViewed:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    int-to-float p2, p2

    iget v3, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mTotalPortraitPages:I

    int-to-float v3, v3

    div-float/2addr p2, v3

    mul-float p2, p2, v1

    float-to-int p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 284
    :goto_0
    iget v3, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mTotalLandscapePages:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mLandscapePagesViewed:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 285
    iget-object v3, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mLandscapePagesViewed:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mTotalLandscapePages:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v3, v3, v1

    float-to-int v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 287
    :goto_1
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 289
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x64

    if-gt p2, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    const-string v1, "We are trying to report an invalid percent of article read."

    .line 290
    invoke-static {v2, v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 292
    :cond_3
    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PERCENT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object p2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-object v1, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mArticleId:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object p2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_NAME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-object v1, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mArticleName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/nwstd/metrics/IMetricsLogger;

    .line 298
    iget-object v1, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mArticleType:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

    sget-object v2, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;->ADVERTISEMENT:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

    if-ne v1, v2, :cond_4

    .line 299
    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->AD_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-interface {p2, v1, v0}, Lcom/amazon/nwstd/metrics/IMetricsLogger;->reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;)V

    goto :goto_2

    .line 302
    :cond_4
    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->ARTICLE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-interface {p2, v1, v0}, Lcom/amazon/nwstd/metrics/IMetricsLogger;->reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;)V

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public getDownloadState()Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mDownloadState:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    return-object v0
.end method

.method public onOrientationChange()V
    .locals 1

    .line 262
    iget v0, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mOrientationChangeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mOrientationChangeCount:I

    return-void
.end method

.method public onPauseSession(J)V
    .locals 6

    .line 146
    iget-wide v0, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mStartReadingTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 147
    iget-wide v4, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mTotalDuration:J

    sub-long v0, p1, v0

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mTotalDuration:J

    .line 148
    iput-wide v2, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mStartReadingTime:J

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mOpenedPages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/metrics/helper/Page;

    .line 151
    invoke-virtual {v1, p1, p2}, Lcom/amazon/nwstd/metrics/helper/Page;->onPauseSession(J)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mZoomSession:Lcom/amazon/nwstd/metrics/helper/ZoomSession;

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {v0, p1, p2}, Lcom/amazon/nwstd/metrics/helper/ZoomSession;->onPauseSession(J)V

    :cond_2
    return-void
.end method

.method public onResumeSession(J)V
    .locals 2

    .line 164
    iput-wide p1, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mStartReadingTime:J

    .line 165
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mOpenedPages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/metrics/helper/Page;

    .line 166
    invoke-virtual {v1, p1, p2}, Lcom/amazon/nwstd/metrics/helper/Page;->onResumeSession(J)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mZoomSession:Lcom/amazon/nwstd/metrics/helper/ZoomSession;

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0, p1, p2}, Lcom/amazon/nwstd/metrics/helper/ZoomSession;->onResumeSession(J)V

    :cond_1
    return-void
.end method

.method public stopReading(JLcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;Ljava/util/AbstractCollection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;",
            "Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;",
            "Ljava/util/AbstractCollection<",
            "Lcom/amazon/nwstd/metrics/IMetricsLogger;",
            ">;)V"
        }
    .end annotation

    .line 182
    iget-wide v0, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mStartReadingTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 183
    iget-wide v2, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mTotalDuration:J

    sub-long v0, p1, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mTotalDuration:J

    .line 186
    :cond_0
    iget-object v4, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mZoomSession:Lcom/amazon/nwstd/metrics/helper/ZoomSession;

    if-eqz v4, :cond_1

    .line 187
    sget-object v7, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;->MOVE_TO_OTHER_ARTICLE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    iget-object v9, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mArticleId:Ljava/lang/String;

    move-wide v5, p1

    move-object v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/amazon/nwstd/metrics/helper/ZoomSession;->stopSession(JLcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;Ljava/util/AbstractCollection;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mZoomSession:Lcom/amazon/nwstd/metrics/helper/ZoomSession;

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mDownloadState:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    if-ne v0, p4, :cond_3

    sget-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;->DOWNLOADED:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    if-ne p4, v0, :cond_3

    .line 192
    invoke-direct {p0, p5, p3}, Lcom/amazon/nwstd/metrics/helper/Article;->reportMetricsForDownloadedArticle(Ljava/util/AbstractCollection;Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;)V

    .line 194
    iget-object p3, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mOpenedPages:Ljava/util/Vector;

    invoke-virtual {p3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazon/nwstd/metrics/helper/Page;

    .line 195
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mArticleType:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

    invoke-virtual {p4, p1, p2, v0, p5}, Lcom/amazon/nwstd/metrics/helper/Page;->stopReading(JLcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;Ljava/util/AbstractCollection;)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mOpenedPages:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    goto :goto_2

    .line 200
    :cond_3
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mDownloadState:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    if-eq p1, p4, :cond_4

    sget-object p1, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;->DOWNLOADED:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    if-ne p4, p1, :cond_4

    .line 201
    invoke-virtual {p5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/nwstd/metrics/IMetricsLogger;

    .line 202
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 203
    sget-object p4, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_NAME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-object p5, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mArticleName:Ljava/lang/String;

    invoke-virtual {p3, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object p4, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-wide v0, p0, Lcom/amazon/nwstd/metrics/helper/Article;->mTotalDuration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object p4, Lcom/amazon/nwstd/metrics/MetricsTags;->UNAVAILABLE_ARTICLE_VIEWED_TIME:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-interface {p2, p4, p3}, Lcom/amazon/nwstd/metrics/IMetricsLogger;->reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method
