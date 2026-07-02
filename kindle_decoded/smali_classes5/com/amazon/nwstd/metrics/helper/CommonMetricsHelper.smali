.class public Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;
.super Ljava/lang/Object;
.source "CommonMetricsHelper.java"

# interfaces
.implements Lcom/amazon/nwstd/metrics/IMetricsHelper;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isSessionPaused:Z

.field private isSessionStarted:Z

.field private mAdViewed:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mArticleViewed:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonFromFullPageWasClicked:Z

.field private mCountVisibleAssetDownloadFailed:I

.field private mCurrentArticle:Lcom/amazon/nwstd/metrics/helper/Article;

.field private mCurrentOrientation:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

.field private mCurrentUpsellBanner:Lcom/amazon/nwstd/metrics/helper/UpsellBanner;

.field private mCurrentUpsellFullPage:Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;

.field mLoggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/nwstd/metrics/IMetricsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaOverlaySession:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionInMagazine:D

.field private mSessionDuration:J

.field private mSessionStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;)V
    .locals 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 62
    iput-wide v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mPositionInMagazine:D

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->isSessionStarted:Z

    .line 72
    iput-boolean v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->isSessionPaused:Z

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mMediaOverlaySession:Ljava/util/HashMap;

    .line 82
    iput-boolean v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mButtonFromFullPageWasClicked:Z

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mLoggers:Ljava/util/ArrayList;

    .line 90
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mArticleViewed:Ljava/util/Vector;

    .line 91
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mAdViewed:Ljava/util/Vector;

    const-wide/16 v1, 0x0

    .line 92
    iput-wide v1, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mSessionDuration:J

    .line 93
    iput v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCountVisibleAssetDownloadFailed:I

    .line 94
    iput-object p1, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentOrientation:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

    return-void
.end method

.method private clear()V
    .locals 3

    const/4 v0, 0x0

    .line 432
    iput-boolean v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->isSessionStarted:Z

    const-wide/16 v1, 0x0

    .line 433
    iput-wide v1, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mSessionDuration:J

    .line 434
    iput-boolean v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->isSessionPaused:Z

    const/4 v0, 0x0

    .line 435
    iput-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentArticle:Lcom/amazon/nwstd/metrics/helper/Article;

    .line 436
    iput-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellFullPage:Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;

    .line 437
    iput-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellBanner:Lcom/amazon/nwstd/metrics/helper/UpsellBanner;

    const-wide/16 v0, 0x0

    .line 438
    iput-wide v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mPositionInMagazine:D

    .line 439
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mArticleViewed:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 440
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mAdViewed:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 441
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private resumeSession()V
    .locals 4

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 127
    iput-wide v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mSessionStartTime:J

    .line 128
    iget-object v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/nwstd/metrics/IMetricsLogger;

    .line 129
    invoke-interface {v3}, Lcom/amazon/nwstd/metrics/IMetricsLogger;->onResumeSession()V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentArticle:Lcom/amazon/nwstd/metrics/helper/Article;

    if-eqz v2, :cond_1

    .line 134
    invoke-virtual {v2, v0, v1}, Lcom/amazon/nwstd/metrics/helper/Article;->onResumeSession(J)V

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellFullPage:Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;

    if-eqz v2, :cond_2

    .line 137
    invoke-virtual {v2, v0, v1}, Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;->onResumeSession(J)V

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellBanner:Lcom/amazon/nwstd/metrics/helper/UpsellBanner;

    if-eqz v2, :cond_3

    .line 140
    invoke-virtual {v2, v0, v1}, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->onResumeSession(J)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addMetricsLogger(Lcom/amazon/nwstd/metrics/IMetricsLogger;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public closeSession()V
    .locals 10

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 170
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentArticle:Lcom/amazon/nwstd/metrics/helper/Article;

    if-eqz v0, :cond_0

    .line 171
    iget-object v3, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentOrientation:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/helper/Article;->getDownloadState()Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mLoggers:Ljava/util/ArrayList;

    move-wide v1, v8

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/nwstd/metrics/helper/Article;->stopReading(JLcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsDownloadState;Ljava/util/AbstractCollection;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellFullPage:Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;

    if-eqz v0, :cond_1

    .line 175
    iget-object v3, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentOrientation:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

    iget-object v4, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mLoggers:Ljava/util/ArrayList;

    iget-boolean v5, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mButtonFromFullPageWasClicked:Z

    iget-wide v6, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mPositionInMagazine:D

    move-wide v1, v8

    invoke-virtual/range {v0 .. v7}, Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;->stopReading(JLcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;Ljava/util/AbstractCollection;ZD)V

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mButtonFromFullPageWasClicked:Z

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellBanner:Lcom/amazon/nwstd/metrics/helper/UpsellBanner;

    if-eqz v0, :cond_2

    .line 180
    iget-object v1, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentOrientation:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

    iget-object v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0, v8, v9, v1, v2}, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->stopReading(JLcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;Ljava/util/AbstractCollection;)V

    .line 186
    :cond_2
    iget-wide v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mSessionStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 187
    iget-wide v4, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mSessionDuration:J

    sub-long/2addr v8, v0

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mSessionDuration:J

    .line 188
    iput-wide v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mSessionStartTime:J

    .line 192
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 193
    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLES_READ:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-object v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mArticleViewed:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-wide v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mSessionDuration:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ADS_VIEWED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-object v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mAdViewed:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 198
    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->COUNT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget v3, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCountVisibleAssetDownloadFailed:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/nwstd/metrics/IMetricsLogger;

    .line 201
    sget-object v4, Lcom/amazon/nwstd/metrics/MetricsTags;->ISSUE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-interface {v3, v4, v0}, Lcom/amazon/nwstd/metrics/IMetricsLogger;->reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;)V

    .line 202
    sget-object v4, Lcom/amazon/nwstd/metrics/MetricsTags;->UNAVAILABLE_ARTICLE_DOWNLOAD_ERROR_COUNT:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-interface {v3, v4, v1}, Lcom/amazon/nwstd/metrics/IMetricsLogger;->reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;)V

    .line 203
    invoke-interface {v3}, Lcom/amazon/nwstd/metrics/IMetricsLogger;->onCloseSession()V

    goto :goto_0

    .line 206
    :cond_4
    invoke-direct {p0}, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->clear()V

    return-void
.end method

.method public onOrientationChange(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentOrientation:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

    if-ne p1, v0, :cond_0

    return-void

    .line 282
    :cond_0
    iput-object p1, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentOrientation:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

    .line 283
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentArticle:Lcom/amazon/nwstd/metrics/helper/Article;

    if-eqz p1, :cond_1

    .line 284
    invoke-virtual {p1}, Lcom/amazon/nwstd/metrics/helper/Article;->onOrientationChange()V

    .line 286
    :cond_1
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellFullPage:Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;

    if-eqz p1, :cond_2

    .line 287
    invoke-virtual {p1}, Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;->onOrientationChange()V

    .line 289
    :cond_2
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellBanner:Lcom/amazon/nwstd/metrics/helper/UpsellBanner;

    if-eqz p1, :cond_3

    .line 290
    invoke-virtual {p1}, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->onOrientationChange()V

    :cond_3
    return-void
.end method

.method public onUpsellBannerHidden()V
    .locals 5

    .line 542
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellBanner:Lcom/amazon/nwstd/metrics/helper/UpsellBanner;

    if-nez v0, :cond_0

    return-void

    .line 545
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 546
    iget-object v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellBanner:Lcom/amazon/nwstd/metrics/helper/UpsellBanner;

    iget-object v3, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentOrientation:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

    iget-object v4, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->stopReading(JLcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;Ljava/util/AbstractCollection;)V

    const/4 v0, 0x0

    .line 547
    iput-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellBanner:Lcom/amazon/nwstd/metrics/helper/UpsellBanner;

    return-void
.end method

.method public onUpsellBannerShown(Ljava/lang/String;DLcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;)V
    .locals 3

    .line 528
    iget-boolean v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->isSessionPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellBanner:Lcom/amazon/nwstd/metrics/helper/UpsellBanner;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 533
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 534
    new-instance v2, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;-><init>(Ljava/lang/String;DLcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;)V

    iput-object v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellBanner:Lcom/amazon/nwstd/metrics/helper/UpsellBanner;

    .line 535
    invoke-virtual {v2, v0, v1}, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->startReading(J)V

    return-void
.end method

.method public onUpsellLinkClicked(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;DLjava/lang/String;Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 486
    :goto_0
    invoke-static {v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 488
    sget-object v1, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;->UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    if-ne p1, v1, :cond_1

    .line 489
    iput-boolean v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mButtonFromFullPageWasClicked:Z

    goto :goto_1

    .line 490
    :cond_1
    sget-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;->UPSELL_BANNER:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellBanner:Lcom/amazon/nwstd/metrics/helper/UpsellBanner;

    if-eqz v0, :cond_2

    .line 491
    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->onClick()V

    .line 494
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 495
    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object p4, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-object v1, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentOrientation:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object p4, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PERCENT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object p2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->UPSELL_CLICK_ORIGIN:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object p1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->READING_MODE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {p5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object p1, Lcom/amazon/nwstd/metrics/MetricsTags;->UPSELL_LINK_CLICKED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/HashMap;)V

    .line 502
    sget-object p1, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->UPSELL_SHOP_PAGE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->openNewScreen(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;)V

    return-void
.end method

.method public openNewScreen(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;)V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/metrics/IMetricsLogger;

    .line 448
    invoke-interface {v1, p1}, Lcom/amazon/nwstd/metrics/IMetricsLogger;->tagScreen(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pauseSession()V
    .locals 6

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 147
    iget-wide v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mSessionDuration:J

    iget-wide v4, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mSessionStartTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mSessionDuration:J

    const-wide/16 v2, 0x0

    .line 148
    iput-wide v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mSessionStartTime:J

    const/4 v2, 0x1

    .line 149
    iput-boolean v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->isSessionPaused:Z

    .line 150
    iget-object v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/nwstd/metrics/IMetricsLogger;

    .line 151
    invoke-interface {v3}, Lcom/amazon/nwstd/metrics/IMetricsLogger;->onPauseSession()V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentArticle:Lcom/amazon/nwstd/metrics/helper/Article;

    if-eqz v2, :cond_1

    .line 155
    invoke-virtual {v2, v0, v1}, Lcom/amazon/nwstd/metrics/helper/Article;->onPauseSession(J)V

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellFullPage:Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;

    if-eqz v2, :cond_2

    .line 158
    invoke-virtual {v2, v0, v1}, Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;->onPauseSession(J)V

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellBanner:Lcom/amazon/nwstd/metrics/helper/UpsellBanner;

    if-eqz v2, :cond_3

    .line 161
    invoke-virtual {v2, v0, v1}, Lcom/amazon/nwstd/metrics/helper/UpsellBanner;->onPauseSession(J)V

    :cond_3
    return-void
.end method

.method public reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/nwstd/metrics/MetricsTags;",
            "Ljava/util/HashMap<",
            "Lcom/amazon/nwstd/metrics/MetricsAttributes;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/metrics/IMetricsLogger;

    .line 424
    invoke-interface {v1, p1, p2}, Lcom/amazon/nwstd/metrics/IMetricsLogger;->reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startOrResumeSession()V
    .locals 3

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->isSessionPaused:Z

    .line 111
    iget-boolean v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->isSessionStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->isSessionStarted:Z

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mSessionStartTime:J

    .line 114
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/metrics/IMetricsLogger;

    .line 115
    invoke-interface {v1}, Lcom/amazon/nwstd/metrics/IMetricsLogger;->onStartSession()V

    .line 117
    sget-object v2, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->MAGAZINE_VIEWER:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    invoke-interface {v1, v2}, Lcom/amazon/nwstd/metrics/IMetricsLogger;->tagScreen(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;)V

    .line 118
    sget-object v2, Lcom/amazon/nwstd/metrics/MetricsTags;->ISSUE_OPENED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-interface {v1, v2}, Lcom/amazon/nwstd/metrics/IMetricsLogger;->reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->resumeSession()V

    :cond_1
    return-void
.end method

.method public startReadingUpsellFullPage(Ljava/lang/String;DLcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;)V
    .locals 3

    .line 456
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellFullPage:Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentArticle:Lcom/amazon/nwstd/metrics/helper/Article;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 460
    :cond_1
    sget-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->openNewScreen(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;)V

    .line 461
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 462
    new-instance v2, Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;

    invoke-direct {v2, p1, p4}, Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;-><init>(Ljava/lang/String;Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;)V

    iput-object v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellFullPage:Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;

    .line 463
    invoke-virtual {v2, v0, v1}, Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;->startReading(J)V

    .line 464
    iput-wide p2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mPositionInMagazine:D

    return-void
.end method

.method public stopReadingUpsellFullPage()V
    .locals 10

    .line 471
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellFullPage:Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 473
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellFullPage:Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;

    if-nez v0, :cond_1

    return-void

    .line 476
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 477
    sget-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->MAGAZINE_VIEWER:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->openNewScreen(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;)V

    .line 478
    iget-object v2, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellFullPage:Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;

    iget-object v5, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentOrientation:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

    iget-object v6, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mLoggers:Ljava/util/ArrayList;

    iget-boolean v7, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mButtonFromFullPageWasClicked:Z

    iget-wide v8, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mPositionInMagazine:D

    invoke-virtual/range {v2 .. v9}, Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;->stopReading(JLcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;Ljava/util/AbstractCollection;ZD)V

    .line 479
    iput-boolean v1, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mButtonFromFullPageWasClicked:Z

    const/4 v0, 0x0

    .line 480
    iput-object v0, p0, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->mCurrentUpsellFullPage:Lcom/amazon/nwstd/metrics/helper/UpsellFullPage;

    return-void
.end method
