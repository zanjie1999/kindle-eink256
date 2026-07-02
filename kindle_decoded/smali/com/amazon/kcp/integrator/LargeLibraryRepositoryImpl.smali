.class public final Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;
.super Ljava/lang/Object;
.source "LargeLibraryRepositoryImpl.kt"

# interfaces
.implements Lcom/amazon/kcp/integrator/LargeLibraryRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$AudibleBroadcastReceiver;,
        Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kcp/integrator/LargeLibraryRepository<",
        "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
        ">;",
        "Ljava/lang/Object<",
        "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
        ">;",
        "Ljava/lang/Object<",
        "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLargeLibraryRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LargeLibraryRepositoryImpl.kt\ncom/amazon/kcp/integrator/LargeLibraryRepositoryImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 UniqueDiscoveryUtils.kt\ncom/amazon/kcp/util/UniqueDiscoveryUtilsKt\n*L\n1#1,554:1\n1517#2:555\n1588#2,3:556\n12#3:559\n*E\n*S KotlinDebug\n*F\n+ 1 LargeLibraryRepositoryImpl.kt\ncom/amazon/kcp/integrator/LargeLibraryRepositoryImpl\n*L\n207#1:555\n207#1,3:556\n92#1:559\n*E\n"
.end annotation


# static fields
.field private static final EBOOK_ASINS:Ljava/lang/String; = "EBOOK_ASINS"

.field private static final INTENT_ACTION_COMPANION_ADD:Ljava/lang/String; = "com.audible.hushpuppy.action.COMPANION_ADDED"

.field private static final INTENT_ACTION_COMPANION_DELETE:Ljava/lang/String; = "com.audible.hushpuppy.action.COMPANION_DELETED"

.field private static hasSeenAudibleContent:Z


# instance fields
.field private final currentlySyncing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final downloadedBooks:Lcom/amazon/kcp/library/models/ConcurrentHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/library/models/ConcurrentHashSet<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadingBooks:Lcom/amazon/kcp/library/models/ConcurrentHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/library/models/ConcurrentHashSet<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;"
        }
    .end annotation
.end field

.field private final groupService:Lcom/amazon/kindle/content/IGroupService;

.field private final integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

.field private final integratorThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private final mainThreadHandler:Landroid/os/Handler;

.field private final modelThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private final narrativeCache$delegate:Lkotlin/Lazy;

.field private final repository:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

.field private final seriesIntegrator:Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->mainThreadHandler:Landroid/os/Handler;

    .line 75
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integratorThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 76
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->modelThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 83
    sget-object v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$narrativeCache$2;->INSTANCE:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$narrativeCache$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->narrativeCache$delegate:Lkotlin/Lazy;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->currentlySyncing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "factory"

    .line 89
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v1

    const-string v2, "factory.groupService"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->groupService:Lcom/amazon/kindle/content/IGroupService;

    .line 90
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    const-string v3, "factory.libraryService"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 559
    const-class v1, Lcom/amazon/kcp/integrator/ContentFilterProvider;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    .line 92
    check-cast v1, Lcom/amazon/kcp/integrator/ContentFilterProvider;

    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v1}, Lcom/amazon/kcp/integrator/ContentFilterProvider;->default()Lcom/amazon/kindle/observablemodel/ContentFilter;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 94
    :goto_0
    new-instance v4, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    iget-object v5, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->modelThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/amazon/kindle/observablemodel/LibraryRepository;

    iget-object v7, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->mainThreadHandler:Landroid/os/Handler;

    invoke-direct {v6, v7, v3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;-><init>(Landroid/os/Handler;Lcom/amazon/kindle/observablemodel/ContentFilter;)V

    invoke-direct {v4, v5, v6}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/amazon/kindle/observablemodel/LibraryRepository;)V

    iput-object v4, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->repository:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    if-eqz v1, :cond_1

    .line 98
    invoke-interface {v1}, Lcom/amazon/kcp/integrator/ContentFilterProvider;->getStringSortMode()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->setStringCompareMode(I)V

    .line 102
    :cond_1
    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;

    iget-object v3, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integratorThreadExecutor:Ljava/util/concurrent/ExecutorService;

    const-string v4, "integratorThreadExecutor"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    iget-object v5, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->repository:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    iget-object v6, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->currentlySyncing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v5, v0, v2, v6}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;-><init>(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/content/IGroupService;Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-direct {v1, v3, v4}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)V

    iput-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    .line 103
    new-instance v0, Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegratorImpl;

    invoke-direct {v0}, Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegratorImpl;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->seriesIntegrator:Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegrator;

    .line 111
    new-instance v0, Lcom/amazon/kcp/library/models/ConcurrentHashSet;

    invoke-direct {v0}, Lcom/amazon/kcp/library/models/ConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->downloadingBooks:Lcom/amazon/kcp/library/models/ConcurrentHashSet;

    .line 119
    new-instance v0, Lcom/amazon/kcp/library/models/ConcurrentHashSet;

    invoke-direct {v0}, Lcom/amazon/kcp/library/models/ConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->downloadedBooks:Lcom/amazon/kcp/library/models/ConcurrentHashSet;

    .line 122
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v2, "Utils.getFactory().authenticationManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 123
    invoke-direct {p0, v0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->handleCredentialsChanged(Z)V

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->repository:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->setIntegrator(Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;)V

    .line 128
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.audible.hushpuppy.action.COMPANION_ADDED"

    .line 131
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.audible.hushpuppy.action.COMPANION_DELETED"

    .line 132
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Utils.getFactory().context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$AudibleBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$AudibleBroadcastReceiver;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static final synthetic access$getDownloadedBooks$p(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;)Lcom/amazon/kcp/library/models/ConcurrentHashSet;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->downloadedBooks:Lcom/amazon/kcp/library/models/ConcurrentHashSet;

    return-object p0
.end method

.method public static final synthetic access$getHasSeenAudibleContent$cp()Z
    .locals 1

    .line 62
    sget-boolean v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->hasSeenAudibleContent:Z

    return v0
.end method

.method public static final synthetic access$getIntegrator$p(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;)Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    return-object p0
.end method

.method public static final synthetic access$getLibraryService$p(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;)Lcom/amazon/kindle/content/ILibraryService;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-object p0
.end method

.method public static final synthetic access$getMainThreadHandler$p(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;)Landroid/os/Handler;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->mainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$setHasSeenAudibleContent$cp(Z)V
    .locals 0

    .line 62
    sput-boolean p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->hasSeenAudibleContent:Z

    return-void
.end method

.method private final currentAccountId()Ljava/lang/String;
    .locals 2

    .line 514
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v1, "Utils.getFactory().authenticationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    const-string v1, "Utils.getFactory().authe\u2026cationManager.accountInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getFactory().authe\u2026ionManager.accountInfo.id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getNarrativeCache()Lcom/amazon/kcp/library/NarrativeDataCache;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->narrativeCache$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/NarrativeDataCache;

    return-object v0
.end method

.method private final handleBooksAddedToDownloading(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->downloadingBooks:Lcom/amazon/kcp/library/models/ConcurrentHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final handleBooksRemovedFromDownloading(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->downloadingBooks:Lcom/amazon/kcp/library/models/ConcurrentHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final handleCredentialsChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 523
    sput-boolean v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->hasSeenAudibleContent:Z

    if-eqz p1, :cond_0

    .line 526
    invoke-direct {p0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->currentAccountId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 528
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->getNarrativeCache()Lcom/amazon/kcp/library/NarrativeDataCache;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/NarrativeDataCache;->clear()V

    .line 529
    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {v1, v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleCurrentAccountChange(Ljava/lang/String;Z)V

    return-void
.end method

.method private final refreshBooksDownloaded()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->downloadingBooks:Lcom/amazon/kcp/library/models/ConcurrentHashSet;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->downloadedBooks:Lcom/amazon/kcp/library/models/ConcurrentHashSet;

    invoke-virtual {v1, v0}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    .line 242
    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {v1, v0}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleBooksDownloadStateDidChange(Ljava/util/Set;)V

    .line 244
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->downloadingBooks:Lcom/amazon/kcp/library/models/ConcurrentHashSet;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/ConcurrentHashSet;->clear()V

    return-void
.end method


# virtual methods
.method public handleBookRemovedFromDownloaded(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 1

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleBooksDownloadStateDidChange(Ljava/util/Set;)V

    return-void
.end method

.method public handleBooksAddedToCollection(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectionId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleBooksAddedToCollection(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public handleBooksAddedToSeries(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleBooksAddedToSeries(Ljava/util/Set;)V

    return-void
.end method

.method public handleBooksOrderingChangedInCollection(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectionId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleBooksOrderingChangedInCollection(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public handleBooksReadingStateDidChange(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleBooksReadingStateDidChange(Ljava/util/Set;)V

    return-void
.end method

.method public handleBooksRemoved(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->handleBooksRemovedFromDownloading(Ljava/util/Set;)V

    .line 223
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleBooksRemoved(Ljava/util/Set;)V

    return-void
.end method

.method public handleBooksRemovedFromCollection(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectionId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleBooksRemovedFromCollection(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public handleBooksRemovedFromSeries(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleBooksRemovedFromSeries(Ljava/util/Set;)V

    return-void
.end method

.method public handleCollectionAdded(Ljava/lang/String;)V
    .locals 1

    const-string v0, "collectionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleCollectionAdded(Ljava/lang/String;)V

    return-void
.end method

.method public handleCollectionNameChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "collectionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleCollectionNameChanged(Ljava/lang/String;)V

    return-void
.end method

.method public handleCollectionRemoved(Ljava/lang/String;)V
    .locals 1

    const-string v0, "collectionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleCollectionRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public handleContentUpdates(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    .line 555
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 556
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 557
    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 207
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleBooksAdded(Ljava/util/Set;)V

    return-void
.end method

.method public handleFalkorDataSetChange(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleBooksAdded(Ljava/util/Set;)V

    return-void
.end method

.method public handleNarrativesAdded(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "narrativeIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleNarrativesAdded(Ljava/util/Set;)V

    return-void
.end method

.method public handleNarrativesRemoved(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "narrativeIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleNarrativesRemoved(Ljava/util/Set;)V

    return-void
.end method

.method public handleSeriesAdded(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "seriesIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleSeriesAdded(Ljava/util/Set;)V

    return-void
.end method

.method public handleSeriesAddedToNarratives(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "seriesIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleSeriesAddedToNarratives(Ljava/util/Set;)V

    return-void
.end method

.method public handleSeriesRemoved(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "seriesIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleSeriesRemoved(Ljava/util/Set;)V

    return-void
.end method

.method public final isFirstBatchFlushed()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {v0}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->isFirstBatchFlushed()Z

    move-result v0

    return v0
.end method

.method public final modifyPresentationAndCountListeners(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
    .locals 8

    const-string/jumbo v0, "presentationChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerCountListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelContent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelFilter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelSorting"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->repository:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->modifyPresentationAndCountListeners(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    return-void
.end method

.method public final onAudioMetadataProviderRegisterEvent(Lcom/amazon/kindle/krx/ui/AudioBookMetadataProviderRegisterEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    iget-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleAudiblePluginInitialized()V

    return-void
.end method

.method public final onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 398
    invoke-direct {p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->handleCredentialsChanged(Z)V

    goto :goto_0

    .line 397
    :cond_2
    invoke-direct {p0, v0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->handleCredentialsChanged(Z)V

    :goto_0
    return-void
.end method

.method public final onContentUpdate(Ljava/util/Collection;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_UPDATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "updates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 467
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentUpdate;

    .line 468
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getUpdatedFields()Ljava/util/Set;

    move-result-object v2

    .line 469
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 471
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    const-string/jumbo v2, "metadata.bookID"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 477
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 478
    iget-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleIsInCarouselChanged(Ljava/util/Set;)V

    :cond_2
    return-void
.end method

.method public final onDownloadStateUpdate(Lcom/amazon/kindle/services/download/IDownloadService$KRXDownloadStateUpdateEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string/jumbo v0, "stateUpdateEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$KRXDownloadStateUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object v0

    const-string/jumbo v1, "stateUpdateEvent.download"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 413
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$KRXDownloadStateUpdateEvent;->getDownloadState()Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 430
    :pswitch_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "bookId.first()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->handleBookRemovedFromDownloaded(Lcom/amazon/kindle/model/content/IBookID;)V

    goto :goto_0

    .line 427
    :pswitch_1
    invoke-direct {p0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->refreshBooksDownloaded()V

    goto :goto_0

    .line 421
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->handleBooksAddedToDownloading(Ljava/util/Set;)V

    .line 422
    invoke-direct {p0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->refreshBooksDownloaded()V

    goto :goto_0

    .line 415
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->handleBooksRemovedFromDownloading(Ljava/util/Set;)V

    .line 416
    invoke-direct {p0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->refreshBooksDownloaded()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onLibraryActivatedEvent(Lcom/amazon/kindle/event/LibraryActivatedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->refreshAccessDates()V

    return-void
.end method

.method public final onReaderEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getType()Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "event.book"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getBook()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleBooksReadingStateDidChange(Ljava/util/Set;)V

    goto :goto_0

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->integrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getBook()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleBooksAccessDateDidChange(Ljava/util/Set;)V

    .line 443
    invoke-virtual {p0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->refreshAccessDates()V

    :goto_0
    return-void
.end method

.method public final onSyncMetadataEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;->getType()Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 497
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->currentlySyncing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 498
    iget-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->repository:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    invoke-virtual {p1}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->flushChanges()V

    goto :goto_0

    .line 492
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->currentlySyncing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 493
    iget-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->repository:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    invoke-virtual {p1}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->flushChanges()V

    :cond_3
    :goto_0
    return-void
.end method

.method public preloadCache()V
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->repository:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    invoke-direct {p0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->currentAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->preloadKnownLeaves(Ljava/lang/String;)V

    return-void
.end method

.method public refreshAccessDates()V
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$refreshAccessDates$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$refreshAccessDates$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final registerContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
    .locals 7

    const-string v0, "containerCountListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelContent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelFilter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelSorting"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->repository:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->registerContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    return-void
.end method

.method public final registerGroupListener(Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
    .locals 8

    const-string v0, "groupListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "group"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelContent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelFilter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelSorting"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->repository:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->registerGroupListener(Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    return-void
.end method

.method public final registerItemDetailListener(Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemID"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->repository:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->registerItemDetailListener(Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;)V

    return-void
.end method

.method public final registerPresentationAndCountListeners(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
    .locals 8

    const-string/jumbo v0, "presentationChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerCountListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelContent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelFilter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelSorting"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->repository:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->registerPresentationAndCountListeners(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    return-void
.end method

.method public final removeContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->repository:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->removeContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V

    return-void
.end method

.method public final removePresentationListener(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Ljava/lang/String;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->repository:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->removePresentationListener(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Ljava/lang/String;)V

    return-void
.end method

.method public retrieveLibraryItemByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/PeriodicalArguments;)Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 9

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "periodicalArguments"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 323
    invoke-direct {p0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->getNarrativeCache()Lcom/amazon/kcp/library/NarrativeDataCache;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/amazon/kcp/library/NarrativeDataCache;->getNarrativeDisplayItem(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->getNarrativeCache()Lcom/amazon/kcp/library/NarrativeDataCache;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kcp/library/NarrativeDataCache;->getNarrativeDisplayItem(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;

    move-result-object p1

    return-object p1

    .line 326
    :cond_0
    sget-object v0, Lcom/amazon/kcp/integrator/NarrativeHelper;->INSTANCE:Lcom/amazon/kcp/integrator/NarrativeHelper;

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/integrator/NarrativeHelper;->narrativeIDASIN(Lcom/amazon/kindle/observablemodel/ItemID;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "originTypes"

    if-eqz v0, :cond_2

    .line 328
    invoke-static {v0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "BookIdUtils.parse(ident)!!"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->groupService:Lcom/amazon/kindle/content/IGroupService;

    invoke-interface {p3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kindle/content/IGroupService;->getOriginTypesForNarrativeById(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 330
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->groupService:Lcom/amazon/kindle/content/IGroupService;

    invoke-interface {p3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Lcom/amazon/kindle/content/IGroupService;->getGroupTitleById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const-string p3, ""

    :goto_0
    move-object v6, p3

    .line 331
    new-instance p3, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;-><init>(Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;)V

    .line 332
    invoke-direct {p0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->getNarrativeCache()Lcom/amazon/kcp/library/NarrativeDataCache;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/amazon/kcp/library/NarrativeDataCache;->cacheNarrativeDisplayItem(Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;)V

    return-object p3

    .line 336
    :cond_2
    sget-object v0, Lcom/amazon/kcp/integrator/NarrativeHelper;->INSTANCE:Lcom/amazon/kcp/integrator/NarrativeHelper;

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/integrator/NarrativeHelper;->narrativeIDTitle(Lcom/amazon/kindle/observablemodel/ItemID;)Ljava/lang/String;

    move-result-object v5

    .line 337
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->groupService:Lcom/amazon/kindle/content/IGroupService;

    invoke-interface {v0, v5}, Lcom/amazon/kindle/content/IGroupService;->getOriginTypesForNarrativeByTitle(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v5, :cond_3

    .line 340
    new-instance p3, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;-><init>(Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;)V

    .line 341
    invoke-direct {p0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->getNarrativeCache()Lcom/amazon/kcp/library/NarrativeDataCache;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/amazon/kcp/library/NarrativeDataCache;->cacheNarrativeDisplayItem(Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;)V

    return-object p3

    .line 347
    :cond_3
    invoke-static {p2}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->itemIdToBookId(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    .line 349
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    const-string v1, "it"

    const/4 v2, 0x0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 p1, 0x2

    if-eq v0, p1, :cond_5

    .line 367
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 368
    iget-object p2, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->seriesIntegrator:Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegrator;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegrator;->updateContentWithSeriesData(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 369
    new-instance v2, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-direct {v2, p1}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    goto :goto_3

    .line 363
    :cond_5
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 364
    sget-object p2, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem;->Companion:Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem$Companion;

    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-virtual {p2, p1, v0, p3}, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem$Companion;->newDisplayItem(Ljava/lang/String;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/integrator/PeriodicalArguments;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v2

    goto :goto_3

    .line 351
    :cond_6
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->groupService:Lcom/amazon/kindle/content/IGroupService;

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/amazon/kindle/content/IGroupService;->getGroupMetadataWithItems(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 352
    iget-object v3, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->seriesIntegrator:Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegrator;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegrator;->persistGroupMetadata(Lcom/amazon/kindle/content/GroupMetadata;)V

    .line 353
    new-instance v1, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;

    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/GroupMetadata;Lcom/amazon/kindle/content/dao/LibraryDataCache;)V

    goto :goto_2

    :cond_7
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_8

    move-object v2, v1

    goto :goto_3

    .line 356
    :cond_8
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->groupService:Lcom/amazon/kindle/content/IGroupService;

    invoke-interface {v0, p2}, Lcom/amazon/kindle/content/IGroupService;->getGroupCoverBookId(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 358
    invoke-static {p2}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->bookIdToItemId(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->retrieveLibraryItemByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/PeriodicalArguments;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object p1

    move-object v2, p1

    :cond_9
    :goto_3
    return-object v2
.end method

.method public retrieveLibraryItemByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/integrator/LibraryModelFormula;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kcp/integrator/PeriodicalArguments;",
            "Lcom/amazon/kcp/integrator/ILibraryRetrievalListener<",
            "-",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "periodicalArguments"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v7, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public retrieveLibraryItemsByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Ljava/util/List;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/integrator/LibraryModelFormula;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Lcom/amazon/kcp/integrator/PeriodicalArguments;",
            "Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener<",
            "-",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "periodicalArguments"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v7, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemsByID$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemsByID$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Ljava/util/List;Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setStringFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stringFilterLeafDictionaryName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->repository:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->setStringFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final unregisterCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V
    .locals 1

    const-string v0, "countListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->repository:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->removeContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V

    return-void
.end method

.method public final unregisterGroupListener(Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Ljava/lang/String;)V
    .locals 1

    const-string v0, "groupListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->repository:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->removeGroupListener(Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Ljava/lang/String;)V

    return-void
.end method

.method public final unregisterItemDetailListener(Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;Lcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener<",
            "TT;>;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->repository:Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->unregisterItemDetailListener(Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;Lcom/amazon/kindle/observablemodel/ItemID;)V

    return-void
.end method
