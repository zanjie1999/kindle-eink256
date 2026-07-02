.class public Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;
.super Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;
.source "SampleEpisodeController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSampleEpisodeController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SampleEpisodeController.kt\ncom/amazon/falkor/bottomsheet/SampleEpisodeController\n*L\n1#1,492:1\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final isViewOptionsVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final newCustomerStatusManager:Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;

.field private final playBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

.field private sampleToFullConverterMap:Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;

.field private final tokenBalanceManager:Lcom/amazon/falkor/download/TokenBalanceDownloadManager;

.field private final webViewCallback:Lcom/amazon/falkor/bottomsheet/SampleEpisodeController$webViewCallback$1;


# direct methods
.method public constructor <init>(Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/falkor/download/TokenBalanceDownloadManager;Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;Lcom/amazon/kindle/krx/payment/PlayBillingUtils;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string v0, "currentEpisodeInfoManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tokenBalanceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newCustomerStatusManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "playBillingUtils"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdk"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/amazon/falkor/BottomSheetID;->SAMPLE_EPISODE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    invoke-virtual {v0}, Lcom/amazon/falkor/BottomSheetID;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;)V

    iput-object p2, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->tokenBalanceManager:Lcom/amazon/falkor/download/TokenBalanceDownloadManager;

    iput-object p3, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->newCustomerStatusManager:Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;

    iput-object p4, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->playBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    .line 72
    const-class p1, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->TAG:Ljava/lang/String;

    .line 75
    new-instance p1, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController$webViewCallback$1;

    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p5, p2, p5}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController$webViewCallback$1;-><init>(Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->webViewCallback:Lcom/amazon/falkor/bottomsheet/SampleEpisodeController$webViewCallback$1;

    .line 104
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->isViewOptionsVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private final declared-synchronized ensureSampleToFullConverter(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;
    .locals 5

    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->sampleToFullConverterMap:Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lcom/amazon/falkor/FalkorBook;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    const-string v2, "currentBook.asin"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getAuthors()Ljava/lang/String;

    move-result-object v3

    const-string v4, "currentBook.authors"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v4, "currentBook.title"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/falkor/FalkorBook;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance p1, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;

    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getMessageQueue()Lkotlin/Lazy;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;-><init>(Lcom/amazon/falkor/FalkorBook;Lkotlin/Lazy;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 309
    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->sampleToFullConverterMap:Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 311
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final isFalkorSample(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 317
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final shouldShowBottomSheet(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 315
    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->isFalkorSample(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

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

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected getJSInterface()Lcom/amazon/falkor/FalkorJSInterface;
    .locals 4

    .line 130
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.readerManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0, v0}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->ensureSampleToFullConverter(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    new-instance v1, Lcom/amazon/falkor/bottomsheet/SampleJSInterface;

    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getMessageQueue()Lkotlin/Lazy;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/amazon/falkor/bottomsheet/SampleJSInterface;-><init>(Lkotlin/Lazy;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;)V

    return-object v1
.end method

.method public final getOnlineFragment$FalkorAndroidPlugin_common_release(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 9

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->ensureWebViewCache(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->playBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 180
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->getCurrentEpisodeInfoManager()Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v0

    .line 181
    iget-object v2, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->tokenBalanceManager:Lcom/amazon/falkor/download/TokenBalanceDownloadManager;

    invoke-virtual {v2}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v2

    .line 182
    iget-object v3, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->newCustomerStatusManager:Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;

    invoke-virtual {v3}, Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v3

    .line 185
    sget-object v4, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-ne v0, v4, :cond_3

    if-ne v2, v4, :cond_3

    if-ne v3, v4, :cond_3

    .line 186
    iget-object v4, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->tokenBalanceManager:Lcom/amazon/falkor/download/TokenBalanceDownloadManager;

    invoke-virtual {v4}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 187
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->getCurrentEpisodeInfoManager()Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/falkor/download/EpisodeInfoDownloadManager;->getEpisode()Lcom/amazon/falkor/models/FalkorEpisode;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/amazon/falkor/models/FalkorEpisode;->getFalkorPrice()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 188
    :goto_0
    iget-object v6, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->newCustomerStatusManager:Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;

    invoke-virtual {v6}, Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;->getData()Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    .line 192
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gez v7, :cond_2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 199
    :cond_1
    sget-object p1, Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment;->Companion:Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment$Companion;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment$Companion;->getNewInstance(II)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    .line 193
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->getWebviewCallback()Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->isReady()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 194
    new-instance v0, Lcom/amazon/falkor/bottomsheet/SampleWebViewFragment$CreateDelegate;

    invoke-direct {v0}, Lcom/amazon/falkor/bottomsheet/SampleWebViewFragment$CreateDelegate;-><init>()V

    .line 195
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->isCurrentAreaInDarkMode()Z

    move-result v1

    .line 194
    invoke-virtual {v0, p1, v1}, Lcom/amazon/falkor/bottomsheet/SampleWebViewFragment$CreateDelegate;->newFragment(Ljava/lang/String;Z)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    .line 206
    :cond_3
    sget-object p1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-eq v0, p1, :cond_4

    if-eq v2, p1, :cond_4

    if-ne v3, p1, :cond_6

    .line 207
    :cond_4
    sget-object p1, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;->Companion:Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;

    .line 208
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->isCurrentAreaInDarkMode()Z

    move-result v2

    .line 207
    invoke-virtual {p1, v1, v0, v2}, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;->getNewInstance(ZLjava/lang/String;Z)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    .line 211
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->getWebviewCallback()Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->isReady()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 212
    new-instance v0, Lcom/amazon/falkor/bottomsheet/SampleWebViewFragment$CreateDelegate;

    invoke-direct {v0}, Lcom/amazon/falkor/bottomsheet/SampleWebViewFragment$CreateDelegate;-><init>()V

    .line 214
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->isCurrentAreaInDarkMode()Z

    move-result v1

    .line 212
    invoke-virtual {v0, p1, v1}, Lcom/amazon/falkor/bottomsheet/SampleWebViewFragment$CreateDelegate;->newFragment(Ljava/lang/String;Z)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    .line 219
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->getWebviewCallback()Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->hasError()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 220
    sget-object p1, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;->Companion:Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;

    .line 221
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->isCurrentAreaInDarkMode()Z

    move-result v2

    .line 220
    invoke-virtual {p1, v1, v0, v2}, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;->getNewInstance(ZLjava/lang/String;Z)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    .line 224
    :cond_7
    new-instance p1, Lcom/amazon/falkor/bottomsheet/SpinnerBottomSheetFragment;

    invoke-direct {p1}, Lcom/amazon/falkor/bottomsheet/SpinnerBottomSheetFragment;-><init>()V

    return-object p1
.end method

.method public getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 10

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
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

    move-result-object v6

    .line 229
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v7

    .line 230
    sget-object v0, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->isCurrentAreaInDarkMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->getThemeUrlArgument(Z)Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 232
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->playBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result v9

    .line 233
    sget-object v3, Lcom/amazon/falkor/utils/FalkorUrlUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorUrlUtils;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v4

    const-string p1, "eid"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "deviceType"

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "locale"

    .line 234
    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {v3 .. v9}, Lcom/amazon/falkor/utils/FalkorUrlUtils;->getSampleEpisodeBottomSheetUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getWebviewCallback()Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->webViewCallback:Lcom/amazon/falkor/bottomsheet/SampleEpisodeController$webViewCallback$1;

    return-object v0
.end method

.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V

    if-eqz p1, :cond_0

    .line 144
    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->isFalkorSample(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 145
    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->sampleToFullConverterMap:Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;

    :cond_0
    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V

    if-eqz p1, :cond_0

    .line 137
    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->shouldShowBottomSheet(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->showBottomSheet(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 1

    const-string/jumbo v0, "navigationType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 150
    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->isFalkorSample(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->ensureWebViewCache(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onConnectivityChange(Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
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

    .line 121
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->shouldShowBottomSheet(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

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

    .line 321
    invoke-virtual {p1}, Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;->getEpisode()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->isFalkorSample(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 322
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->refreshBottomSheet(Z)V

    :cond_0
    return-void
.end method

.method public final onNewCustomerStatusDownloadFinished(Lcom/amazon/falkor/event/NewCustomerStatusDownloadFinishedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;->getEpisode()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->isFalkorSample(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 336
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->refreshBottomSheet(Z)V

    :cond_0
    return-void
.end method

.method public onOverlayVisibilityChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->dismissSheet()V

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->isViewOptionsVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->showBottomSheet()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSampleEpisodeWebViewLoadFailure(Lcom/amazon/falkor/event/SampleEpisodeWebViewLoadFailureEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 300
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->showTryAgainBottomSheet(Z)V

    return-void
.end method

.method public final onTokenBalanceDownloadFinished(Lcom/amazon/falkor/event/TokenBalanceDownloadFinishedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;->getEpisode()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->isFalkorSample(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 329
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->refreshBottomSheet(Z)V

    :cond_0
    return-void
.end method

.method public final onUIEvent(Lcom/amazon/kindle/krx/events/UIEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->getElement()Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->VIEW_OPTIONS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    if-ne v0, v1, :cond_1

    .line 251
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->isViewOptionsVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 252
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->dismissSheet()V

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->showBottomSheet()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onUnlockEpisodeEventFailure(Lcom/amazon/falkor/event/UnlockEpisodeFailureEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "UnlockEpisodePerformanceKey"

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 292
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->showTryAgainBottomSheet(Z)V

    return-void
.end method

.method public final refreshDisabledPaymentBottomSheet(Lcom/amazon/falkor/event/DisabledPaymentReaderTokenBottomSheetRefreshEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->tokenBalanceManager:Lcom/amazon/falkor/download/TokenBalanceDownloadManager;

    invoke-virtual {p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->reset()V

    .line 278
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    const-string/jumbo v0, "sdk.readerManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 280
    sget-object v0, Lcom/amazon/falkor/webview/WebViewCacheManager;->Companion:Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;->getInstance()Lcom/amazon/falkor/webview/WebViewCacheManager;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/falkor/webview/WebViewCacheManager;->discardCache(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 282
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->refreshBottomSheet(Z)V

    return-void
.end method

.method public final refreshSampleBottomSheet(Lcom/amazon/falkor/event/SampleEpisodeBottomSheetRefreshEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.readerManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    sget-object v1, Lcom/amazon/falkor/webview/WebViewCacheManager;->Companion:Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;

    invoke-virtual {v1}, Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;->getInstance()Lcom/amazon/falkor/webview/WebViewCacheManager;

    move-result-object v1

    const-string v2, "book"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/falkor/webview/WebViewCacheManager;->discardCache(Ljava/lang/String;)V

    .line 268
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/falkor/event/SampleEpisodeBottomSheetRefreshEvent;->getShouldRetryDownload()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->refreshBottomSheet(Z)V

    return-void
.end method

.method public retryDownloadsIfNeeded(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    const-string v0, "episode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->getCurrentEpisodeInfoManager()Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->retryIfNeeded(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 169
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->playBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->tokenBalanceManager:Lcom/amazon/falkor/download/TokenBalanceDownloadManager;

    invoke-virtual {v0, p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->retryIfNeeded(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 171
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->newCustomerStatusManager:Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;

    invoke-virtual {v0, p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->retryIfNeeded(Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_0
    return-void
.end method

.method public showBottomSheet()V
    .locals 2

    .line 239
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.readerManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0, v0}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->shouldShowBottomSheet(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-virtual {p0, v0}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->showBottomSheet(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showBottomSheet(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
    .locals 7

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->sampleToFullConverterMap:Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->restartConversionIfFailed()Z

    .line 158
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/falkor/bottomsheet/SampleEpisodeController;->getOnlineFragment$FalkorAndroidPlugin_common_release(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    .line 160
    :cond_1
    sget-object p1, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;->Companion:Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;

    const/4 p2, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/ReaderBottomSheetController;->isCurrentAreaInDarkMode()Z

    move-result v1

    .line 160
    invoke-virtual {p1, p2, v0, v1}, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;->getNewInstance(ZLjava/lang/String;Z)Landroidx/fragment/app/Fragment;

    move-result-object p1

    :goto_0
    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    .line 163
    invoke-static/range {v0 .. v6}, Lcom/amazon/falkor/BottomSheetController;->showBottomSheetFragment$default(Lcom/amazon/falkor/BottomSheetController;Landroidx/fragment/app/Fragment;ZZZILjava/lang/Object;)V

    return-void
.end method
