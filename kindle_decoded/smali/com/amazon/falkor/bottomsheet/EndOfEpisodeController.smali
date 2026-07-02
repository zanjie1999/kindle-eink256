.class public Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;
.super Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;
.source "EndOfEpisodeController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEndOfEpisodeController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EndOfEpisodeController.kt\ncom/amazon/falkor/bottomsheet/EndOfEpisodeController\n*L\n1#1,448:1\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final groupData:Lcom/amazon/falkor/utils/BookGroupUtils;

.field private final nextEpisodeInfoManager:Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;

.field private webViewCallback:Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;Lcom/amazon/falkor/utils/BookGroupUtils;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentEpisodeInfoManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "nextEpisodeInfoManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/amazon/falkor/BottomSheetID;->NEXT_EPISODE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    invoke-virtual {v0}, Lcom/amazon/falkor/BottomSheetID;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;)V

    iput-object p3, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->nextEpisodeInfoManager:Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;

    iput-object p4, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->groupData:Lcom/amazon/falkor/utils/BookGroupUtils;

    .line 75
    const-class p2, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->TAG:Ljava/lang/String;

    .line 78
    new-instance p2, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController$webViewCallback$1;

    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p0, p1, p3, p1}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController$webViewCallback$1;-><init>(Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object p2, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->webViewCallback:Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;Lcom/amazon/falkor/utils/BookGroupUtils;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 72
    new-instance p4, Lcom/amazon/falkor/utils/BookGroupUtils;

    invoke-direct {p4}, Lcom/amazon/falkor/utils/BookGroupUtils;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;Lcom/amazon/falkor/utils/BookGroupUtils;)V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private final checkDownloadStatusAndGetFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 200
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->ensureWebViewCache(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->getCurrentEpisodeInfoManager()Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->nextEpisodeInfoManager:Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;

    invoke-virtual {v1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v1

    .line 204
    sget-object v2, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-ne v0, v2, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->getCurrentEpisodeInfoManager()Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/falkor/download/EpisodeInfoDownloadManager;->getEpisode()Lcom/amazon/falkor/models/FalkorEpisode;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/amazon/falkor/models/FalkorEpisode;->getNextEpisodeAsin()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 207
    sget-object v2, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->getWebviewCallback()Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    new-instance v0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeWebViewFragment$CreateDelegate;

    invoke-direct {v0}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeWebViewFragment$CreateDelegate;-><init>()V

    .line 210
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->isCurrentAreaInDarkMode()Z

    move-result v1

    .line 208
    invoke-virtual {v0, p1, v1}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeWebViewFragment$CreateDelegate;->newFragment(Ljava/lang/String;Z)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    .line 217
    :cond_2
    sget-object p1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-eq v0, p1, :cond_4

    if-eq v1, p1, :cond_4

    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->getWebviewCallback()Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->hasError()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 222
    :cond_3
    new-instance p1, Lcom/amazon/falkor/bottomsheet/SpinnerBottomSheetFragment;

    invoke-direct {p1}, Lcom/amazon/falkor/bottomsheet/SpinnerBottomSheetFragment;-><init>()V

    return-object p1

    .line 218
    :cond_4
    :goto_1
    sget-object p1, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;->Companion:Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;

    const/4 v0, 0x1

    .line 219
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->isCurrentAreaInDarkMode()Z

    move-result v2

    .line 218
    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;->getNewInstance(ZLjava/lang/String;Z)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method private final getOfflineFragment(Lcom/amazon/kindle/krx/content/IBook;)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->groupData:Lcom/amazon/falkor/utils/BookGroupUtils;

    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/falkor/utils/BookGroupUtils;->getGroupFromItem(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/content/BookGroup;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->groupData:Lcom/amazon/falkor/utils/BookGroupUtils;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/amazon/falkor/utils/BookGroupUtils;->getLocalNextItemInGroup(Lcom/amazon/kindle/krx/content/BookGroup;Ljava/lang/String;)Lcom/amazon/kindle/krx/content/BookGroupItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 185
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/BookGroupItem;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "next_episode_asin"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance p1, Lcom/amazon/falkor/bottomsheet/OfflineNextEpisodeBottomSheetFragment;

    invoke-direct {p1}, Lcom/amazon/falkor/bottomsheet/OfflineNextEpisodeBottomSheetFragment;-><init>()V

    .line 187
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 190
    :cond_0
    sget-object p1, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;->Companion:Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->isCurrentAreaInDarkMode()Z

    move-result v2

    .line 190
    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;->getNewInstance(ZLjava/lang/String;Z)Landroidx/fragment/app/Fragment;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final resetWebView()V
    .locals 2

    .line 283
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.readerManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    sget-object v1, Lcom/amazon/falkor/webview/WebViewCacheManager;->Companion:Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;

    invoke-virtual {v1}, Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;->getInstance()Lcom/amazon/falkor/webview/WebViewCacheManager;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/falkor/webview/WebViewCacheManager;->discardCache(Ljava/lang/String;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->webViewCallback:Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;

    invoke-virtual {v0}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->reset()V

    return-void
.end method

.method private final shouldShowBottomSheet(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 290
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
.method protected getJSInterface()Lcom/amazon/falkor/FalkorJSInterface;
    .locals 5

    .line 111
    const-class v0, Lcom/amazon/kindle/store/StoreOpenerFactory;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/store/StoreOpenerFactory;

    .line 112
    new-instance v1, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;

    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getMessageQueue()Lkotlin/Lazy;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->nextEpisodeInfoManager:Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;-><init>(Lkotlin/Lazy;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;Lcom/amazon/kindle/store/StoreOpenerFactory;)V

    return-object v1
.end method

.method public getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 9

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v0

    const-string/jumbo v2, "sdk.applicationManager.deviceInformation"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getEncryptedDSN()Ljava/lang/String;

    move-result-object v5

    .line 117
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v6

    .line 118
    sget-object v0, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->isCurrentAreaInDarkMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->getThemeUrlArgument(Z)Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 120
    sget-object v3, Lcom/amazon/falkor/utils/FalkorUrlUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorUrlUtils;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v4

    const-string p1, "eid"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "deviceType"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "locale"

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v3 .. v8}, Lcom/amazon/falkor/utils/FalkorUrlUtils;->getEndOfEpisodeBottomSheetUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getWebviewCallback()Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->webViewCallback:Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;

    return-object v0
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 149
    invoke-super {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V

    if-eqz p1, :cond_0

    .line 150
    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->shouldShowBottomSheet(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->ensureWebViewCache(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 1

    const-string/jumbo v0, "navigationType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 171
    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->shouldShowBottomSheet(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->ensureWebViewCache(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->dismissSheet()V

    :cond_0
    return-void
.end method

.method public final onConnectivityChange(Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    const-string/jumbo v0, "sdk.readerManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "book"

    .line 158
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->shouldShowBottomSheet(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->ensureWebViewCache(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onCurrentEpisodeDownloadFinish(Lcom/amazon/falkor/event/CurrentEpisodeDownloadFinishedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;->getEpisode()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->shouldShowBottomSheet(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->getCurrentEpisodeInfoManager()Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/falkor/download/EpisodeInfoDownloadManager;->getEpisode()Lcom/amazon/falkor/models/FalkorEpisode;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/falkor/models/FalkorEpisode;->getNextEpisodeAsin()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 244
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->refreshBottomSheet(Z)V

    :cond_1
    return-void
.end method

.method public final onEOEWebViewLoadFailure(Lcom/amazon/falkor/event/EOEWebViewLoadFailureEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "NextEpisodePerformanceKey"

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 264
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->showTryAgainBottomSheet(Z)V

    return-void
.end method

.method public final onNextEpisodeClickEvent(Lcom/amazon/falkor/event/NextEpisodeClickEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->resetWebView()V

    return-void
.end method

.method public final onNextEpisodeDownloadFinish(Lcom/amazon/falkor/event/NextEpisodeDownloadFinishedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;->getEpisode()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->shouldShowBottomSheet(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 231
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->refreshBottomSheet(Z)V

    :cond_0
    return-void
.end method

.method public onOverlayVisibilityChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->dismissSheet()V

    :cond_0
    return-void
.end method

.method public onPageTurnAborted(Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;)V
    .locals 3

    const-string/jumbo v0, "pageTurnAbortedEventData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;->getContent()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const-string v1, "book"

    .line 138
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->shouldShowBottomSheet(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_NEXT:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;->getNavigationType()Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;->isNextPageAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    const-string/jumbo v1, "sdk.readerUIManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->areOverlaysVisible()Z

    move-result p1

    if-nez p1, :cond_0

    .line 142
    sget-object p1, Lcom/amazon/falkor/bottomsheet/BottomSheetCollisionControl;->INSTANCE:Lcom/amazon/falkor/bottomsheet/BottomSheetCollisionControl;

    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/falkor/bottomsheet/BottomSheetCollisionControl;->canShowBottomSheet(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0, v0}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->showBottomSheet(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onSelectionEvent(Lcom/amazon/kindle/krx/events/SelectionEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/SelectionEvent;->getType()Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;->OPTIONS_SHOWN:Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->dismissSheet()V

    :cond_0
    return-void
.end method

.method public final refreshEOEBottomSheet(Lcom/amazon/falkor/event/EOEBottomSheetRefreshEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->resetWebView()V

    .line 255
    invoke-virtual {p1}, Lcom/amazon/falkor/event/EOEBottomSheetRefreshEvent;->getShouldRetryDownload()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->refreshBottomSheet(Z)V

    return-void
.end method

.method public retryDownloadsIfNeeded(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    const-string v0, "episode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->getCurrentEpisodeInfoManager()Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->retryIfNeeded(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public showBottomSheet(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
    .locals 7

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0, p2}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->checkDownloadStatusAndGetFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeController;->getOfflineFragment(Lcom/amazon/kindle/krx/content/IBook;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    :goto_0
    move-object v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    .line 129
    invoke-static/range {v0 .. v6}, Lcom/amazon/falkor/BottomSheetController;->showBottomSheetFragment$default(Lcom/amazon/falkor/BottomSheetController;Landroidx/fragment/app/Fragment;ZZZILjava/lang/Object;)V

    return-void
.end method
