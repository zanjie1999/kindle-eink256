.class public Lcom/amazon/kindle/tutorial/EventActivationResolver;
.super Ljava/lang/Object;
.source "EventActivationResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/tutorial/EventActivationResolver$EvaluationTask;
    }
.end annotation


# static fields
.field private static final EVALUTATE_TIMEOUT:J = 0xfaL

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;


# instance fields
.field private activations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/tutorial/model/ActivationInstance;",
            ">;"
        }
    .end annotation
.end field

.field private final factory:Lcom/amazon/kcp/application/IKindleObjectFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/kindle/tutorial/EventActivationResolver;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/EventActivationResolver;->TAG:Ljava/lang/String;

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/amazon/kindle/tutorial/EventActivationResolver;->TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kcp/application/IKindleObjectFactory;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/EventActivationResolver;->activations:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/EventActivationResolver;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/kindle/tutorial/EventActivationResolver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private hasRequiredResources(Lcom/amazon/kindle/tutorial/model/ActivationInstance;)Z
    .locals 3

    .line 133
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->getTutorialConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->isRemoteResourceDependent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/EventActivationResolver;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 136
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->getTutorialConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getAppExpanResourceSetMetadata()Lcom/amazon/kindle/tutorial/model/AppExpanResourceSetMetadata;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/tutorial/EventActivationResolver;->isAppExpanResourceSetAvailable(Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;Lcom/amazon/kindle/tutorial/model/AppExpanResourceSetMetadata;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method private static isAppExpanResourceSetAvailable(Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;Lcom/amazon/kindle/tutorial/model/AppExpanResourceSetMetadata;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/AppExpanResourceSetMetadata;->getResourceSetName()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/AppExpanResourceSetMetadata;->getResourceSetVersion()I

    move-result p1

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;->isResourceSetLocal(Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public declared-synchronized addActivationInstance(Lcom/amazon/kindle/tutorial/model/ActivationInstance;)V
    .locals 1

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/EventActivationResolver;->activations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resolveActivations(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Lcom/amazon/kindle/tutorial/AndroidTutorialManager;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/tutorial/AndroidTutorialManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/tutorial/model/ActivationInstance;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 85
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolving eligible tutorials for event. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/tutorial/EventActivationResolver;->activations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " activation configs to process."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/EventActivationResolver;->activations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/tutorial/model/ActivationInstance;

    const-string v6, "Adding \'%s\' to list of evaluation tasks"

    new-array v5, v5, [Ljava/lang/Object;

    .line 91
    invoke-virtual {v3}, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->getTutorialConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-static {v6, v5}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 92
    new-instance v4, Lcom/amazon/kindle/tutorial/EventActivationResolver$EvaluationTask;

    invoke-direct {v4, v3, p1, p3}, Lcom/amazon/kindle/tutorial/EventActivationResolver$EvaluationTask;-><init>(Lcom/amazon/kindle/tutorial/model/ActivationInstance;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Lcom/amazon/kindle/tutorial/AndroidTutorialManager;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v2

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, 0xfa

    .line 99
    :try_start_1
    sget-object v8, Lcom/amazon/kindle/tutorial/EventActivationResolver;->TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v1, v6, v7, v8}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 101
    :try_start_2
    sget-object v2, Lcom/amazon/kindle/tutorial/EventActivationResolver;->TAG:Ljava/lang/String;

    const-string v6, "Thread was interrupted waiting for tasks to complete."

    invoke-static {v2, v6, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_1
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :try_start_3
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/tutorial/model/ActivationInstance;

    if-eqz v2, :cond_1

    .line 109
    invoke-direct {p0, v2}, Lcom/amazon/kindle/tutorial/EventActivationResolver;->hasRequiredResources(Lcom/amazon/kindle/tutorial/model/ActivationInstance;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Condition was met. Adding %s to eligible tutorials."

    new-array v6, v5, [Ljava/lang/Object;

    .line 110
    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->getTutorialConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v6}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 111
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-string v3, "%s has resources which are not yet ready!! Maybe next time!"

    new-array v6, v5, [Ljava/lang/Object;

    .line 113
    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->getTutorialConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v6}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 114
    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->getTutorialConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->NOT_SHOWN_RESOURCE_NOT_READY:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    invoke-virtual {p3, v2, p2, p1, v3}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->sendTutorialStatusUpdate(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Lcom/amazon/kindle/krx/tutorial/TutorialStatus;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v2

    .line 122
    :try_start_4
    sget-object v3, Lcom/amazon/kindle/tutorial/EventActivationResolver;->TAG:Ljava/lang/String;

    const-string v6, "Exception thrown during evaluate()"

    invoke-static {v3, v6, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 125
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
