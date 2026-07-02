.class public Lcom/google/firebase/FirebaseApp;
.super Ljava/lang/Object;
.source "FirebaseApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/FirebaseApp$UiExecutor;,
        Lcom/google/firebase/FirebaseApp$GlobalBackgroundStateListener;,
        Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;,
        Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;
    }
.end annotation


# static fields
.field private static final FIREBASE_ANDROID:Ljava/lang/String; = "fire-android"

.field private static final FIREBASE_COMMON:Ljava/lang/String; = "fire-core"

.field static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/FirebaseApp;",
            ">;"
        }
    .end annotation
.end field

.field private static final KOTLIN:Ljava/lang/String; = "kotlin"

.field private static final LOCK:Ljava/lang/Object;

.field private static final LOG_TAG:Ljava/lang/String; = "FirebaseApp"

.field private static final UI_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final automaticResourceManagementEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final backgroundStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final componentRuntime:Lcom/google/firebase/components/ComponentRuntime;

.field private final dataCollectionConfigStorage:Lcom/google/firebase/components/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/Lazy<",
            "Lcom/google/firebase/internal/DataCollectionConfigStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final deleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lifecycleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final options:Lcom/google/firebase/FirebaseOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/FirebaseApp;->LOCK:Ljava/lang/Object;

    .line 97
    new-instance v0, Lcom/google/firebase/FirebaseApp$UiExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/FirebaseApp$UiExecutor;-><init>(Lcom/google/firebase/FirebaseApp$1;)V

    sput-object v0, Lcom/google/firebase/FirebaseApp;->UI_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 101
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/firebase/FirebaseApp;->INSTANCES:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/FirebaseOptions;)V
    .locals 3

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/FirebaseApp;->automaticResourceManagementEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/FirebaseApp;->deleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 118
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/FirebaseApp;->backgroundStateChangeListeners:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/FirebaseApp;->lifecycleListeners:Ljava/util/List;

    .line 412
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/firebase/FirebaseApp;->applicationContext:Landroid/content/Context;

    .line 413
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/FirebaseApp;->name:Ljava/lang/String;

    .line 414
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p3

    check-cast p2, Lcom/google/firebase/FirebaseOptions;

    iput-object p2, p0, Lcom/google/firebase/FirebaseApp;->options:Lcom/google/firebase/FirebaseOptions;

    .line 416
    const-class p2, Lcom/google/firebase/components/ComponentDiscoveryService;

    .line 417
    invoke-static {p1, p2}, Lcom/google/firebase/components/ComponentDiscovery;->forContext(Landroid/content/Context;Ljava/lang/Class;)Lcom/google/firebase/components/ComponentDiscovery;

    move-result-object p2

    .line 418
    invoke-virtual {p2}, Lcom/google/firebase/components/ComponentDiscovery;->discoverLazy()Ljava/util/List;

    move-result-object p2

    .line 420
    sget-object v0, Lcom/google/firebase/FirebaseApp;->UI_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 421
    invoke-static {v0}, Lcom/google/firebase/components/ComponentRuntime;->builder(Ljava/util/concurrent/Executor;)Lcom/google/firebase/components/ComponentRuntime$Builder;

    move-result-object v0

    .line 422
    invoke-virtual {v0, p2}, Lcom/google/firebase/components/ComponentRuntime$Builder;->addLazyComponentRegistrars(Ljava/util/Collection;)Lcom/google/firebase/components/ComponentRuntime$Builder;

    new-instance p2, Lcom/google/firebase/FirebaseCommonRegistrar;

    invoke-direct {p2}, Lcom/google/firebase/FirebaseCommonRegistrar;-><init>()V

    .line 423
    invoke-virtual {v0, p2}, Lcom/google/firebase/components/ComponentRuntime$Builder;->addComponentRegistrar(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRuntime$Builder;

    const-class p2, Landroid/content/Context;

    new-array v2, v1, [Ljava/lang/Class;

    .line 424
    invoke-static {p1, p2, v2}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/firebase/components/ComponentRuntime$Builder;->addComponent(Lcom/google/firebase/components/Component;)Lcom/google/firebase/components/ComponentRuntime$Builder;

    const-class p2, Lcom/google/firebase/FirebaseApp;

    new-array v2, v1, [Ljava/lang/Class;

    .line 425
    invoke-static {p0, p2, v2}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/firebase/components/ComponentRuntime$Builder;->addComponent(Lcom/google/firebase/components/Component;)Lcom/google/firebase/components/ComponentRuntime$Builder;

    const-class p2, Lcom/google/firebase/FirebaseOptions;

    new-array v1, v1, [Ljava/lang/Class;

    .line 426
    invoke-static {p3, p2, v1}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/firebase/components/ComponentRuntime$Builder;->addComponent(Lcom/google/firebase/components/Component;)Lcom/google/firebase/components/ComponentRuntime$Builder;

    .line 427
    invoke-virtual {v0}, Lcom/google/firebase/components/ComponentRuntime$Builder;->build()Lcom/google/firebase/components/ComponentRuntime;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/FirebaseApp;->componentRuntime:Lcom/google/firebase/components/ComponentRuntime;

    .line 429
    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance p3, Lcom/google/firebase/-$$Lambda$FirebaseApp$g2HBDSvWXpy9ytXuN68VN_QnBHQ;

    invoke-direct {p3, p0, p1}, Lcom/google/firebase/-$$Lambda$FirebaseApp$g2HBDSvWXpy9ytXuN68VN_QnBHQ;-><init>(Lcom/google/firebase/FirebaseApp;Landroid/content/Context;)V

    invoke-direct {p2, p3}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/firebase/FirebaseApp;->dataCollectionConfigStorage:Lcom/google/firebase/components/Lazy;

    return-void
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .line 89
    sget-object v0, Lcom/google/firebase/FirebaseApp;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/firebase/FirebaseApp;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->initializeAllApis()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firebase/FirebaseApp;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/google/firebase/FirebaseApp;->automaticResourceManagementEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/firebase/FirebaseApp;Z)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/google/firebase/FirebaseApp;->notifyBackgroundStateChangeListeners(Z)V

    return-void
.end method

.method private checkNotDeleted()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->deleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "FirebaseApp was deleted"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/FirebaseApp;
    .locals 4

    .line 177
    sget-object v0, Lcom/google/firebase/FirebaseApp;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    sget-object v1, Lcom/google/firebase/FirebaseApp;->INSTANCES:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/FirebaseApp;

    if-eqz v1, :cond_0

    .line 187
    monitor-exit v0

    return-object v1

    .line 180
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default FirebaseApp is not initialized in this process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {}, Lcom/google/android/gms/common/util/ProcessUtils;->getMyProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Make sure to call FirebaseApp.initializeApp(Context) first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initializeAllApis()V
    .locals 3

    .line 574
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "FirebaseApp"

    if-eqz v0, :cond_0

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 576
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;->access$200(Landroid/content/Context;)V

    goto :goto_0

    .line 583
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device unlocked: initializing all Firebase APIs for app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->componentRuntime:Lcom/google/firebase/components/ComponentRuntime;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->isDefaultApp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/ComponentRuntime;->initializeEagerComponents(Z)V

    :goto_0
    return-void
.end method

.method public static initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;
    .locals 3

    .line 239
    sget-object v0, Lcom/google/firebase/FirebaseApp;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    sget-object v1, Lcom/google/firebase/FirebaseApp;->INSTANCES:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 243
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/FirebaseOptions;->fromResource(Landroid/content/Context;)Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "FirebaseApp"

    const-string v1, "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project."

    .line 245
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 250
    monitor-exit v0

    return-object p0

    .line 252
    :cond_1
    invoke-static {p0, v1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;)Lcom/google/firebase/FirebaseApp;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 253
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;)Lcom/google/firebase/FirebaseApp;
    .locals 1

    const-string v0, "[DEFAULT]"

    .line 267
    invoke-static {p0, p1, v0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object p0

    return-object p0
.end method

.method public static initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;
    .locals 4

    .line 283
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp$GlobalBackgroundStateListener;->access$100(Landroid/content/Context;)V

    .line 284
    invoke-static {p2}, Lcom/google/firebase/FirebaseApp;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 293
    :goto_0
    sget-object v0, Lcom/google/firebase/FirebaseApp;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_0
    sget-object v1, Lcom/google/firebase/FirebaseApp;->INSTANCES:Ljava/util/Map;

    .line 295
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirebaseApp name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already exists!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v1, "Application context cannot be null."

    .line 298
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v1, Lcom/google/firebase/FirebaseApp;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/firebase/FirebaseApp;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/FirebaseOptions;)V

    .line 300
    sget-object p0, Lcom/google/firebase/FirebaseApp;->INSTANCES:Ljava/util/Map;

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-direct {v1}, Lcom/google/firebase/FirebaseApp;->initializeAllApis()V

    return-object v1

    :catchall_0
    move-exception p0

    .line 301
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 590
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private notifyBackgroundStateChangeListeners(Z)V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->backgroundStateChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;

    .line 459
    invoke-interface {v1, p1}, Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;->onBackgroundStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 146
    instance-of v0, p1, Lcom/google/firebase/FirebaseApp;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->name:Ljava/lang/String;

    check-cast p1, Lcom/google/firebase/FirebaseApp;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 335
    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->checkNotDeleted()V

    .line 336
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->componentRuntime:Lcom/google/firebase/components/ComponentRuntime;

    invoke-virtual {v0, p1}, Lcom/google/firebase/components/ComponentRuntime;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->checkNotDeleted()V

    .line 127
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 133
    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->checkNotDeleted()V

    .line 134
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Lcom/google/firebase/FirebaseOptions;
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->checkNotDeleted()V

    .line 141
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->options:Lcom/google/firebase/FirebaseOptions;

    return-object v0
.end method

.method public getPersistenceKey()Ljava/lang/String;
    .locals 3

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/Base64Utils;->encodeUrlSafeNoPadding([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 504
    invoke-static {v1}, Lcom/google/android/gms/common/util/Base64Utils;->encodeUrlSafeNoPadding([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDataCollectionDefaultEnabled()Z
    .locals 1

    .line 373
    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->checkNotDeleted()V

    .line 374
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->dataCollectionConfigStorage:Lcom/google/firebase/components/Lazy;

    invoke-virtual {v0}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/internal/DataCollectionConfigStorage;

    invoke-virtual {v0}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isDefaultApp()Z
    .locals 2

    .line 446
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DEFAULT]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$FirebaseApp(Landroid/content/Context;)Lcom/google/firebase/internal/DataCollectionConfigStorage;
    .locals 4

    .line 432
    new-instance v0, Lcom/google/firebase/internal/DataCollectionConfigStorage;

    .line 434
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/FirebaseApp;->componentRuntime:Lcom/google/firebase/components/ComponentRuntime;

    const-class v3, Lcom/google/firebase/events/Publisher;

    .line 435
    invoke-virtual {v2, v3}, Lcom/google/firebase/components/ComponentRuntime;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/events/Publisher;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/firebase/internal/DataCollectionConfigStorage;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/events/Publisher;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 159
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/FirebaseApp;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/google/firebase/FirebaseApp;->options:Lcom/google/firebase/FirebaseOptions;

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
