.class public final Lcom/amazon/falkor/FalkorReaderNavigationListener;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "FalkorAndroidPlugin.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

.field private currentOpenBook:Lcom/amazon/kindle/krx/content/IBook;

.field private final episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

.field private final newCustomerStatusManager:Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;

.field private final nextEpisodeInfoManager:Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;

.field private final playBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final tokenBalanceManager:Lcom/amazon/falkor/download/TokenBalanceDownloadManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;Lcom/amazon/falkor/download/EpisodeListDownloadHelper;Lcom/amazon/falkor/download/TokenBalanceDownloadManager;Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;Lcom/amazon/kindle/krx/payment/PlayBillingUtils;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentEpisodeInfoManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "nextEpisodeInfoManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodeListDownloadHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tokenBalanceManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newCustomerStatusManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "playBillingUtils"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TAG"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    iput-object p3, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->nextEpisodeInfoManager:Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;

    iput-object p4, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    iput-object p5, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->tokenBalanceManager:Lcom/amazon/falkor/download/TokenBalanceDownloadManager;

    iput-object p6, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->newCustomerStatusManager:Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;

    iput-object p7, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->playBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    iput-object p8, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method private final stopMetricTimersIfExists()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    .line 220
    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getUNLOCK_EPISODE_CALLING_CLASS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnlockEpisodePerformanceEvent"

    const-string v3, "UnlockEpisodePerformanceKey"

    .line 219
    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    .line 227
    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getNEXT_EPISODE_CALLING_CLASS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NextEpisodePerformanceEvent"

    const-string v3, "NextEpisodePerformanceKey"

    .line 226
    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getTOC_NAVIGATION_CALLING_CLASS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOCLockedEpisodeOpenEvent"

    const-string v3, "TOCLockedEpisodePerformanceKey"

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getTOC_NAVIGATION_CALLING_CLASS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOCEpisodeOpenEvent"

    const-string v3, "TOCEpisodePerformanceKey"

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final triggerBookOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    .line 207
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->currentOpenBook:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 209
    iput-object p1, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->currentOpenBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 210
    invoke-direct {p0}, Lcom/amazon/falkor/FalkorReaderNavigationListener;->stopMetricTimersIfExists()V

    .line 211
    iget-object v0, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->TAG:Ljava/lang/String;

    const-string v2, "FalkorBookOpen"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceUtils;

    iget-object v1, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->emitFalkorBookOpen(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->reset()V

    .line 189
    iget-object v0, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->reset()V

    .line 190
    iget-object v0, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->nextEpisodeInfoManager:Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->reset()V

    .line 191
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->playBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result p1

    if-nez p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->tokenBalanceManager:Lcom/amazon/falkor/download/TokenBalanceDownloadManager;

    invoke-virtual {p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->reset()V

    .line 193
    iget-object p1, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->newCustomerStatusManager:Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;

    invoke-virtual {p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->reset()V

    :cond_0
    const/4 p1, 0x0

    .line 196
    iput-object p1, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->currentOpenBook:Lcom/amazon/kindle/krx/content/IBook;

    :cond_1
    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0, p1}, Lcom/amazon/falkor/FalkorReaderNavigationListener;->triggerBookOpen(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 176
    iget-object v0, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    invoke-virtual {v0, p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->initiateDownload(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 177
    iget-object v0, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->initiateDownload(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 179
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->playBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->tokenBalanceManager:Lcom/amazon/falkor/download/TokenBalanceDownloadManager;

    invoke-virtual {v0, p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->initiateDownload(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 181
    iget-object v0, p0, Lcom/amazon/falkor/FalkorReaderNavigationListener;->newCustomerStatusManager:Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;

    invoke-virtual {v0, p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->retryIfNeeded(Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_0
    return-void
.end method

.method public onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 201
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 202
    invoke-direct {p0, p1}, Lcom/amazon/falkor/FalkorReaderNavigationListener;->triggerBookOpen(Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_0
    return-void
.end method
