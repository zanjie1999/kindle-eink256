.class public final Lcom/amazon/falkor/panels/EpisodeRowViewController;
.super Ljava/lang/Object;
.source "EpisodeRowViewController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEpisodeRowViewController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EpisodeRowViewController.kt\ncom/amazon/falkor/panels/EpisodeRowViewController\n*L\n1#1,83:1\n*E\n"
.end annotation


# instance fields
.field private final asin:Ljava/lang/String;

.field private final isPaywalled:Z

.field private final rowView:Landroid/view/View;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 7

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rowView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->rowView:Landroid/view/View;

    iput-object p3, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->asin:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->isPaywalled:Z

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    .line 23
    invoke-static/range {v1 .. v6}, Lcom/amazon/falkor/panels/EpisodeRowViewController;->updateDecorator$default(Lcom/amazon/falkor/panels/EpisodeRowViewController;ZJILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getAsin$p(Lcom/amazon/falkor/panels/EpisodeRowViewController;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->asin:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getRowView$p(Lcom/amazon/falkor/panels/EpisodeRowViewController;)Landroid/view/View;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->rowView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$isPaywalled$p(Lcom/amazon/falkor/panels/EpisodeRowViewController;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->isPaywalled:Z

    return p0
.end method

.method public static final synthetic access$onDownloadFailed(Lcom/amazon/falkor/panels/EpisodeRowViewController;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/falkor/panels/EpisodeRowViewController;->onDownloadFailed()V

    return-void
.end method

.method public static final synthetic access$onDownloadSuccessful(Lcom/amazon/falkor/panels/EpisodeRowViewController;Ljava/lang/String;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/amazon/falkor/panels/EpisodeRowViewController;->onDownloadSuccessful(Ljava/lang/String;Z)V

    return-void
.end method

.method private final onDownloadFailed()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getTOC_NAVIGATION_CALLING_CLASS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOCFreeEpisodeGrantOwnershipFailureEvent"

    const-string v3, "TOCFreeEpisodeGrantOwnershipPerformanceKey"

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/amazon/falkor/panels/EpisodeRowViewController;->reset()V

    return-void
.end method

.method private final onDownloadSuccessful(Ljava/lang/String;Z)V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getTOC_NAVIGATION_CALLING_CLASS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOCFreeEpisodeGrantOwnershipSuccessEvent"

    const-string v3, "TOCFreeEpisodeGrantOwnershipPerformanceKey"

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.readerManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/amazon/falkor/FalkorBookOpenManager;->INSTANCE:Lcom/amazon/falkor/FalkorBookOpenManager;

    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/falkor/FalkorBookOpenManager;->openBook(Ljava/lang/String;ZLcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/amazon/falkor/panels/EpisodeRowViewController;->reset()V

    return-void
.end method

.method private final reset()V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    .line 62
    invoke-static/range {v0 .. v5}, Lcom/amazon/falkor/panels/EpisodeRowViewController;->updateDecorator$default(Lcom/amazon/falkor/panels/EpisodeRowViewController;ZJILjava/lang/Object;)V

    return-void
.end method

.method private final updateDecorator(ZJ)V
    .locals 3

    .line 70
    new-instance v0, Lcom/amazon/falkor/panels/EpisodeRowViewController$updateDecorator$runnable$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/falkor/panels/EpisodeRowViewController$updateDecorator$runnable$1;-><init>(Lcom/amazon/falkor/panels/EpisodeRowViewController;Z)V

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_0

    .line 77
    sget-object p1, Lcom/amazon/falkor/utils/FalkorThreadUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorThreadUtils;

    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {p1, v1, v0, p2, p3}, Lcom/amazon/falkor/utils/FalkorThreadUtils;->scheduleOnMainThread(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 79
    :cond_0
    sget-object p1, Lcom/amazon/falkor/utils/FalkorThreadUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorThreadUtils;

    iget-object p2, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/falkor/utils/FalkorThreadUtils;->runOrSubmitOnMainThread(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static bridge synthetic updateDecorator$default(Lcom/amazon/falkor/panels/EpisodeRowViewController;ZJILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 68
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/falkor/panels/EpisodeRowViewController;->updateDecorator(ZJ)V

    return-void
.end method


# virtual methods
.method public final requestOpenEpisode()V
    .locals 9

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    .line 32
    invoke-static/range {v0 .. v5}, Lcom/amazon/falkor/panels/EpisodeRowViewController;->updateDecorator$default(Lcom/amazon/falkor/panels/EpisodeRowViewController;ZJILjava/lang/Object;)V

    .line 35
    iget-boolean v0, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->isPaywalled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->asin:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->isPaywalled:Z

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string v1, "TOCFreeEpisodeGrantOwnershipPerformanceKey"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/amazon/falkor/FalkorBook;

    iget-object v3, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->asin:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->isPaywalled:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/amazon/falkor/FalkorBook;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    new-instance v1, Lcom/amazon/falkor/panels/EpisodeRowViewController$requestOpenEpisode$onSuccess$1;

    invoke-direct {v1, p0}, Lcom/amazon/falkor/panels/EpisodeRowViewController$requestOpenEpisode$onSuccess$1;-><init>(Lcom/amazon/falkor/panels/EpisodeRowViewController;)V

    .line 39
    new-instance v2, Lcom/amazon/falkor/panels/EpisodeRowViewController$requestOpenEpisode$onFailed$1;

    invoke-direct {v2, p0}, Lcom/amazon/falkor/panels/EpisodeRowViewController$requestOpenEpisode$onFailed$1;-><init>(Lcom/amazon/falkor/panels/EpisodeRowViewController;)V

    .line 40
    new-instance v3, Lcom/amazon/falkor/download/FreeEpisodeOwnershipDownloadManager;

    iget-object v4, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v3, v4, v1, v2}, Lcom/amazon/falkor/download/FreeEpisodeOwnershipDownloadManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 41
    invoke-virtual {v3, v0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->initiateDownload(Lcom/amazon/kindle/krx/content/IBook;)V

    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Lcom/amazon/falkor/FalkorBookOpenManager;->INSTANCE:Lcom/amazon/falkor/FalkorBookOpenManager;

    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->asin:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->isPaywalled:Z

    iget-object v3, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/falkor/FalkorBookOpenManager;->openBook(Ljava/lang/String;ZLcom/amazon/kindle/krx/IKindleReaderSDK;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x1f4

    .line 44
    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/falkor/panels/EpisodeRowViewController;->updateDecorator(ZJ)V

    :goto_0
    return-void
.end method
