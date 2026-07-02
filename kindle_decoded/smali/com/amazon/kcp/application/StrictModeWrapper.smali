.class public Lcom/amazon/kcp/application/StrictModeWrapper;
.super Ljava/lang/Object;
.source "StrictModeWrapper.java"


# static fields
.field private static final AMAZON_HEADER_PREFIX:Ljava/lang/String; = "com.amazon"

.field private static INSTANCE:Lcom/amazon/kcp/application/StrictModeWrapper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private volatile isPolicySet:Z

.field private volatile isStrictModeCrashEnabled:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/amazon/kcp/application/StrictModeWrapper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/StrictModeWrapper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/amazon/kcp/application/StrictModeWrapper;->isPolicySet:Z

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/amazon/kcp/application/StrictModeWrapper;->isStrictModeCrashEnabled:Z

    .line 32
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 33
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 36
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 37
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    .line 40
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 41
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/application/StrictModeWrapper;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kcp/application/StrictModeWrapper;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/kcp/application/StrictModeWrapper;
    .locals 2

    const-class v0, Lcom/amazon/kcp/application/StrictModeWrapper;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/application/StrictModeWrapper;->INSTANCE:Lcom/amazon/kcp/application/StrictModeWrapper;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/amazon/kcp/application/StrictModeWrapper;

    invoke-direct {v1}, Lcom/amazon/kcp/application/StrictModeWrapper;-><init>()V

    sput-object v1, Lcom/amazon/kcp/application/StrictModeWrapper;->INSTANCE:Lcom/amazon/kcp/application/StrictModeWrapper;

    .line 55
    :cond_0
    sget-object v1, Lcom/amazon/kcp/application/StrictModeWrapper;->INSTANCE:Lcom/amazon/kcp/application/StrictModeWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private postToMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 368
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 369
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 370
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 372
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 373
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized setPolicyDefault()V
    .locals 1

    monitor-enter p0

    .line 245
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kcp/application/StrictModeWrapper;->isPolicySet:Z

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 247
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 246
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/StrictModeWrapper;->setUiThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 250
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 251
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 250
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/StrictModeWrapper;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUiThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 348
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/kcp/application/StrictModeWrapper;->isPolicySet:Z

    .line 349
    new-instance v0, Lcom/amazon/kcp/application/StrictModeWrapper$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/application/StrictModeWrapper$3;-><init>(Lcom/amazon/kcp/application/StrictModeWrapper;Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/StrictModeWrapper;->postToMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 362
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/kcp/application/StrictModeWrapper;->isPolicySet:Z

    .line 363
    invoke-static {p1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 364
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StrictMode VM policy set "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
