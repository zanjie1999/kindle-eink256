.class public Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;
.super Landroid/app/Activity;
.source "BookOpenSplashActivity.java"


# static fields
.field public static final BOOKID:Ljava/lang/String; = "key"

.field private static final METRIC_ACTIVITY_ALREADY_FINISHED:Ljava/lang/String; = "ActivityAlreadyFinished"

.field public static final STARTTIME:Ljava/lang/String; = "com.amazon.firelauncher.ACTION_START_TIME"

.field private static final TAG:Ljava/lang/String;

.field public static final TOUCH_TO_LAUNCH:Ljava/lang/String; = "TOUCH_TO_LAUNCH"

.field private static recordedTouchToLaunch:Z


# instance fields
.field private bookId:Ljava/lang/String;

.field private coverView:Landroid/widget/ImageView;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private touchStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    sput-boolean v0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->recordedTouchToLaunch:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->bookId:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 47
    iput-wide v1, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->touchStartTime:J

    .line 48
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->drawable:Landroid/graphics/drawable/Drawable;

    .line 49
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->coverView:Landroid/widget/ImageView;

    return-void
.end method

.method private hideChrome(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x706

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private openBook()V
    .locals 4

    const-string v0, "failed opening book"

    .line 143
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->recordTouchToLaunch()V

    .line 144
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->bookId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->touchStartTime:J

    invoke-static {p0, v1, v2, v3}, Lcom/amazon/kcp/library/BookOpenHelper;->openBook(Landroid/app/Activity;Ljava/lang/String;J)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 147
    const-class v1, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 147
    const-class v2, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 150
    throw v1
.end method

.method private recordTouchToLaunch()V
    .locals 6

    .line 170
    sget-boolean v0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->recordedTouchToLaunch:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 171
    sput-boolean v0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->recordedTouchToLaunch:Z

    .line 172
    const-class v0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->getFirstCreatedActivity()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getAppStartTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->touchStartTime:J

    sub-long/2addr v2, v4

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v4, "TOUCH_TO_LAUNCH"

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private setDrawable(Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_2

    const-wide/16 v0, -0x1

    const-string v2, "com.amazon.firelauncher.ACTION_START_TIME"

    .line 72
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->touchStartTime:J

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "touch-start-time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->touchStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "key"

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->bookId:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->bookId:Ljava/lang/String;

    .line 77
    :goto_0
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v0}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createStartEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object v0

    const-string v1, "asin"

    .line 78
    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    iget-wide v1, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->touchStartTime:J

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->overrideTimestamp(J)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    .line 80
    invoke-virtual {v0}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->buildAndSend()V

    .line 81
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->READER_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const/4 v1, 0x1

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getAppStartTime()J

    move-result-wide v2

    invoke-static {v0, p1, v1, v2, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Ljava/lang/String;ZJ)V

    .line 82
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->bookId:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    .line 83
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/io/IPathDescriptor;->getCoverCacheDirectory()Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/amazon/kcp/cover/CoverFilenamer;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/cover/CoverFilenamer;-><init>(Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {v1, p1, v0}, Lcom/amazon/kcp/cover/CoverFilenamer;->getCoverFilename(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->drawable:Landroid/graphics/drawable/Drawable;

    .line 89
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->coverView:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 91
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->coverView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 94
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->coverView:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->hideChrome(Landroid/view/View;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->setDrawable(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->setDrawable(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->drawable:Landroid/graphics/drawable/Drawable;

    .line 156
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->coverView:Landroid/widget/ImageView;

    const-wide/16 v0, 0x0

    .line 157
    iput-wide v0, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->touchStartTime:J

    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 124
    const-class v1, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    const-string v2, "ActivityAlreadyFinished"

    .line 125
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 126
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->bookId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->coverView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 103
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->isAppInitializationCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->coverView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 107
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "Drawable image was null"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 110
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 111
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->reportBookOpenedFromExternalSource()V

    .line 112
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/BookOpenSplashActivity;->openBook()V

    .line 114
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 136
    invoke-static {}, Lcom/amazon/kindle/performance/AppFullyDrawnReporterSingleton;->getInstance()Lcom/amazon/kindle/performance/AppFullyDrawnReporter;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/performance/AppFullyDrawnReporter;->report(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
