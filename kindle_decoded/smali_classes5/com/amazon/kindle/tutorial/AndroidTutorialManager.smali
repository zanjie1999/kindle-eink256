.class public Lcom/amazon/kindle/tutorial/AndroidTutorialManager;
.super Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;
.source "AndroidTutorialManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/tutorial/AndroidTutorialManager$TriggerObserver;,
        Lcom/amazon/kindle/tutorial/AndroidTutorialManager$DispatchEventObserver;,
        Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueWorker;,
        Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/amazon/kindle/tutorial/AndroidTutorialManager; = null

.field private static final TAG:Ljava/lang/String;

.field private static final TUTORIAL_SHOW_ATTEMPT_COUNT:I = 0x5

.field private static final TUTORIAL_SHOW_RETRY_DELAY_MS:I = 0x32

.field private static utmEnabled:Z


# instance fields
.field private currentTutorialID:Ljava/lang/String;

.field private final customTutorialCallback:Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;

.field private final customTutorialHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/tutorial/ICustomTutorialHandler;",
            ">;"
        }
    .end annotation
.end field

.field private disabledJITIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final displayCountManager:Lcom/amazon/kindle/tutorial/IDisplayCountManager;

.field private final factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field private final forwardingLifecycleListener:Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;

.field private final observerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingEvents:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final providerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/tutorial/TutorialProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final queueWorker:Ljava/lang/Runnable;

.field private final queueWorkerThread:Ljava/lang/Thread;

.field public showChromeOnRestart:Z

.field private final threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

.field private topicActivationResolverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/tutorial/TopicActivationResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final topicConditionEvaluatorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator;",
            ">;"
        }
    .end annotation
.end field

.field private topicDeactivationResolverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/tutorial/TopicDeactivationResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final topicEventSourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/tutorial/events/SimpleEventSource;",
            ">;"
        }
    .end annotation
.end field

.field private topicObserverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/tutorial/AndroidTutorialManager$TriggerObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final tutorialActionHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/tutorial/actions/IActionHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private tutorialConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/tutorial/model/TutorialConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final tutorialStatusListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/tutorial/ITutorialStatusListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final tutorialsShownThisLifeCycle:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 132
    sput-boolean v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->utmEnabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/tutorial/IDisplayCountManager;Lcom/amazon/kindle/krx/thread/IThreadPoolManager;Z)V
    .locals 5

    .line 219
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->pendingEvents:Ljava/util/concurrent/BlockingQueue;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicActivationResolverMap:Ljava/util/Map;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicDeactivationResolverMap:Ljava/util/Map;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicObserverMap:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "e77f4bbf904aa44804df031940614b3167c8e71b"

    const-string v2, "680260f4fe2b68b9b7138f5cdab150484442c0cb"

    const-string v3, "81eecef03ef81d7daaa75c128a99d152559e2274"

    const-string v4, "fdf676407990fef16418c0058c433edbab1a1e84"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->disabledJITIds:Ljava/util/ArrayList;

    .line 220
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 221
    iput-object p3, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->displayCountManager:Lcom/amazon/kindle/tutorial/IDisplayCountManager;

    .line 222
    iput-object p4, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    .line 223
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->providerMap:Ljava/util/Map;

    .line 224
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->observerMap:Ljava/util/Map;

    .line 225
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicEventSourceMap:Ljava/util/Map;

    .line 226
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicConditionEvaluatorMap:Ljava/util/Map;

    .line 227
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialStatusListenerMap:Ljava/util/Map;

    .line 228
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialActionHandlerMap:Ljava/util/Map;

    .line 229
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->customTutorialHandlerMap:Ljava/util/Map;

    .line 230
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialsShownThisLifeCycle:Ljava/util/HashSet;

    if-eqz p5, :cond_0

    if-eqz p1, :cond_0

    .line 234
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->installLocaleChangeBroadcastReceiver(Landroid/content/Context;)V

    .line 237
    :cond_0
    invoke-static {p1, p0}, Lcom/amazon/kindle/tutorial/AndroidTutorialManagerBroadcastReceiver;->registerDebugBroadcastReceiver(Landroid/content/Context;Lcom/amazon/kindle/tutorial/AndroidTutorialManager;)V

    .line 239
    new-instance p2, Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;

    invoke-direct {p2}, Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->customTutorialCallback:Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;

    .line 240
    new-instance p2, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;

    invoke-direct {p2}, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->forwardingLifecycleListener:Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;

    .line 241
    invoke-virtual {p2}, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->start()V

    .line 243
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->loadConfigurationFromContext(Landroid/content/Context;)V

    .line 245
    new-instance p1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueWorker;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueWorker;-><init>(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Lcom/amazon/kindle/tutorial/AndroidTutorialManager$1;)V

    iput-object p1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->queueWorker:Ljava/lang/Runnable;

    .line 246
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->queueWorker:Ljava/lang/Runnable;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->queueWorkerThread:Ljava/lang/Thread;

    .line 247
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->pendingEvents:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->initSubmitOnMainThread(Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;)Z
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->awaitActivity()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->dismissTutorialIfNecessary(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->selectAndShowTutorial(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->utmEnabled:Z

    return v0
.end method

.method private awaitActivity()Z
    .locals 5

    .line 315
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 316
    sget-object v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const-string v2, "awaitActivity() should never be called on the main thread!"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x5

    :goto_0
    if-lez v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 324
    invoke-static {}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->getCurrentForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x32

    .line 330
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    sget-object v3, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const-string v4, "Interrupted thread waiting for foreground activity."

    invoke-static {v3, v4}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-string v4, "in"

    goto :goto_2

    :cond_3
    const-string v4, "NOT in"

    :goto_2
    aput-object v4, v3, v1

    const-string v4, "Wait ended. Activity is %s foreground"

    .line 335
    invoke-static {v4, v3}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private declared-synchronized dismissTutorialIfNecessary(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V
    .locals 1

    monitor-enter p0

    .line 925
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicDeactivationResolverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/tutorial/TopicDeactivationResolver;

    if-eqz p1, :cond_0

    .line 927
    invoke-interface {p2}, Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->currentTutorialID:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kindle/tutorial/TopicDeactivationResolver;->tryTutorialDismiss(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 928
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->currentTutorialID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;
    .locals 2

    const-class v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    monitor-enter v0

    .line 201
    :catch_0
    :goto_0
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->INSTANCE:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 203
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    :cond_0
    :try_start_2
    sget-object v1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->INSTANCE:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initSubmitOnMainThread(Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;)V
    .locals 3

    .line 283
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 284
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    new-instance v2, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$1;-><init>(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    .line 293
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Lcom/amazon/kcp/application/IAuthenticationManager;)V
    .locals 4

    const-class v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    monitor-enter v0

    .line 187
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 188
    new-instance v2, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/IAuthenticationManager;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 190
    :goto_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    const/4 v3, 0x1

    .line 191
    invoke-static {p0, v1, v2, p1, v3}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->initialize(Landroid/content/Context;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/tutorial/IDisplayCountManager;Lcom/amazon/kindle/krx/thread/IThreadPoolManager;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/tutorial/IDisplayCountManager;Lcom/amazon/kindle/krx/thread/IThreadPoolManager;Z)V
    .locals 8

    const-class v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    monitor-enter v0

    .line 169
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->INSTANCE:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    if-nez v1, :cond_0

    .line 170
    new-instance v1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/tutorial/IDisplayCountManager;Lcom/amazon/kindle/krx/thread/IThreadPoolManager;Z)V

    sput-object v1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->INSTANCE:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    .line 172
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private installLocaleChangeBroadcastReceiver(Landroid/content/Context;)V
    .locals 3

    .line 352
    new-instance v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$2;-><init>(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;)V

    .line 366
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static isUtmEnabled()Z
    .locals 1

    .line 148
    sget-boolean v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->utmEnabled:Z

    return v0
.end method

.method private registerTutorials(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/tutorial/model/TutorialConfig;",
            ">;)V"
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicActivationResolverMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1034
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    .line 1035
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->isAlreadyShown(Lcom/amazon/kindle/tutorial/model/TutorialConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1036
    sget-object v1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Skipping %s: has already been been shown."

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    goto :goto_0

    .line 1040
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->setupTutorialActivation(Lcom/amazon/kindle/tutorial/model/TutorialConfig;)V

    .line 1041
    invoke-direct {p0, v0}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->setupTutorialDeactivation(Lcom/amazon/kindle/tutorial/model/TutorialConfig;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized selectAndShowTutorial(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 949
    :try_start_0
    iget-object v4, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicActivationResolverMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/tutorial/TopicActivationResolver;

    if-eqz v4, :cond_5

    .line 951
    invoke-virtual {v4, p2, p1, p0}, Lcom/amazon/kindle/tutorial/TopicActivationResolver;->resolveActivations(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Lcom/amazon/kindle/tutorial/AndroidTutorialManager;)Ljava/util/List;

    move-result-object p1

    const-string v4, "Resolving priority for %d tutorials."

    new-array v5, v3, [Ljava/lang/Object;

    .line 953
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 954
    sget-object v4, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->HIGHEST_PRIORITY_FIRST:Ljava/util/Comparator;

    invoke-static {p1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 956
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 962
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v1

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/tutorial/model/ActivationInstance;

    if-nez v4, :cond_1

    .line 965
    invoke-direct {p0, v5}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->showTutorial(Lcom/amazon/kindle/tutorial/model/ActivationInstance;)Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    move-result-object v6

    .line 966
    sget-object v7, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->SHOWN:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 967
    invoke-virtual {v5}, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->getTutorialConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object v4

    goto :goto_1

    .line 971
    :cond_1
    sget-object v6, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->NOT_SHOWN_PRIORITY:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    .line 974
    :cond_2
    :goto_1
    invoke-virtual {v5}, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->getActivationConfig()Lcom/amazon/kindle/tutorial/model/ActivationConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/kindle/tutorial/model/ActivationConfig;->getCallbackConfig()Lcom/amazon/kindle/tutorial/model/ActivationCallbackConfig;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 975
    invoke-virtual {v7}, Lcom/amazon/kindle/tutorial/model/ActivationCallbackConfig;->getTopic()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    move-object v7, v1

    :goto_2
    if-eqz v7, :cond_0

    .line 977
    invoke-virtual {v5}, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->getTutorialConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v7, p2, v6}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->sendTutorialStatusUpdate(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Lcom/amazon/kindle/krx/tutorial/TutorialStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    move-object v1, v4

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_5

    .line 984
    :cond_5
    :try_start_2
    sget-object p2, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const-string v4, "No handler found for topic %s. This should not happen."

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 993
    :try_start_3
    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object p1

    .line 994
    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "We showed a tutorial. Responsibility of releasing lock now lies with tutorial %s (%s)."

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v3

    .line 995
    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    goto :goto_4

    .line 998
    :cond_7
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/info/TutorialLock;->unlockTutorials()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1001
    :goto_4
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :goto_5
    if-eqz v1, :cond_8

    .line 993
    :try_start_4
    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object p2

    .line 994
    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "We showed a tutorial. Responsibility of releasing lock now lies with tutorial %s (%s)."

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    aput-object v1, v0, v3

    .line 995
    invoke-static {v4, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_7

    .line 998
    :cond_8
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/info/TutorialLock;->unlockTutorials()V

    .line 1000
    :goto_6
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_7
    monitor-exit p0

    throw p1
.end method

.method private setupTutorialActivation(Lcom/amazon/kindle/tutorial/model/TutorialConfig;)V
    .locals 11

    .line 1054
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getActivationConfigs()Ljava/util/List;

    move-result-object v0

    .line 1055
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1056
    sget-object v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%s has no activation configuration. Skipping."

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    return-void

    .line 1060
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/tutorial/model/ActivationConfig;

    .line 1061
    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/ActivationConfig;->getTriggerConfig()Lcom/amazon/kindle/tutorial/model/TriggerConfig;

    move-result-object v4

    .line 1062
    invoke-virtual {v4}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->getTopic()Ljava/lang/String;

    move-result-object v5

    .line 1063
    invoke-virtual {v4}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->getEvent()Ljava/lang/String;

    move-result-object v6

    .line 1064
    invoke-virtual {v4}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->getActivityForegroundCheck()Z

    move-result v4

    .line 1065
    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/ActivationConfig;->getCondition()Lcom/amazon/kindle/tutorial/ICondition;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eqz v7, :cond_3

    .line 1067
    new-instance v7, Lcom/amazon/kindle/tutorial/model/ActivationInstance;

    invoke-direct {v7, v1, p1}, Lcom/amazon/kindle/tutorial/model/ActivationInstance;-><init>(Lcom/amazon/kindle/tutorial/model/ActivationConfig;Lcom/amazon/kindle/tutorial/model/TutorialConfig;)V

    .line 1069
    sget-object v1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v2

    aput-object v6, v9, v3

    .line 1070
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    const-string v8, "Adding trigger (topic: %s, event: %s) for %s."

    .line 1069
    invoke-static {v8, v9}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    .line 1072
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicActivationResolverMap:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1073
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicActivationResolverMap:Ljava/util/Map;

    new-instance v8, Lcom/amazon/kindle/tutorial/TopicActivationResolver;

    iget-object v9, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-direct {v8, v9}, Lcom/amazon/kindle/tutorial/TopicActivationResolver;-><init>(Lcom/amazon/kcp/application/IKindleObjectFactory;)V

    invoke-interface {v1, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicActivationResolverMap:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/tutorial/TopicActivationResolver;

    .line 1076
    invoke-virtual {v1, v6}, Lcom/amazon/kindle/tutorial/TopicActivationResolver;->getEventActivationResolver(Ljava/lang/String;)Lcom/amazon/kindle/tutorial/EventActivationResolver;

    move-result-object v1

    .line 1077
    invoke-virtual {v1, v7}, Lcom/amazon/kindle/tutorial/EventActivationResolver;->addActivationInstance(Lcom/amazon/kindle/tutorial/model/ActivationInstance;)V

    .line 1079
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicObserverMap:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$TriggerObserver;

    if-nez v1, :cond_1

    .line 1081
    new-instance v1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$TriggerObserver;

    invoke-direct {v1, p0, v5, v4}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$TriggerObserver;-><init>(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Ljava/lang/String;Z)V

    .line 1082
    iget-object v4, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicObserverMap:Ljava/util/Map;

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    invoke-virtual {p0, v5, v1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->addEventObserver(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;)V

    goto :goto_0

    .line 1086
    :cond_3
    sget-object v1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v5, v4, v2

    aput-object v6, v4, v3

    .line 1087
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "Trigger (topic: %s, event: %s) for %s has no activation condition. It is being ignored."

    .line 1086
    invoke-static {v5, v4}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private setupTutorialDeactivation(Lcom/amazon/kindle/tutorial/model/TutorialConfig;)V
    .locals 6

    .line 1093
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getDeactivationConfig()Lcom/amazon/kindle/tutorial/model/TriggerConfig;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 1096
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%s has no deactivation configuration."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    return-void

    .line 1100
    :cond_0
    iget-object v3, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicDeactivationResolverMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/tutorial/TopicDeactivationResolver;

    if-nez v3, :cond_1

    .line 1103
    new-instance v3, Lcom/amazon/kindle/tutorial/TopicDeactivationResolver;

    invoke-direct {v3}, Lcom/amazon/kindle/tutorial/TopicDeactivationResolver;-><init>()V

    .line 1104
    iget-object v4, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicDeactivationResolverMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->getTopic()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->getEvent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kindle/tutorial/TopicDeactivationResolver;->addIDToDeactivationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    sget-object v3, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 1110
    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->getTopic()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->getEvent()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    const-string p1, "Deactivation trigger (topic: %s, event: %s) for %s"

    .line 1109
    invoke-static {p1, v4}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    return-void
.end method

.method private declared-synchronized showTutorial(Lcom/amazon/kindle/tutorial/model/ActivationInstance;)Lcom/amazon/kindle/krx/tutorial/TutorialStatus;
    .locals 10

    monitor-enter p0

    .line 737
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->getTutorialConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object v0

    .line 738
    sget-boolean v1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->utmEnabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 739
    sget-object p1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const-string v1, "UTM is disabled. Not showing tutorial: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->trace(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    .line 740
    sget-object p1, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->NOT_SHOWN_INTERNAL_ERROR:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 743
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object v1

    .line 745
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->canShow(Lcom/amazon/kindle/tutorial/model/TutorialConfig;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string p1, "Tutorial \'%s\' not eligible"

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v2

    .line 746
    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 747
    sget-object p1, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->NOT_SHOWN_DISPLAY_LIMIT:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 750
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->getCurrentForegroundActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_2

    .line 752
    sget-object p1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const-string v0, "Not showing tutorial \'%s\' - app is not in foreground."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    .line 753
    sget-object p1, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->NOT_SHOWN_APP_NOT_IN_FOREGROUND:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 756
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/info/TutorialLock;->tryLockTutorials()Z

    move-result v5

    if-nez v5, :cond_3

    const-string p1, "Can\'t show tutorial \'%s\', another tutorial still has the lock."

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v2

    .line 759
    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 760
    sget-object p1, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->NOT_SHOWN_INTERNAL_ERROR:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 763
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getType()Ljava/lang/String;

    move-result-object v5

    .line 765
    new-instance v6, Lcom/amazon/kindle/tutorial/TutorialLauncherData;

    iget-object v7, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->customTutorialHandlerMap:Ljava/util/Map;

    iget-object v8, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->customTutorialCallback:Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;

    invoke-direct {v6, v0, v4, v7, v8}, Lcom/amazon/kindle/tutorial/TutorialLauncherData;-><init>(Lcom/amazon/kindle/tutorial/model/TutorialConfig;Landroid/app/Activity;Ljava/util/Map;Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;)V

    .line 768
    invoke-static {v5}, Lcom/amazon/kindle/tutorial/TutorialType;->getTutorialFromString(Ljava/lang/String;)Lcom/amazon/kindle/tutorial/TutorialType;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/amazon/kindle/tutorial/TutorialType;->showTutorial(Lcom/amazon/kindle/tutorial/TutorialLauncherData;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 771
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 772
    iget-object v6, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->pendingEvents:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6, v4}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    move-result v6

    if-lez v6, :cond_5

    const-string v7, "Tutorial is showing. Ignoring %d remaining pending event%s."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 775
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    if-le v6, v3, :cond_4

    const-string/jumbo v2, "s"

    goto :goto_0

    :cond_4
    const-string v2, ""

    :goto_0
    aput-object v2, v8, v3

    .line 774
    invoke-static {v7, v8}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 776
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;

    const-string v6, ""

    .line 777
    iget-object v7, v4, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;->topic:Ljava/lang/String;

    iget-object v4, v4, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;->event:Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    sget-object v8, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->NOT_SHOWN_PRIORITY:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    invoke-virtual {p0, v6, v7, v4, v8}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->sendTutorialStatusUpdate(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Lcom/amazon/kindle/krx/tutorial/TutorialStatus;)V

    goto :goto_1

    .line 781
    :cond_5
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->displayCountManager:Lcom/amazon/kindle/tutorial/IDisplayCountManager;

    if-eqz v2, :cond_6

    .line 782
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->displayCountManager:Lcom/amazon/kindle/tutorial/IDisplayCountManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/amazon/kindle/tutorial/IDisplayCountManager;->getDisplayCount(Ljava/lang/String;)I

    move-result v2

    .line 783
    iget-object v4, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->displayCountManager:Lcom/amazon/kindle/tutorial/IDisplayCountManager;

    add-int/2addr v2, v3

    invoke-interface {v4, v1, v2}, Lcom/amazon/kindle/tutorial/IDisplayCountManager;->setDisplayCount(Ljava/lang/String;I)V

    .line 786
    :cond_6
    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->currentTutorialID:Ljava/lang/String;

    .line 787
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialsShownThisLifeCycle:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 789
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->getActivationConfig()Lcom/amazon/kindle/tutorial/model/ActivationConfig;

    move-result-object p1

    .line 790
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/ActivationConfig;->getCallbackConfig()Lcom/amazon/kindle/tutorial/model/ActivationCallbackConfig;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 792
    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/ActivationCallbackConfig;->getTopic()Ljava/lang/String;

    move-result-object v1

    .line 793
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialStatusListenerMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_9

    const/4 v2, 0x0

    .line 796
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/tutorial/ITutorialStatusListener;

    .line 797
    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/tutorial/ITutorialStatusListener;->getLifecycleListener(Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    move-result-object v2

    if-eqz v2, :cond_7

    :cond_8
    if-eqz v2, :cond_9

    .line 803
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->forwardingLifecycleListener:Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->setUnderlyingListener(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;)V

    .line 804
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->forwardingLifecycleListener:Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;

    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->onTutorialShown()V

    .line 809
    :cond_9
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/ActivationConfig;->getActionsConfig()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 811
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/tutorial/model/ActionConfig;

    .line 812
    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/ActionConfig;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/ActionConfig;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->handleAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 816
    :cond_a
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/ActivationConfig;->getTriggerConfig()Lcom/amazon/kindle/tutorial/model/TriggerConfig;

    move-result-object p1

    .line 817
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "TutorialId"

    .line 818
    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TutorialType"

    .line 819
    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TriggerTopic"

    .line 820
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TriggerEvent"

    .line 821
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->getEvent()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    sget-object p1, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->SHOWN:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    .line 826
    :cond_b
    :try_start_5
    sget-object p1, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->NOT_SHOWN_INTERNAL_ERROR:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addActionHandler(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/actions/IActionHandler;)V
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialActionHandlerMap:Ljava/util/Map;

    monitor-enter v0

    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialActionHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialActionHandlerMap:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialActionHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addEventObserver(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;)V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicEventSourceMap:Ljava/util/Map;

    monitor-enter v0

    .line 454
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicEventSourceMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/tutorial/events/SimpleEventSource;

    if-nez v1, :cond_0

    .line 456
    new-instance v1, Lcom/amazon/kindle/krx/tutorial/events/SimpleEventSource;

    invoke-direct {v1}, Lcom/amazon/kindle/krx/tutorial/events/SimpleEventSource;-><init>()V

    .line 457
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicEventSourceMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    invoke-virtual {v1, p2}, Lcom/amazon/kindle/krx/tutorial/events/SimpleEventSource;->addObserver(Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;)V

    return-void

    :catchall_0
    move-exception p1

    .line 459
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addEventSource(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/IEventSource;)V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->observerMap:Ljava/util/Map;

    monitor-enter v0

    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->observerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;

    if-nez v1, :cond_0

    .line 427
    new-instance v1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$DispatchEventObserver;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$DispatchEventObserver;-><init>(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Ljava/lang/String;)V

    .line 428
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->observerMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_0
    invoke-interface {p2, v1}, Lcom/amazon/kindle/krx/tutorial/events/IEventSource;->addObserver(Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;)V

    .line 431
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addStatusListener(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/ITutorialStatusListener;)V
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialStatusListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 547
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialStatusListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialStatusListenerMap:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialStatusListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public broadcastEvent(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V
    .locals 2

    .line 505
    sget-boolean v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->utmEnabled:Z

    if-nez v0, :cond_0

    .line 506
    sget-object p1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p2}, Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "UTM is disabled. Ignoring trigger event: %s"

    invoke-static {p2, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->trace(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicEventSourceMap:Ljava/util/Map;

    monitor-enter v0

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicEventSourceMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/tutorial/events/SimpleEventSource;

    .line 513
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 515
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/krx/tutorial/events/SimpleEventSource;->notifyObservers(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 513
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public canShow(Lcom/amazon/kindle/tutorial/model/TutorialConfig;)Z
    .locals 6

    .line 874
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->displayCountManager:Lcom/amazon/kindle/tutorial/IDisplayCountManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 875
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object v0

    .line 876
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->displayCountManager:Lcom/amazon/kindle/tutorial/IDisplayCountManager;

    invoke-interface {v2, v0}, Lcom/amazon/kindle/tutorial/IDisplayCountManager;->getDisplayCount(Ljava/lang/String;)I

    move-result v2

    .line 878
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getDisplayCountLimit()I

    move-result p1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq p1, v3, :cond_0

    if-lt v2, p1, :cond_0

    .line 881
    sget-object v3, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    .line 882
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v0

    const-string p1, "Cannot show tutorial \'%s\' - has been shown %d times (max %d)."

    .line 881
    invoke-static {p1, v5}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    return v4

    .line 886
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->disabledJITIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;->getInstance()Lcom/amazon/kindle/tutorial/debug/InBookJITUtil;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/tutorial/debug/InBookJITUtil;->shouldRemoveInBookJIT()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 887
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->displayCountManager:Lcom/amazon/kindle/tutorial/IDisplayCountManager;

    invoke-interface {v1, v0, p1}, Lcom/amazon/kindle/tutorial/IDisplayCountManager;->setDisplayCount(Ljava/lang/String;I)V

    .line 888
    sget-object p1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const-string v0, "Don\'t show JIT due to JIT removal experiment. JIT will never show in the future"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    return v1
.end method

.method public deregisterTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V
    .locals 5

    .line 593
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->getTopic()Ljava/lang/String;

    move-result-object v0

    .line 594
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->providerMap:Ljava/util/Map;

    monitor-enter v1

    .line 595
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->providerMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->providerMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v2, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "De-registering tutorial provider with topic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 598
    invoke-virtual {p0, v0, v2}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->setConditionEvaluator(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator;)V

    .line 599
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->removeEventSource(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/IEventSource;)V

    .line 600
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->removeStatusListener(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/ITutorialStatusListener;)V

    .line 601
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->removeActionHandler(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/actions/IActionHandler;)V

    goto :goto_0

    .line 603
    :cond_0
    sget-object p1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const-string v2, "Attempt to de-register provider for topic %s which has no provider registered."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    .line 605
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method evaluateCondition(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 4

    .line 667
    sget-boolean v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->utmEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 668
    sget-object p2, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v2

    const-string p1, "UTM is disabled. Ignoring trigger event: %s"

    invoke-static {p1, p3}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->trace(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    return v2

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicConditionEvaluatorMap:Ljava/util/Map;

    monitor-enter v0

    .line 674
    :try_start_0
    iget-object v3, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicConditionEvaluatorMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator;

    .line 675
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    aput-object p3, v0, v1

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const-string p2, "evaluateCondition(\"%s\",\"%s\",\"%s\")"

    .line 678
    invoke-static {p2, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p2

    .line 681
    :try_start_1
    invoke-interface {v3, p1, p3, p4, p5}, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator;->evaluate(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1
    :try_end_1
    .catch Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 683
    sget-object p3, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p2, p4, v2

    const-string p2, "Could not perform comparison for %s"

    invoke-static {p2, p4}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p2

    invoke-static {p3, p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 686
    :cond_1
    sget-object p1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v2

    const-string p2, "No evaluator set for topic %s! Returning false."

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    :goto_0
    return v2

    :catchall_0
    move-exception p1

    .line 675
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getCurrentLifecycleListener()Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->forwardingLifecycleListener:Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;

    return-object v0
.end method

.method public handleAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 645
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialActionHandlerMap:Ljava/util/Map;

    monitor-enter v0

    .line 646
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialActionHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 647
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 649
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/tutorial/actions/IActionHandler;

    .line 650
    invoke-interface {v0, p2}, Lcom/amazon/kindle/krx/tutorial/actions/IActionHandler;->handleAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 647
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isAlreadyShown(Lcom/amazon/kindle/tutorial/model/TutorialConfig;)Z
    .locals 3

    .line 1120
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->displayCountManager:Lcom/amazon/kindle/tutorial/IDisplayCountManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1121
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->migrateDisplayCount(Lcom/amazon/kindle/tutorial/IDisplayCountManager;Ljava/lang/String;)I

    move-result v0

    .line 1122
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getDisplayCountLimit()I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    if-lt v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isAlreadyShown(Ljava/lang/String;)Z
    .locals 2

    .line 1137
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->displayCountManager:Lcom/amazon/kindle/tutorial/IDisplayCountManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1138
    invoke-interface {v0, p1}, Lcom/amazon/kindle/tutorial/IDisplayCountManager;->getDisplayCount(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method declared-synchronized loadConfiguration(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/tutorial/model/TutorialConfig;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 389
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const-string v1, "Loading tutorial configuration. UTM is %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-boolean v4, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->utmEnabled:Z

    if-eqz v4, :cond_0

    const-string v4, "On"

    goto :goto_0

    :cond_0
    const-string v4, "Off"

    :goto_0
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    .line 390
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialConfigList:Ljava/util/List;

    .line 391
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->registerTutorials(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized loadConfigurationFromContext(Landroid/content/Context;)V
    .locals 5

    monitor-enter p0

    .line 377
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const-string v1, "Reloading tutorial configuration. UTM is %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-boolean v4, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->utmEnabled:Z

    if-eqz v4, :cond_0

    const-string v4, "On"

    goto :goto_0

    :cond_0
    const-string v4, "Off"

    :goto_0
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    if-eqz p1, :cond_1

    .line 379
    invoke-static {p1}, Lcom/amazon/kindle/tutorial/TutorialConfigLoader;->getTutorialConfiguration(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 380
    :goto_1
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->loadConfiguration(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerCustomTutorialHandler(Lcom/amazon/kindle/krx/tutorial/ICustomTutorialHandler;)V
    .locals 5

    .line 618
    invoke-interface {p1}, Lcom/amazon/kindle/krx/tutorial/ICustomTutorialHandler;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 619
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->customTutorialHandlerMap:Ljava/util/Map;

    monitor-enter v1

    .line 620
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->customTutorialHandlerMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 621
    sget-object p1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const-string v2, "Attempt to register handler for key %s which already has a handler registered"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    goto :goto_0

    .line 624
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->customTutorialHandlerMap:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    sget-object p1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering custom tutorial handler with key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V
    .locals 5

    .line 570
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->getTopic()Ljava/lang/String;

    move-result-object v0

    .line 571
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->providerMap:Ljava/util/Map;

    monitor-enter v1

    .line 572
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->providerMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 573
    sget-object p1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const-string v2, "Attempt to register provider for topic %s which already has a provider registered"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    goto :goto_0

    .line 575
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->providerMap:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    sget-object v2, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registering tutorial provider with topic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->setConditionEvaluator(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator;)V

    .line 578
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->addEventSource(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/IEventSource;)V

    .line 579
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->addStatusListener(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/ITutorialStatusListener;)V

    .line 580
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->addActionHandler(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/actions/IActionHandler;)V

    .line 582
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeActionHandler(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/actions/IActionHandler;)V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialActionHandlerMap:Ljava/util/Map;

    monitor-enter v0

    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialActionHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 490
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 492
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeEventSource(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/IEventSource;)V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->observerMap:Ljava/util/Map;

    monitor-enter v0

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->observerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;

    if-eqz p1, :cond_0

    .line 439
    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/tutorial/events/IEventSource;->removeObserver(Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;)V

    .line 441
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeStatusListener(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/ITutorialStatusListener;)V
    .locals 1

    .line 555
    iget-object p2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialStatusListenerMap:Ljava/util/Map;

    monitor-enter p2

    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialStatusListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method declared-synchronized resetAllDisplayCount()V
    .locals 4

    monitor-enter p0

    .line 860
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->displayCountManager:Lcom/amazon/kindle/tutorial/IDisplayCountManager;

    if-eqz v0, :cond_0

    .line 862
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialConfigList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    .line 863
    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/tutorial/IDisplayCountManager;->setDisplayCount(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 866
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetDisplayCount(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 845
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    sget-object v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resetting display count to 0 for tutorial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->displayCountManager:Lcom/amazon/kindle/tutorial/IDisplayCountManager;

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->displayCountManager:Lcom/amazon/kindle/tutorial/IDisplayCountManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/tutorial/IDisplayCountManager;->setDisplayCount(Ljava/lang/String;I)V

    goto :goto_0

    .line 851
    :cond_0
    sget-object p1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const-string v0, "Cannot reset tutorial display count - provided id was null/empty."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method sendTutorialStatusUpdate(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Lcom/amazon/kindle/krx/tutorial/TutorialStatus;)V
    .locals 2

    .line 1012
    sget-boolean v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->utmEnabled:Z

    if-nez v0, :cond_0

    .line 1013
    sget-object p1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-interface {p3}, Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, p4

    const-string p3, "UTM is disabled. Ignoring trigger event: %s"

    invoke-static {p3, p2}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->trace(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    return-void

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialStatusListenerMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1019
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/tutorial/ITutorialStatusListener;

    .line 1020
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/amazon/kindle/krx/tutorial/ITutorialStatusListener;->onTutorialStatus(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Lcom/amazon/kindle/krx/tutorial/TutorialStatus;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setConditionEvaluator(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator;)V
    .locals 4

    .line 529
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicConditionEvaluatorMap:Ljava/util/Map;

    monitor-enter v0

    .line 530
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->topicConditionEvaluatorMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 532
    sget-object p2, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const-string v1, "Overwriting condition evaluator for topic %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    .line 534
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method showTutorialById(Ljava/lang/String;)V
    .locals 3

    .line 707
    sget-object v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to show tutorial for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialConfigList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    .line 710
    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 717
    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getActivationConfigs()Ljava/util/List;

    move-result-object p1

    .line 718
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 719
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/tutorial/model/ActivationConfig;

    .line 720
    new-instance v0, Lcom/amazon/kindle/tutorial/model/ActivationInstance;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/tutorial/model/ActivationInstance;-><init>(Lcom/amazon/kindle/tutorial/model/ActivationConfig;Lcom/amazon/kindle/tutorial/model/TutorialConfig;)V

    .line 721
    invoke-direct {p0, v0}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->showTutorial(Lcom/amazon/kindle/tutorial/model/ActivationInstance;)Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    goto :goto_1

    .line 723
    :cond_2
    sget-object p1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    const-string v0, "Could not show tutorial - no activation configurations found."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 726
    :cond_3
    sget-object v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot show tutorial - could not get by id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public wasShownThisLifeCycle(Ljava/lang/String;)Z
    .locals 1

    .line 1151
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->tutorialsShownThisLifeCycle:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
