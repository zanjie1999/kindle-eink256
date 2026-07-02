.class public Lcom/amazon/kcp/library/LibraryPlugin;
.super Ljava/lang/Object;
.source "LibraryPlugin.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibraryPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryPlugin.kt\ncom/amazon/kcp/library/LibraryPlugin\n+ 2 UniqueDiscoveryUtils.kt\ncom/amazon/kcp/util/UniqueDiscoveryUtilsKt\n*L\n1#1,140:1\n7#2:141\n7#2:142\n*E\n*S KotlinDebug\n*F\n+ 1 LibraryPlugin.kt\ncom/amazon/kcp/library/LibraryPlugin\n*L\n53#1:141\n138#1:142\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createActivityProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/library/ActivityProvider;
    .locals 1

    .line 111
    new-instance v0, Lcom/amazon/kcp/library/LibraryPlugin$createActivityProvider$1;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/library/LibraryPlugin$createActivityProvider$1;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0
.end method

.method private final getLibraryFilter()Lcom/amazon/kcp/library/ILibraryFilter;
    .locals 5

    .line 142
    const-class v0, Lcom/amazon/kcp/library/ILibraryFilterProvider;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/amazon/kcp/library/ILibraryFilterProvider;

    .line 138
    new-instance v0, Lcom/amazon/kcp/library/LibraryFilterContext;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryView;->FILTER:Lcom/amazon/kindle/krx/library/LibraryView;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3, v4}, Lcom/amazon/kcp/library/LibraryFilterContext;-><init>(Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v0}, Lcom/amazon/kcp/library/ILibraryFilterProvider;->provideLibraryFilter(Lcom/amazon/kcp/library/LibraryFilterContext;)Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Must implement discoverable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final initializeCollections()V
    .locals 2

    .line 119
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/LibraryPlugin$initializeCollections$1;->INSTANCE:Lcom/amazon/kcp/library/LibraryPlugin$initializeCollections$1;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private final initializeReturnContextualAction(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 2

    .line 106
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryPlugin;->createActivityProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/library/ActivityProvider;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;-><init>(Lcom/amazon/kcp/library/ActivityProvider;Lcom/amazon/kindle/content/ILibraryService;)V

    .line 106
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->registerContextualActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private final performLibraryCreationSync()V
    .locals 3

    .line 99
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/LibraryPlugin$performLibraryCreationSync$1;->INSTANCE:Lcom/amazon/kcp/library/LibraryPlugin$performLibraryCreationSync$1;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->execute(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private final preloadLargeLibrary()V
    .locals 4

    .line 80
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const-class v0, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    if-eqz v0, :cond_1

    .line 83
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    const-string v3, "Utils.getFactory().authenticationManager"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->preloadCache()V

    .line 86
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v1

    const-string v2, "Utils.getFactory().authe\u2026cationManager.accountInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Utils.getFactory().authe\u2026ionManager.accountInfo.id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "ComicsInlineFilterUserInterfaceGroup"

    .line 88
    invoke-interface {v0, v1, v3, v2}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->setStringFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 10

    const-class v0, Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManagerProvider;

    const-string/jumbo v1, "sdk"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/amazon/kcp/library/LibraryPluginKt;->access$getTAG$p()Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryPlugin;->initializeCollections()V

    .line 52
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    .line 141
    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManagerProvider;

    .line 53
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v4, "sdk.context"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManagerProvider;->provideGoodreadMarsManager(Landroid/content/Context;)Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;

    move-result-object v7

    .line 54
    new-instance v0, Lcom/amazon/kcp/library/MarkAsRead;

    const-string v3, "libraryService"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryPlugin;->createActivityProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/library/ActivityProvider;

    move-result-object v6

    .line 55
    sget-object v3, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->Companion:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Companion;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Companion;->getInstance()Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;

    move-result-object v8

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v9

    const-string v3, "Utils.getFactory().networkService"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    move-object v4, v1

    move-object v5, p1

    .line 54
    invoke-direct/range {v3 .. v9}, Lcom/amazon/kcp/library/MarkAsRead;-><init>(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kcp/library/ActivityProvider;Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;Lcom/amazon/kindle/network/INetworkService;)V

    .line 55
    invoke-virtual {v0}, Lcom/amazon/kcp/library/MarkAsRead;->initialize()V

    .line 56
    sget-object v0, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/DetailsViewDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->initializeDetailsViewWeblab()V

    .line 57
    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/library/LibraryPlugin;->initializeReturnContextualAction(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/content/ILibraryService;)V

    .line 58
    sget-object v0, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;->initialize()V

    .line 59
    sget-object v0, Lcom/amazon/kcp/debug/LendingFiltersDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LendingFiltersDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/LendingFiltersDebugUtils;->initialize()V

    .line 60
    const-class v0, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    const-string/jumbo v3, "sdk.applicationManager"

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->initialize(Lcom/amazon/kindle/krx/application/IApplicationManager;)V

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryPlugin;->performLibraryCreationSync()V

    .line 62
    sget-object v0, Lcom/amazon/kcp/debug/DownloadedFilterDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/DownloadedFilterDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/DownloadedFilterDebugUtils;->initialize()V

    .line 63
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->initializeLargeLibraryWeblab()V

    .line 64
    invoke-static {}, Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;->initializeLargeSeriesGroupingWeblab()V

    .line 65
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->initializeGroupingParameterWeblab()V

    .line 66
    sget-object v0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->INSTANCE:Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v4

    const-string/jumbo p1, "sdk.applicationManager.deviceInformation"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v5

    const-string p1, "Utils.getFactory().authenticationManager"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v6

    const-string p1, "Utils.getFactory().webRequestManager"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v7

    const-string p1, "ThreadPoolManager.getInstance()"

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    move-object v8, v1

    .line 66
    invoke-virtual/range {v3 .. v8}, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->initialize(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/webservices/IWebRequestManager;Lcom/amazon/kindle/krx/thread/IThreadPoolManager;Lcom/amazon/kindle/content/ILibraryService;)V

    .line 68
    sget-object p1, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;

    invoke-virtual {p1}, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;->initialize()V

    .line 69
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryPlugin;->preloadLargeLibrary()V

    .line 70
    sget-object p1, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;

    invoke-virtual {p1}, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;->initialize()V

    .line 71
    sget-object p1, Lcom/amazon/kcp/debug/WayFinderSearchLayoutDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/WayFinderSearchLayoutDebugUtils;

    invoke-virtual {p1}, Lcom/amazon/kcp/debug/WayFinderSearchLayoutDebugUtils;->initialize()V

    .line 72
    sget-object p1, Lcom/amazon/kcp/debug/WayfinderSearchFilterSortDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/WayfinderSearchFilterSortDebugUtils;

    invoke-virtual {p1}, Lcom/amazon/kcp/debug/WayfinderSearchFilterSortDebugUtils;->initialize()V

    .line 73
    sget-object p1, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;

    invoke-virtual {p1}, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;->initialize()V

    .line 74
    invoke-static {}, Lcom/amazon/kcp/debug/InProgressFilterDebugUtils;->initializeInProgressFilterWeblab()V

    .line 75
    sget-object p1, Lcom/amazon/kcp/debug/WayFinderClickStreamAttributionMetricsPublishDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/WayFinderClickStreamAttributionMetricsPublishDebugUtils;

    invoke-virtual {p1}, Lcom/amazon/kcp/debug/WayFinderClickStreamAttributionMetricsPublishDebugUtils;->initialize()V

    .line 76
    sget-object p1, Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;

    invoke-virtual {p1}, Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;->initialize()V

    return-void

    .line 141
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must implement discoverable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final initializeLibrarySharedFilter()V
    .locals 4

    .line 128
    const-class v0, Lcom/amazon/kindle/library/household/HouseholdMembersProvider;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/library/household/HouseholdMembersProvider;

    if-eqz v0, :cond_0

    .line 130
    new-instance v1, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    const-string v3, "Utils.getFactory()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    const-string v3, "Utils.getFactory().authenticationManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryPlugin;->getLibraryFilter()Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 130
    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;-><init>(Lcom/amazon/kindle/library/household/HouseholdMembersProvider;Lcom/amazon/kcp/application/IAuthenticationManager;Ljava/util/List;)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/library/LibraryPluginKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HouseholdMembersProvider not discovered. This should not happen!"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
