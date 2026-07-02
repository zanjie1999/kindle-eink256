.class public Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;
.super Ljava/lang/Object;
.source "ReplicaBehaviorMetricsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;
    }
.end annotation


# static fields
.field private static final APPLICATION_IS_IN_BACKGROUND:I

.field private static mViewModeStartTime:J


# instance fields
.field private mActivitiesStackCount:I

.field private mContext:Landroid/content/Context;

.field private mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

.field private mImageViewSessionDuration:J

.field private mReplicaUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

.field private mSessionDuration:J

.field private mSessionStartTime:J

.field private mTextUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

.field private mTextViewSessionDuration:J


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    const/4 v1, 0x0

    .line 29
    iput v1, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mActivitiesStackCount:I

    .line 45
    iput-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mReplicaUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    .line 46
    iput-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mTextUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    .line 50
    iput-object p1, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 52
    new-instance p1, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    invoke-direct {p1, p0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;-><init>(Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;)V

    iput-object p1, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mReplicaUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    .line 53
    new-instance p1, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    invoke-direct {p1, p0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;-><init>(Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;)V

    iput-object p1, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mTextUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mSessionStartTime:J

    .line 56
    sput-wide v0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mViewModeStartTime:J

    .line 57
    iput-wide v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mSessionDuration:J

    .line 58
    iput-wide v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mTextViewSessionDuration:J

    .line 59
    iput-wide v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mImageViewSessionDuration:J

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getBookmarksMetricTag(Lcom/amazon/kindle/model/content/ILocalBookItem;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 226
    invoke-static {p0}, Lcom/amazon/nwstd/utils/BookItemUtils;->isYellowJerseyMagazine(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "NewsstandYJBookmarkPopup"

    return-object p0

    :cond_0
    const-string p0, "NewsstandBookmarkPopup"

    return-object p0
.end method

.method public static getTOCMetricTag(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/nwstd/toc/IPeriodicalTOC;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 207
    invoke-static {p0}, Lcom/amazon/nwstd/utils/BookItemUtils;->isYellowJerseyMagazine(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "NewsstandYellowJerseyToc"

    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    .line 209
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p0

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne p0, v0, :cond_2

    if-eqz p1, :cond_1

    .line 210
    invoke-interface {p1}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->hasReplicaPageItems()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "NewsstandReplicaToc"

    return-object p0

    :cond_1
    const-string p0, "NewsstandNonReplicaToc"

    return-object p0

    :cond_2
    const-string p0, "NewsstandNewspaperToc"

    return-object p0
.end method


# virtual methods
.method public getTextUserBehaviorMetric()Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mTextUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    return-object v0
.end method

.method public incrementReplicaScreenViewsMetric()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mReplicaUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->increment()V

    return-void
.end method

.method public onActivityPaused()V
    .locals 6

    .line 63
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 64
    iget v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mActivitiesStackCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Bitmap should not be null"

    invoke-static {v0, v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 65
    :cond_1
    iget v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mActivitiesStackCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mActivitiesStackCount:I

    if-nez v0, :cond_2

    .line 66
    iget-wide v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mSessionDuration:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mSessionStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mSessionDuration:J

    :cond_2
    return-void
.end method

.method public onActivityResumed()V
    .locals 2

    .line 71
    iget v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mActivitiesStackCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mActivitiesStackCount:I

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mSessionStartTime:J

    sput-wide v0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mViewModeStartTime:J

    return-void
.end method

.method public reportNewsstandUserBehaviorMetrics()V
    .locals 13

    .line 115
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mReplicaUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->hasLandscapeViews()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v4, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mReplicaUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    .line 119
    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->getLandscapeViews()J

    move-result-wide v5

    const-string v2, "NewsstandReplicaViewTimer"

    const-string v3, "ScreenViewsLandscape"

    .line 116
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mReplicaUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->hasPortraitViews()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v4, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mReplicaUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    .line 125
    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->getPortraitViews()J

    move-result-wide v5

    const-string v2, "NewsstandReplicaViewTimer"

    const-string v3, "ScreenViewsPortrait"

    .line 122
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mReplicaUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->isLastPageReached()Z

    move-result v0

    const-string v1, "LastPageReached"

    if-eqz v0, :cond_2

    .line 130
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "NewsstandReplicaView"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mTextUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->hasLandscapeViews()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    sget-object v5, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mTextUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    .line 141
    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->getLandscapeViews()J

    move-result-wide v6

    const-string v3, "NewsstandTextViewTimer"

    const-string v4, "ScreenViewsLandscape"

    .line 138
    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mTextUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->hasPortraitViews()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    sget-object v5, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mTextUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    .line 147
    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->getPortraitViews()J

    move-result-wide v6

    const-string v3, "NewsstandTextViewTimer"

    const-string v4, "ScreenViewsPortrait"

    .line 144
    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mTextUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->isLastPageReached()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "NewsstandTextView"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    if-eqz v0, :cond_8

    .line 160
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v1, :cond_8

    .line 161
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    sget-object v5, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    iget-wide v6, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mSessionDuration:J

    const-string v3, "NewsstandSessionTimer"

    const-string v4, "ReplicaMagazineSessionDuration"

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    .line 165
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->hasReplicaPageItems()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 166
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mReplicaUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->hasSessionsDuration()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 168
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v4, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mReplicaUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    .line 174
    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->getSessionDuration()J

    move-result-wide v5

    const-string v2, "NewsstandSessionTimer"

    const-string v3, "ReplicaMagazineImageViewSessionDuration"

    .line 169
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    .line 176
    :cond_6
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mTextUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->hasSessionsDuration()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 178
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v4, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mTextUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    .line 184
    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->getSessionDuration()J

    move-result-wide v5

    const-string v2, "NewsstandSessionTimer"

    const-string v3, "ReplicaMagazineTextViewSessionDuration"

    .line 179
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    goto :goto_0

    .line 187
    :cond_7
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v7

    sget-object v10, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    iget-wide v11, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mSessionDuration:J

    const-string v8, "NewsstandSessionTimer"

    const-string v9, "NonReplicaSessionDuration"

    invoke-virtual/range {v7 .. v12}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    goto :goto_0

    .line 193
    :cond_8
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    iget-wide v4, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mSessionDuration:J

    const-string v1, "NewsstandSessionTimer"

    const-string v2, "NewspaperSessionDuration"

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    :cond_9
    :goto_0
    return-void
.end method

.method public setReplicaViewLastPageAsReached()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mReplicaUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->setLastPageReached(Z)V

    return-void
.end method

.method public updateImageViewSessionDuration()V
    .locals 7

    .line 95
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mReplicaUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    iget-wide v1, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mImageViewSessionDuration:J

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mViewModeStartTime:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mImageViewSessionDuration:J

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->setSessionDuration(J)V

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mViewModeStartTime:J

    return-void
.end method

.method public updateTextViewSessionDuration()V
    .locals 7

    .line 102
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mTextUserBehaviorMetric:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    iget-wide v1, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mTextViewSessionDuration:J

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mViewModeStartTime:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mTextViewSessionDuration:J

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->setSessionDuration(J)V

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->mViewModeStartTime:J

    return-void
.end method
