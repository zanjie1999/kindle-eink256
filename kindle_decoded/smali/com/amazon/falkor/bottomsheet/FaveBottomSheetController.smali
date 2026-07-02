.class public Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;
.super Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;
.source "FaveBottomSheetController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFaveBottomSheetController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FaveBottomSheetController.kt\ncom/amazon/falkor/bottomsheet/FaveBottomSheetController\n*L\n1#1,241:1\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private faveEarnedBookItems:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private webViewCallback:Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;


# direct methods
.method public constructor <init>(Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string v0, "currentEpisodeInfoManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/amazon/falkor/BottomSheetID;->FAVE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    invoke-virtual {v0}, Lcom/amazon/falkor/BottomSheetID;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;)V

    .line 48
    const-class p1, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->TAG:Ljava/lang/String;

    .line 51
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->faveEarnedBookItems:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance p1, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController$webViewCallback$1;

    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0, p2}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController$webViewCallback$1;-><init>(Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->webViewCallback:Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private final getOnlineFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 133
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->ensureWebViewCache(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->getWebviewCallback()Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lcom/amazon/falkor/bottomsheet/FaveWebViewFragment$CreateDelegate;

    invoke-direct {v0}, Lcom/amazon/falkor/bottomsheet/FaveWebViewFragment$CreateDelegate;-><init>()V

    .line 137
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->isCurrentAreaInDarkMode()Z

    move-result v1

    .line 135
    invoke-virtual {v0, p1, v1}, Lcom/amazon/falkor/bottomsheet/FaveWebViewFragment$CreateDelegate;->newFragment(Ljava/lang/String;Z)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->getWebviewCallback()Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->hasError()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    sget-object p1, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;->Companion:Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->isCurrentAreaInDarkMode()Z

    move-result v2

    .line 140
    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;->getNewInstance(ZLjava/lang/String;Z)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    .line 143
    :cond_1
    new-instance p1, Lcom/amazon/falkor/bottomsheet/SpinnerBottomSheetFragment;

    invoke-direct {p1}, Lcom/amazon/falkor/bottomsheet/SpinnerBottomSheetFragment;-><init>()V

    return-object p1
.end method

.method private final hasEarnedFave()Z
    .locals 1

    .line 198
    sget-object v0, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isForceShowFaveBottomSheetEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->faveEarnedBookItems:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final refreshFaveBottomSheet()V
    .locals 3

    .line 154
    invoke-direct {p0}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->hasEarnedFave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->dismissSheet()V

    .line 156
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.readerManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    sget-object v1, Lcom/amazon/falkor/webview/WebViewCacheManager;->Companion:Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;

    invoke-virtual {v1}, Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;->getInstance()Lcom/amazon/falkor/webview/WebViewCacheManager;

    move-result-object v1

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/falkor/webview/WebViewCacheManager;->discardCache(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->showBottomSheet(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final shouldShowFaveBottomSheet(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->hasEarnedFave()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final dismissFaveBottomSheetEvent(Lcom/amazon/falkor/event/DismissFaveBottomSheetEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->dismissSheet()V

    .line 177
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->faveEarnedBookItems:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public bridge synthetic getJSInterface()Lcom/amazon/falkor/FalkorJSInterface;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->getJSInterface()Lcom/amazon/falkor/bottomsheet/FaveBottomSheetJSInterface;

    move-result-object v0

    return-object v0
.end method

.method protected getJSInterface()Lcom/amazon/falkor/bottomsheet/FaveBottomSheetJSInterface;
    .locals 3

    .line 84
    new-instance v0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetJSInterface;

    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getMessageQueue()Lkotlin/Lazy;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetJSInterface;-><init>(Lkotlin/Lazy;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0
.end method

.method public getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 5

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    const-string/jumbo v0, "sdk.applicationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object p1

    const-string/jumbo v1, "sdk.applicationManager.deviceInformation"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getEncryptedDSN()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    .line 115
    sget-object v1, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->isCurrentAreaInDarkMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->getThemeUrlArgument(Z)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    .line 117
    sget-object v3, Lcom/amazon/falkor/utils/FalkorUrlUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorUrlUtils;

    const-string v4, "eid"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "deviceType"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "locale"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1, p1, v0, v2}, Lcom/amazon/falkor/utils/FalkorUrlUtils;->getFaveBottomSheetUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getWebviewCallback()Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->webViewCallback:Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;

    return-object v0
.end method

.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V

    if-eqz p1, :cond_0

    .line 104
    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->shouldShowFaveBottomSheet(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->faveEarnedBookItems:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V

    if-eqz p1, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->shouldShowFaveBottomSheet(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->showBottomSheet(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 1

    const-string/jumbo v0, "navigationType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->shouldShowFaveBottomSheet(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->ensureWebViewCache(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onFaveBottomSheetRefreshEvent(Lcom/amazon/falkor/event/FaveBottomSheetRefreshEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->refreshFaveBottomSheet()V

    return-void
.end method

.method public final onFaveBottomSheetWebViewLoadFailureEvent(Lcom/amazon/falkor/event/FaveBottomSheetWebViewLoadFailureEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->hasEarnedFave()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 186
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->showTryAgainBottomSheet(Z)V

    :cond_0
    return-void
.end method

.method public final onFaveEarnedEvent(Lcom/amazon/falkor/event/FaveEarnedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->faveEarnedBookItems:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onOverlayVisibilityChange(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->isBottomSheetVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->dismissSheet()V

    .line 78
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->faveEarnedBookItems:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public retryDownloadsIfNeeded(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    const-string v0, "episode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public showBottomSheet(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
    .locals 7

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    invoke-direct {p0, p2}, Lcom/amazon/falkor/bottomsheet/FaveBottomSheetController;->getOnlineFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    .line 125
    :cond_0
    sget-object p1, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;->Companion:Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;

    const/4 p2, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->isCurrentAreaInDarkMode()Z

    move-result v1

    .line 125
    invoke-virtual {p1, p2, v0, v1}, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;->getNewInstance(ZLjava/lang/String;Z)Landroidx/fragment/app/Fragment;

    move-result-object p1

    :goto_0
    move-object v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    .line 128
    invoke-static/range {v0 .. v6}, Lcom/amazon/falkor/BottomSheetController;->showBottomSheetFragment$default(Lcom/amazon/falkor/BottomSheetController;Landroidx/fragment/app/Fragment;ZZZILjava/lang/Object;)V

    :cond_1
    return-void
.end method
