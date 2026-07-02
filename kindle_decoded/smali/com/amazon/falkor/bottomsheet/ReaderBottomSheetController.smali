.class public abstract Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;
.super Lcom/amazon/falkor/BottomSheetController;
.source "ReaderBottomSheetController.kt"

# interfaces
.implements Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderBottomSheetController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderBottomSheetController.kt\ncom/amazon/falkor/bottomsheet/ReaderBottomSheetController\n*L\n1#1,149:1\n*E\n"
.end annotation


# instance fields
.field private final currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentEpisodeInfoManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/amazon/falkor/BottomSheetController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    return-void
.end method

.method public static final synthetic access$ensureWebViewCacheOnMain(Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;Ljava/lang/String;Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->ensureWebViewCacheOnMain(Ljava/lang/String;Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;)V

    return-void
.end method

.method private final declared-synchronized ensureWebViewCacheOnMain(Ljava/lang/String;Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;)V
    .locals 3

    monitor-enter p0

    .line 121
    :try_start_0
    sget-object v0, Lcom/amazon/falkor/webview/WebViewCacheManager;->Companion:Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;->getInstance()Lcom/amazon/falkor/webview/WebViewCacheManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/falkor/webview/WebViewCacheManager;->getWebView(Ljava/lang/String;)Lcom/amazon/falkor/webview/RoundedWebview;

    move-result-object v0

    if-nez v0, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.readerUIManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {p2}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->reset()V

    .line 128
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getWebViewClient(Landroid/app/Activity;Lcom/amazon/kindle/krx/application/MAPWebViewClientCallback;)Landroid/webkit/WebViewClient;

    move-result-object p2

    .line 129
    sget-object v1, Lcom/amazon/falkor/webview/WebViewCacheManager;->Companion:Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;

    invoke-virtual {v1}, Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;->getInstance()Lcom/amazon/falkor/webview/WebViewCacheManager;

    move-result-object v1

    const-string v2, "client"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getJSInterface()Lcom/amazon/falkor/FalkorJSInterface;

    move-result-object v2

    invoke-interface {v1, v0, p2, v2, p1}, Lcom/amazon/falkor/webview/WebViewCacheManager;->createWebView(Landroid/content/Context;Landroid/webkit/WebViewClient;Lcom/amazon/falkor/FalkorJSInterface;Ljava/lang/String;)Lcom/amazon/falkor/webview/RoundedWebview;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_2
    monitor-exit p0

    return-void

    .line 123
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected final ensureWebViewCache(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/amazon/falkor/webview/WebViewCacheManager;->Companion:Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;->getInstance()Lcom/amazon/falkor/webview/WebViewCacheManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/falkor/webview/WebViewCacheManager;->getWebView(Ljava/lang/String;)Lcom/amazon/falkor/webview/RoundedWebview;

    move-result-object v0

    if-nez v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController$ensureWebViewCache$runnable$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController$ensureWebViewCache$runnable$1;-><init>(Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;Ljava/lang/String;)V

    .line 115
    sget-object p1, Lcom/amazon/falkor/utils/FalkorThreadUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorThreadUtils;

    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/amazon/falkor/utils/FalkorThreadUtils;->runOrSubmitOnMainThread(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected final getCurrentEpisodeInfoManager()Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    return-object v0
.end method

.method public abstract getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
.end method

.method protected abstract getWebviewCallback()Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;
.end method

.method public isCurrentAreaInDarkMode()Z
    .locals 2

    .line 59
    sget-object v0, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->isReaderInDarkMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    return v0
.end method

.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 62
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/amazon/falkor/webview/WebViewCacheManager;->Companion:Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;->getInstance()Lcom/amazon/falkor/webview/WebViewCacheManager;

    move-result-object v0

    .line 64
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/falkor/webview/WebViewCacheManager;->discardCache(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 70
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    sget-object p1, Lcom/amazon/falkor/webview/WebViewCacheManager;->Companion:Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;

    invoke-virtual {p1}, Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;->getInstance()Lcom/amazon/falkor/webview/WebViewCacheManager;

    move-result-object p1

    .line 72
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/falkor/webview/WebViewCacheManager;->cleanUpDiscards(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    :cond_0
    return-void
.end method

.method public onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    .line 21
    invoke-static {p0, p1, p2}, Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener$DefaultImpls;->onAfterNavigation(Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V

    return-void
.end method

.method public onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 1

    const-string/jumbo v0, "navigationType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1, p2}, Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener$DefaultImpls;->onBeforeNavigation(Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V

    return-void
.end method

.method public onNavigationFailed(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    .line 21
    invoke-static {p0, p1, p2}, Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener$DefaultImpls;->onNavigationFailed(Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V

    return-void
.end method

.method public onPageChange(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    .line 21
    invoke-static {p0, p1, p2}, Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener$DefaultImpls;->onPageChange(Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V

    return-void
.end method

.method public onPageFlowChanged(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 21
    invoke-static {p0, p1}, Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener$DefaultImpls;->onPageFlowChanged(Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener;Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public onPageTurnAborted(Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;)V
    .locals 1

    const-string/jumbo v0, "pageTurnAbortedEventData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1}, Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener$DefaultImpls;->onPageTurnAborted(Lcom/amazon/falkor/bottomsheet/NoopReaderNavigationListener;Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;)V

    return-void
.end method

.method public refreshBottomSheet(Z)V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->isBottomSheetVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.readerManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "it"

    if-eqz p1, :cond_0

    .line 84
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->retryDownloadsIfNeeded(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 86
    :cond_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->showBottomSheet(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public abstract retryDownloadsIfNeeded(Lcom/amazon/kindle/krx/content/IBook;)V
.end method

.method public abstract showBottomSheet(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
.end method

.method public final showTryAgainBottomSheet(Z)V
    .locals 10

    .line 95
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->isBottomSheetVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->dismissSheet()V

    .line 97
    sget-object v0, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;->Companion:Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;

    .line 98
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->isCurrentAreaInDarkMode()Z

    move-result v2

    .line 97
    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;->getNewInstance(ZLjava/lang/String;Z)Landroidx/fragment/app/Fragment;

    move-result-object v4

    .line 101
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    const-string/jumbo v0, "sdk.readerUIManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->areOverlaysVisible()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    move-object v3, p0

    .line 102
    invoke-static/range {v3 .. v9}, Lcom/amazon/falkor/BottomSheetController;->showBottomSheetFragment$default(Lcom/amazon/falkor/BottomSheetController;Landroidx/fragment/app/Fragment;ZZZILjava/lang/Object;)V

    :cond_0
    return-void
.end method
