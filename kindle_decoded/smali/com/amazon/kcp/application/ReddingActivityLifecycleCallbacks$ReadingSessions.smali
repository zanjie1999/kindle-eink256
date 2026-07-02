.class Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;
.super Ljava/lang/Object;
.source "ReddingActivityLifecycleCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadingSessions"
.end annotation


# instance fields
.field private backgroundedActivity:Landroid/app/Activity;

.field private currentActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 417
    iput-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->currentActivity:Landroid/app/Activity;

    .line 420
    iput-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->backgroundedActivity:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$1;)V
    .locals 0

    .line 415
    invoke-direct {p0}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;-><init>()V

    return-void
.end method


# virtual methods
.method public closeSession()V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 449
    invoke-static {}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->recordBookCloseEvent()V

    const/4 v0, 0x0

    .line 450
    iput-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->currentActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public closeSession(Landroid/app/Activity;)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->currentActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->closeSession()V

    :cond_0
    return-void
.end method

.method public onAppBackgrounded()V
    .locals 4

    .line 471
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->currentActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->backgroundedActivity:Landroid/app/Activity;

    .line 472
    instance-of v1, v0, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v1, :cond_3

    .line 473
    check-cast v0, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 475
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    .line 476
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v1

    .line 477
    iget-object v2, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->currentActivity:Landroid/app/Activity;

    check-cast v2, Lcom/amazon/kcp/reader/ReaderActivity;

    .line 478
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ReaderActivity;->getCurrentNLNMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v1, :cond_0

    .line 482
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->AUDIBLE_PLAYER:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    goto :goto_1

    :cond_0
    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 486
    :cond_1
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->FULL_PAGE_VIEW:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    goto :goto_1

    .line 484
    :cond_2
    :goto_0
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->NAVIGATION_VIEW:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    .line 489
    :goto_1
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->BACKGROUND_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    .line 493
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->closeSession(Landroid/app/Activity;)V

    return-void
.end method

.method public onAppForegrounded(Landroid/app/Activity;)V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->backgroundedActivity:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    .line 462
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->startSession(Landroid/app/Activity;)V

    :cond_0
    const/4 p1, 0x0

    .line 464
    iput-object p1, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->backgroundedActivity:Landroid/app/Activity;

    return-void
.end method

.method public setCurrentActivity(Landroid/app/Activity;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->currentActivity:Landroid/app/Activity;

    return-void
.end method

.method public startSession(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->currentActivity:Landroid/app/Activity;

    if-eq v0, p1, :cond_0

    .line 428
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->closeSession(Landroid/app/Activity;)V

    .line 429
    iput-object p1, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->currentActivity:Landroid/app/Activity;

    .line 430
    invoke-static {p1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->recordBookOpenEvent(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
