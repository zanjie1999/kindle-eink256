.class public Lcom/amazon/ku/KuInterstitialPageController;
.super Ljava/lang/Object;
.source "KuInterstitialPageController.java"


# static fields
.field private static final BOOK_BORROW_WAIT_MS:J

.field private static final KU_SIGNUP_FAILURE_DIALOG_TAG:Ljava/lang/String; = "KuSignUpFailureDialog"

.field private static final NUM_REQUEST_QUEUE_THREADS:I = 0x1

.field private static final PAGE_INFO_TIME_TO_LIVE:J = 0x36ee80L

.field private static final STORE_REF_TAG:Ljava/lang/String; = "kuconv_kfa_int"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ku.KuInterstitialPageController"

.field private static instance:Lcom/amazon/ku/KuInterstitialPageController;


# instance fields
.field private currentKuBooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ku/data/CapturedBook;",
            ">;"
        }
    .end annotation
.end field

.field private currentScreen:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

.field private dialogFragment:Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private final isDialogActivityStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isErrorDialogPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isLibraryForegrounded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isQueuedForSignUp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isShowingInterstitialPage:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

.field private pageInfoTimeStamp:J

.field private final prefs:Landroid/content/SharedPreferences;

.field private requestQueue:Lcom/android/volley/RequestQueue;

.field private final rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 65
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/ku/KuInterstitialPageController;->BOOK_BORROW_WAIT_MS:J

    const/4 v0, 0x0

    .line 67
    sput-object v0, Lcom/amazon/ku/KuInterstitialPageController;->instance:Lcom/amazon/ku/KuInterstitialPageController;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->isShowingInterstitialPage:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->isQueuedForSignUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->isLibraryForegrounded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->isDialogActivityStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->isErrorDialogPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    invoke-static {}, Lcom/amazon/ku/KuConversionPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 114
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "KuConversionPreferences"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->prefs:Landroid/content/SharedPreferences;

    .line 115
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    .line 116
    sget-object v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->INTERSTITIAL_SCREEN:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    iput-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->currentScreen:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    .line 119
    invoke-direct {p0}, Lcom/amazon/ku/KuInterstitialPageController;->hasShownInterstitialPage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/ku/KuInterstitialPageController;->neverShowInterstitialPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 121
    sget-object v0, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    const-string v1, "Subscribed to PubSub events"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/ku/KuInterstitialPageController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/amazon/ku/KuInterstitialPageController;->isShowingInterstitialPage:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/ku/KuInterstitialPageController;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/amazon/ku/KuInterstitialPageController;->onSignUpComplete(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/amazon/ku/KuInterstitialPageController;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/amazon/ku/KuInterstitialPageController;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/ku/KuInterstitialPageController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/amazon/ku/KuInterstitialPageController;->isErrorDialogPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/ku/KuInterstitialPageController;Lcom/amazon/ku/data/KuInterstitialPageInfo;)Lcom/amazon/ku/data/KuInterstitialPageInfo;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

    return-object p1
.end method

.method static synthetic access$302(Lcom/amazon/ku/KuInterstitialPageController;J)J
    .locals 0

    .line 55
    iput-wide p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfoTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/amazon/ku/KuInterstitialPageController;Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;)Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->currentScreen:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    return-object p1
.end method

.method static synthetic access$500(Lcom/amazon/ku/KuInterstitialPageController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/amazon/ku/KuInterstitialPageController;->isQueuedForSignUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/ku/KuInterstitialPageController;)Landroid/content/SharedPreferences;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/amazon/ku/KuInterstitialPageController;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$702(Lcom/amazon/ku/KuInterstitialPageController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->currentKuBooks:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/amazon/ku/KuInterstitialPageController;)Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/amazon/ku/KuInterstitialPageController;->rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/ku/KuInterstitialPageController;)Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/amazon/ku/KuInterstitialPageController;->dialogFragment:Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;

    return-object p0
.end method

.method private downloadBooks(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/ku/data/CapturedBook;",
            ">;J)V"
        }
    .end annotation

    .line 555
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/amazon/ku/KuInterstitialPageController$5;

    invoke-direct {v1, p0, p1}, Lcom/amazon/ku/KuInterstitialPageController$5;-><init>(Lcom/amazon/ku/KuInterstitialPageController;Ljava/util/List;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private declared-synchronized getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    monitor-enter p0

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 647
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->executor:Ljava/util/concurrent/ExecutorService;

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->executor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/ku/KuInterstitialPageController;
    .locals 2

    const-class v0, Lcom/amazon/ku/KuInterstitialPageController;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lcom/amazon/ku/KuInterstitialPageController;->instance:Lcom/amazon/ku/KuInterstitialPageController;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Lcom/amazon/ku/KuInterstitialPageController;

    invoke-direct {v1}, Lcom/amazon/ku/KuInterstitialPageController;-><init>()V

    sput-object v1, Lcom/amazon/ku/KuInterstitialPageController;->instance:Lcom/amazon/ku/KuInterstitialPageController;

    .line 109
    :cond_0
    sget-object v1, Lcom/amazon/ku/KuInterstitialPageController;->instance:Lcom/amazon/ku/KuInterstitialPageController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    monitor-enter p0

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->requestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 635
    invoke-static {v0}, Lcom/amazon/ku/util/KuConversionUtils;->createRequestQueue(I)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 636
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->requestQueue:Lcom/android/volley/RequestQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hasShownInterstitialPage()Z
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "KuInterstitialPageShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isInterstitialPageInaccessible()Z
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/ku/KuInterstitialPageController;->hasInterstitialPageInfoExpired()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

    invoke-virtual {v0}, Lcom/amazon/ku/data/KuInterstitialPageInfo;->shouldUseWebViewSignUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private neverShowInterstitialPage()Z
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "NeverShowKuInterstitialPage"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private onSignUpComplete(Z)V
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    if-eqz p1, :cond_0

    const-string v1, "KuSubscriptionSucceeded"

    goto :goto_0

    :cond_0
    const-string v1, "KuSubscriptionFailed"

    :goto_0
    const-string v2, "KuInterstitialScreen"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 477
    sget-object p1, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    const-string v0, "Subscription succeeded"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    sget-object p1, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->CONFIRMATION_SCREEN:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    .line 479
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const-string v1, "KuConfirmationScreen"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->currentKuBooks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 482
    sget-wide v1, Lcom/amazon/ku/KuInterstitialPageController;->BOOK_BORROW_WAIT_MS:J

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/ku/KuInterstitialPageController;->downloadBooks(Ljava/util/List;J)V

    .line 484
    :cond_1
    invoke-static {}, Lcom/amazon/ku/KuContentManager;->getInstance()Lcom/amazon/ku/KuContentManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/ku/KuInterstitialPageController;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/ku/KuContentManager;->deletePsnlForExpiredBooks(Ljava/util/concurrent/ExecutorService;)V

    goto :goto_1

    .line 486
    :cond_2
    sget-object p1, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    const-string v0, "Subscription failed"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    sget-object p1, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->ERROR_SCREEN:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    .line 490
    :goto_1
    monitor-enter p0

    .line 491
    :try_start_0
    iput-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->currentScreen:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    .line 492
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->isQueuedForSignUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 493
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    invoke-direct {p0}, Lcom/amazon/ku/KuInterstitialPageController;->refreshDialogFragment()V

    return-void

    :catchall_0
    move-exception p1

    .line 493
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized refreshDialogFragment()V
    .locals 2

    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->dialogFragment:Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 326
    monitor-exit p0

    return-void

    .line 328
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->dialogFragment:Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 331
    monitor-exit p0

    return-void

    .line 333
    :cond_1
    :try_start_2
    new-instance v1, Lcom/amazon/ku/KuInterstitialPageController$3;

    invoke-direct {v1, p0}, Lcom/amazon/ku/KuInterstitialPageController$3;-><init>(Lcom/amazon/ku/KuInterstitialPageController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private subscribe()V
    .locals 5

    .line 501
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

    if-nez v0, :cond_0

    .line 503
    sget-object v0, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    const-string v1, "Missing pageInfo when subscribing; aborting"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 507
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/ku/data/KuInterstitialPageInfo;->shouldUseWebViewSignUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

    invoke-virtual {v0}, Lcom/amazon/ku/data/KuInterstitialPageInfo;->getKuSignUpPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

    invoke-virtual {v1}, Lcom/amazon/ku/data/KuInterstitialPageInfo;->getReturnPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

    .line 510
    invoke-virtual {v2}, Lcom/amazon/ku/data/KuInterstitialPageInfo;->getReturnedStateName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "kuconv_kfa_int"

    .line 509
    invoke-static {v0, v1, v2, v3}, Lcom/amazon/ku/KuStoreManager;->loadKuSubscriptionWebApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const-string v1, "KuInterstitialSignUpWebView"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_1
    new-instance v0, Lcom/amazon/ku/KuInterstitialPageController$4;

    invoke-direct {v0, p0}, Lcom/amazon/ku/KuInterstitialPageController$4;-><init>(Lcom/amazon/ku/KuInterstitialPageController;)V

    .line 524
    iget-object v1, p0, Lcom/amazon/ku/KuInterstitialPageController;->isQueuedForSignUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 525
    iget-object v1, p0, Lcom/amazon/ku/KuInterstitialPageController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v1

    .line 526
    invoke-direct {p0}, Lcom/amazon/ku/KuInterstitialPageController;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    new-instance v3, Lcom/amazon/bookwizard/ku/service/KuSignupRequest;

    iget-object v4, p0, Lcom/amazon/ku/KuInterstitialPageController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1, v0}, Lcom/amazon/bookwizard/ku/service/KuSignupRequest;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;)V

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 527
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const-string v1, "KuInterstitialSignUpRequest"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getTextAssets(Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/ku/KuInterstitialPageController;->hasInterstitialPageInfoExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->currentScreen:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    sget-object v2, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->ERROR_SCREEN:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    if-ne v0, v2, :cond_1

    .line 362
    invoke-virtual {p1}, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->dismiss()V

    .line 363
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

    sget-object v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->ERROR_SCREEN:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    invoke-virtual {p1, v0}, Lcom/amazon/ku/data/KuInterstitialPageInfo;->getAssetsForScreen(Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/ku/KuInterstitialPageController;->postSignUpFailureDialog(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit p0

    return-object v1

    .line 366
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->dialogFragment:Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;

    .line 367
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->isShowingInterstitialPage:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 368
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->currentScreen:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    invoke-virtual {p1, v0}, Lcom/amazon/ku/data/KuInterstitialPageInfo;->getAssetsForScreen(Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;)Ljava/util/Map;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 356
    :cond_2
    :goto_0
    :try_start_2
    sget-object v0, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

    if-nez v3, :cond_3

    const-string v3, "Missing"

    goto :goto_1

    :cond_3
    const-string v3, "Expired"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pageInfo when refreshing UI; dismissing dialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1}, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->dismiss()V

    const/4 p1, 0x0

    .line 358
    invoke-virtual {p0, p1}, Lcom/amazon/ku/KuInterstitialPageController;->onDialogDismissed(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 359
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized hasInterstitialPageInfoExpired()Z
    .locals 6

    monitor-enter p0

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->currentScreen:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    sget-object v2, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->INTERSTITIAL_SCREEN:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfoTimeStamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    .line 379
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isQueuedForSignUp()Z
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->isQueuedForSignUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method isShowingInterstitialPage()Z
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->isShowingInterstitialPage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onActivityStart()V
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->isDialogActivityStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onActivityStop()V
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->isDialogActivityStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public declared-synchronized onCloseClicked(Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;)V
    .locals 0

    monitor-enter p0

    .line 436
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->dismiss()V

    const/4 p1, 0x1

    .line 437
    invoke-virtual {p0, p1}, Lcom/amazon/ku/KuInterstitialPageController;->onDialogDismissed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method onDialogDismissed(Z)V
    .locals 3

    .line 448
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->requestQueue:Lcom/android/volley/RequestQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 450
    iput-object v1, p0, Lcom/amazon/ku/KuInterstitialPageController;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 453
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 454
    iput-object v1, p0, Lcom/amazon/ku/KuInterstitialPageController;->executor:Ljava/util/concurrent/ExecutorService;

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->isShowingInterstitialPage:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 458
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->isQueuedForSignUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 459
    iput-object v1, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

    .line 460
    iput-object v1, p0, Lcom/amazon/ku/KuInterstitialPageController;->currentKuBooks:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 463
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "KuInterstitialPageShown"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method public onKuContentEvent(Lcom/amazon/ku/events/KuContentEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 157
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received KuContentEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/ku/events/KuContentEvent;->getEventType()Lcom/amazon/ku/events/KuContentEvent$EventType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/ku/events/KuContentEvent;->getEventType()Lcom/amazon/ku/events/KuContentEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/ku/events/KuContentEvent$EventType;->EXPIRED_CONTENT_CAPTURED:Lcom/amazon/ku/events/KuContentEvent$EventType;

    if-ne p1, v0, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/amazon/ku/KuInterstitialPageController;->isShowingInterstitialPage()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/amazon/ku/KuInterstitialPageController;->refreshDialogFragment()V

    goto :goto_0

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->isLibraryForegrounded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/amazon/ku/KuInterstitialPageController;->showInterstitialPageIfNecessary()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onLibraryLifecycleEvent(Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 136
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received LibraryLifecycleEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent;->getActivityLifecycleType()Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->isLibraryForegrounded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent;->getActivityLifecycleType()Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;->RESUME:Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 141
    invoke-virtual {p1}, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent;->getActivityLifecycleType()Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;->RESUME:Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    if-ne p1, v0, :cond_3

    .line 142
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->isErrorDialogPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 143
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

    sget-object v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->ERROR_SCREEN:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    invoke-virtual {p1, v0}, Lcom/amazon/ku/data/KuInterstitialPageInfo;->getAssetsForScreen(Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/ku/KuInterstitialPageController;->postSignUpFailureDialog(Ljava/util/Map;)V

    goto :goto_1

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/ku/KuInterstitialPageController;->showInterstitialPageIfNecessary()V

    :cond_3
    :goto_1
    return-void
.end method

.method public declared-synchronized onNoClicked(Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;)V
    .locals 2

    monitor-enter p0

    .line 420
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->dismiss()V

    const/4 p1, 0x1

    .line 421
    invoke-virtual {p0, p1}, Lcom/amazon/ku/KuInterstitialPageController;->onDialogDismissed(Z)V

    .line 422
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->currentScreen:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    sget-object v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->CONFIRMATION_SCREEN:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    if-ne p1, v0, :cond_1

    .line 423
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

    invoke-virtual {p1}, Lcom/amazon/ku/data/KuInterstitialPageInfo;->getKuStorePath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "kuconv_kfa_int"

    invoke-static {p1, v0}, Lcom/amazon/ku/KuStoreManager;->loadKuLandingPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const-string v0, "KuConfirmationScreen"

    const-string v1, "KuConfirmationScreenGoToKuStoreClicked"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 426
    :cond_1
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const-string v0, "KuInterstitialScreen"

    const-string v1, "KuInterstitialScreenNoClicked"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSubscriptionViewStateEvent(Lcom/amazon/ku/events/SubscriptionViewStateEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

    if-nez v0, :cond_0

    .line 540
    sget-object v0, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing pageInfo on subscription finished; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 543
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/ku/events/SubscriptionViewStateEvent;->getSubscribeUrlPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

    invoke-virtual {v1}, Lcom/amazon/ku/data/KuInterstitialPageInfo;->getKuSignUpPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->pageInfo:Lcom/amazon/ku/data/KuInterstitialPageInfo;

    invoke-virtual {v0}, Lcom/amazon/ku/data/KuInterstitialPageInfo;->getSuccessState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/ku/events/SubscriptionViewStateEvent;->getViewState()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/ku/KuInterstitialPageController;->onSignUpComplete(Z)V

    :cond_1
    return-void
.end method

.method public declared-synchronized onYesClicked(Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;)V
    .locals 2

    monitor-enter p0

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->currentScreen:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    sget-object v1, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->INTERSTITIAL_SCREEN:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    if-ne v0, v1, :cond_1

    .line 401
    invoke-static {}, Lcom/amazon/ku/util/KuConversionUtils;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/amazon/ku/KuInterstitialPageController;->subscribe()V

    goto :goto_0

    .line 404
    :cond_0
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/application/KRXDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/KRXDialogType;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->showDialog(Lcom/amazon/kindle/krx/application/KRXDialogType;Ljava/lang/String;)Z

    .line 406
    :goto_0
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const-string v0, "KuInterstitialScreen"

    const-string v1, "KuInterstitialScreenSignUpClicked"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 408
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->dismiss()V

    const/4 p1, 0x1

    .line 409
    invoke-virtual {p0, p1}, Lcom/amazon/ku/KuInterstitialPageController;->onDialogDismissed(Z)V

    .line 410
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const-string v0, "KuConfirmationScreen"

    const-string v1, "KuConfirmationScreenGoToLibraryClicked"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method postSignUpFailureDialog(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 579
    sget-object p1, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    const-string v0, "Missing assets for error dialog; skipping"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 584
    iget-object v1, p0, Lcom/amazon/ku/KuInterstitialPageController;->isLibraryForegrounded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 590
    :cond_1
    new-instance v1, Lcom/amazon/ku/KuInterstitialPageController$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/amazon/ku/KuInterstitialPageController$6;-><init>(Lcom/amazon/ku/KuInterstitialPageController;Landroid/app/Activity;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 585
    :cond_2
    :goto_0
    sget-object p1, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    const-string v0, "Couldn\'t show error dialog because no Activity is showing; will try later"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->isErrorDialogPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method showInterstitialPageDialog(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/ku/data/CapturedBook;",
            ">;)V"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->isShowingInterstitialPage:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 256
    invoke-static {}, Lcom/amazon/ku/util/KuConversionUtils;->isAccessibilityModeOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/ku/KuInterstitialPageController;->isInterstitialPageInaccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    sget-object p1, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    const-string v0, "KU Sign-up in WebView is not accessible; skipping"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->isShowingInterstitialPage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 263
    iget-object v2, p0, Lcom/amazon/ku/KuInterstitialPageController;->isLibraryForegrounded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/amazon/ku/KuInterstitialPageController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserName()Ljava/lang/String;

    .line 273
    new-instance v1, Lcom/amazon/ku/KuInterstitialPageController$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/amazon/ku/KuInterstitialPageController$2;-><init>(Lcom/amazon/ku/KuInterstitialPageController;Ljava/util/List;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 264
    :cond_2
    :goto_0
    sget-object p1, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    const-string v0, "Neither Reader nor Library is showing; skipping"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController;->isShowingInterstitialPage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method showInterstitialPageIfNecessary()V
    .locals 3

    .line 174
    invoke-direct {p0}, Lcom/amazon/ku/KuInterstitialPageController;->hasShownInterstitialPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    const-string v1, "Has shown dialog; skipping"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/amazon/ku/KuInterstitialPageController;->neverShowInterstitialPage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    sget-object v0, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    const-string v1, "Should never show dialog; skipping"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_1
    invoke-static {}, Lcom/amazon/ku/KuContentManager;->getInstance()Lcom/amazon/ku/KuContentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ku/KuContentManager;->getCapturedBooks()Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    sget-object v0, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    const-string v1, "No book captured yet; skipping"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 190
    invoke-static {v1}, Lcom/amazon/ku/util/KuConversionUtils;->isOnline(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 191
    sget-object v0, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    const-string v1, "No WiFi connection; skipping"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 196
    :cond_3
    invoke-static {}, Lcom/amazon/ku/util/KuConversionUtils;->isAccessibilityModeOn()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/amazon/ku/KuInterstitialPageController;->isInterstitialPageInaccessible()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 197
    sget-object v0, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    const-string v1, "Page not accessible based on previous page info; skipping"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_4
    iget-object v2, p0, Lcom/amazon/ku/KuInterstitialPageController;->isShowingInterstitialPage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 202
    iget-object v1, p0, Lcom/amazon/ku/KuInterstitialPageController;->isDialogActivityStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 204
    sget-object v1, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    const-string v2, "Resuming the Interstitial Page Activity"

    invoke-static {v1, v2}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, v0}, Lcom/amazon/ku/KuInterstitialPageController;->showInterstitialPageDialog(Ljava/util/List;)V

    goto :goto_0

    .line 207
    :cond_5
    sget-object v0, Lcom/amazon/ku/KuInterstitialPageController;->TAG:Ljava/lang/String;

    const-string v1, "Is already showing dialog; skipping"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 212
    :cond_6
    new-instance v1, Lcom/amazon/ku/KuInterstitialPageController$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/ku/KuInterstitialPageController$1;-><init>(Lcom/amazon/ku/KuInterstitialPageController;Ljava/util/List;)V

    .line 239
    invoke-direct {p0}, Lcom/amazon/ku/KuInterstitialPageController;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v2, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;

    invoke-direct {v2, v1}, Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;-><init>(Lcom/amazon/ku/service/ResponseListener;)V

    invoke-virtual {v0, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method
