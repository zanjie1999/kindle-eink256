.class public final Lcom/amazon/falkor/panels/EpisodeListViewController;
.super Ljava/lang/Object;
.source "EpisodeListViewController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEpisodeListViewController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EpisodeListViewController.kt\ncom/amazon/falkor/panels/EpisodeListViewController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,294:1\n1491#2,2:295\n862#2:297\n1491#2,2:298\n*E\n*S KotlinDebug\n*F\n+ 1 EpisodeListViewController.kt\ncom/amazon/falkor/panels/EpisodeListViewController\n*L\n108#1,2:295\n194#1:297\n196#1,2:298\n*E\n"
.end annotation


# instance fields
.field private final aboutThisStory:Landroid/view/View;

.field private final context:Landroid/content/Context;

.field private final currentBook:Lcom/amazon/kindle/krx/content/IBook;

.field private final currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

.field private final episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

.field private final groupData:Lcom/amazon/falkor/utils/BookGroupUtils;

.field private final offlineListView:Landroid/view/ViewGroup;

.field private final onlineListView:Landroid/view/ViewGroup;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final spinnerView:Landroid/view/View;

.field private final tryAgainView:Landroid/view/View;

.field private final viewFactory:Lcom/amazon/falkor/panels/EpisodePanelViewFactory;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Lcom/amazon/falkor/download/EpisodeListDownloadHelper;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/kindle/krx/content/IBook;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/amazon/falkor/panels/EpisodePanelViewFactory;Lcom/amazon/falkor/utils/BookGroupUtils;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodeListDownloadHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentEpisodeInfoManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentBook"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aboutThisStory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onlineListView"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "spinnerView"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "offlineListView"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tryAgainView"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewFactory"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupData"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    iput-object p4, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    iput-object p5, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    iput-object p6, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->aboutThisStory:Landroid/view/View;

    iput-object p7, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->onlineListView:Landroid/view/ViewGroup;

    iput-object p8, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->spinnerView:Landroid/view/View;

    iput-object p9, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->offlineListView:Landroid/view/ViewGroup;

    iput-object p10, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->tryAgainView:Landroid/view/View;

    iput-object p11, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->viewFactory:Lcom/amazon/falkor/panels/EpisodePanelViewFactory;

    iput-object p12, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->groupData:Lcom/amazon/falkor/utils/BookGroupUtils;

    .line 51
    invoke-direct {p0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->refreshAll()V

    .line 52
    iget-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->aboutThisStory:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Lcom/amazon/falkor/download/EpisodeListDownloadHelper;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/kindle/krx/content/IBook;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/amazon/falkor/panels/EpisodePanelViewFactory;Lcom/amazon/falkor/utils/BookGroupUtils;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p13

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_0

    .line 47
    new-instance v1, Lcom/amazon/falkor/panels/EpisodePanelViewFactory;

    invoke-direct {v1}, Lcom/amazon/falkor/panels/EpisodePanelViewFactory;-><init>()V

    move-object v13, v1

    goto :goto_0

    :cond_0
    move-object/from16 v13, p11

    :goto_0
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Lcom/amazon/falkor/utils/BookGroupUtils;

    invoke-direct {v0}, Lcom/amazon/falkor/utils/BookGroupUtils;-><init>()V

    move-object v14, v0

    goto :goto_1

    :cond_1
    move-object/from16 v14, p12

    :goto_1
    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v14}, Lcom/amazon/falkor/panels/EpisodeListViewController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Lcom/amazon/falkor/download/EpisodeListDownloadHelper;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/kindle/krx/content/IBook;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/amazon/falkor/panels/EpisodePanelViewFactory;Lcom/amazon/falkor/utils/BookGroupUtils;)V

    return-void
.end method

.method public static final synthetic access$getCurrentBook$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/kindle/krx/content/IBook;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    return-object p0
.end method

.method public static final synthetic access$getCurrentEpisodeInfoManager$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    return-object p0
.end method

.method public static final synthetic access$getEpisodeListDownloadHelper$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/falkor/download/EpisodeListDownloadHelper;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    return-object p0
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method public static final synthetic access$inflateAndAddOnlineRows(Lcom/amazon/falkor/panels/EpisodeListViewController;Ljava/util/List;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/falkor/panels/EpisodeListViewController;->inflateAndAddOnlineRows(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$refreshAll(Lcom/amazon/falkor/panels/EpisodeListViewController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->refreshAll()V

    return-void
.end method

.method public static final synthetic access$refreshOthers(Lcom/amazon/falkor/panels/EpisodeListViewController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->refreshOthers()V

    return-void
.end method

.method public static final synthetic access$reportMetricsIfNeeded(Lcom/amazon/falkor/panels/EpisodeListViewController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->reportMetricsIfNeeded()V

    return-void
.end method

.method private final createRowView(ZZLjava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 7

    .line 205
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->viewFactory:Lcom/amazon/falkor/panels/EpisodePanelViewFactory;

    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p3, p1, p2}, Lcom/amazon/falkor/panels/EpisodePanelViewFactory;->inflateCustomEpisodeListNavPanelItem(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/view/ViewGroup;

    move-result-object p3

    .line 206
    new-instance v5, Lcom/amazon/falkor/panels/EpisodeRowViewController;

    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v5, v0, p3, p4, p2}, Lcom/amazon/falkor/panels/EpisodeRowViewController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/view/View;Ljava/lang/String;Z)V

    .line 207
    new-instance v6, Lcom/amazon/falkor/panels/EpisodeListViewController$createRowView$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move v3, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/falkor/panels/EpisodeListViewController$createRowView$1;-><init>(Lcom/amazon/falkor/panels/EpisodeListViewController;Ljava/lang/String;ZZLcom/amazon/falkor/panels/EpisodeRowViewController;)V

    invoke-virtual {p3, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method

.method private final inflateAndAddOnlineRows(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/falkor/models/FalkorEpisode;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 295
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/falkor/models/FalkorEpisode;

    .line 109
    invoke-virtual {v0}, Lcom/amazon/falkor/models/FalkorEpisode;->getAsin()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 110
    invoke-virtual {v0}, Lcom/amazon/falkor/models/FalkorEpisode;->isFree()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/amazon/falkor/models/FalkorEpisode;->getHasOwnership()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 111
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/falkor/models/FalkorEpisode;->getEpisodeNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/falkor/models/FalkorEpisode;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    iget-object v4, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->onlineListView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/amazon/falkor/models/FalkorEpisode;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->createRowView(ZZLjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final inflateOfflineRows()V
    .locals 8

    .line 190
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 192
    :goto_0
    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 193
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->groupData:Lcom/amazon/falkor/utils/BookGroupUtils;

    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v4, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 194
    iget-object v5, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    invoke-virtual {v5}, Lcom/amazon/falkor/download/EpisodeInfoDownloadManager;->getEpisode()Lcom/amazon/falkor/models/FalkorEpisode;

    move-result-object v5

    .line 193
    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/amazon/falkor/utils/BookGroupUtils;->getOwnedEpisodeList(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/falkor/models/FalkorEpisode;Z)Ljava/util/Collection;

    move-result-object v0

    .line 297
    new-instance v1, Lcom/amazon/falkor/panels/EpisodeListViewController$inflateOfflineRows$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/amazon/falkor/panels/EpisodeListViewController$inflateOfflineRows$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    invoke-virtual {v1}, Lcom/amazon/falkor/download/EpisodeInfoDownloadManager;->getEpisode()Lcom/amazon/falkor/models/FalkorEpisode;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/amazon/falkor/models/FalkorEpisode;->getStoryTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->groupData:Lcom/amazon/falkor/utils/BookGroupUtils;

    iget-object v2, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v4, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {v1, v2, v4}, Lcom/amazon/falkor/utils/BookGroupUtils;->getGroupFromItem(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/content/BookGroup;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/BookGroup;->getGroupTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 298
    :goto_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/content/BookGroupItem;

    .line 197
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/BookGroupItem;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v4

    .line 198
    sget-object v5, Lcom/amazon/falkor/utils/FalkorStringUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorStringUtils;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v6

    const-string v7, "book.title"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/BookGroupItem;->getPosition()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v5, v6, v1, v2}, Lcom/amazon/falkor/utils/FalkorStringUtils;->getOfflineEpisodeTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-interface {v4}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v6}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 200
    iget-object v6, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->offlineListView:Landroid/view/ViewGroup;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v4

    const-string v7, "book.asin"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v5, v3, v2, v4}, Lcom/amazon/falkor/panels/EpisodeListViewController;->createRowView(ZZLjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method private final initializeOnlineRows()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->onlineListView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 102
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->getEpisodes()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->inflateAndAddOnlineRows(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private final refreshAll()V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->initializeOnlineRows()V

    .line 118
    invoke-direct {p0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->refreshOthers()V

    .line 119
    invoke-direct {p0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->reportMetricsIfNeeded()V

    return-void
.end method

.method private final refreshOthers()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->updateAboutThisStory()V

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->updateShowSpinner()V

    .line 128
    invoke-direct {p0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->updateShowTryAgain()V

    .line 129
    invoke-direct {p0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->updateShowOfflineList()V

    return-void
.end method

.method private final reportMetricsIfNeeded()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->onlineListView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->reportMetrics()V

    :cond_0
    return-void

    .line 235
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateAboutThisStory()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->aboutThisStory:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->aboutThisStory:Landroid/view/View;

    sget v1, Lcom/amazon/falkor/R$id;->about_this_story_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 137
    sget-object v1, Lcom/amazon/falkor/utils/FalkorFontUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorFontUtils;

    iget-object v2, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/falkor/utils/FalkorFontUtils;->getEmberRegularTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->aboutThisStory:Landroid/view/View;

    new-instance v1, Lcom/amazon/falkor/panels/EpisodeListViewController$updateAboutThisStory$1;

    invoke-direct {v1, p0}, Lcom/amazon/falkor/panels/EpisodeListViewController$updateAboutThisStory$1;-><init>(Lcom/amazon/falkor/panels/EpisodeListViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private final updateShowOfflineList()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->onlineListView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 182
    :goto_0
    iget-object v2, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->offlineListView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->offlineListView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 185
    invoke-direct {p0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->inflateOfflineRows()V

    :cond_2
    return-void
.end method

.method private final updateShowSpinner()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->DOWNLOADING:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->spinnerView:Landroid/view/View;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final updateShowTryAgain()V
    .locals 6

    .line 152
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v1

    .line 154
    iget-object v4, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->tryAgainView:Landroid/view/View;

    if-nez v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    goto :goto_3

    .line 155
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->tryAgainView:Landroid/view/View;

    sget v5, Lcom/amazon/falkor/R$id;->toc_try_again_desc:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    .line 157
    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lcom/amazon/falkor/R$string;->toc_try_again_description_text:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 159
    :cond_3
    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lcom/amazon/falkor/R$string;->server_side_error_toc_try_again_description_text:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 161
    sget-object v1, Lcom/amazon/falkor/utils/FalkorFontUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorFontUtils;

    iget-object v5, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->context:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/amazon/falkor/utils/FalkorFontUtils;->getEmberRegularTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 162
    :cond_5
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->tryAgainView:Landroid/view/View;

    sget v1, Lcom/amazon/falkor/R$id;->falkor_try_again_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 163
    sget-object v1, Lcom/amazon/falkor/utils/FalkorFontUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorFontUtils;

    iget-object v5, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->context:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/amazon/falkor/utils/FalkorFontUtils;->getEmberRegularTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_6
    if-eqz v0, :cond_7

    .line 164
    new-instance v1, Lcom/amazon/falkor/panels/EpisodeListViewController$updateShowTryAgain$1;

    invoke-direct {v1, p0}, Lcom/amazon/falkor/panels/EpisodeListViewController$updateShowTryAgain$1;-><init>(Lcom/amazon/falkor/panels/EpisodeListViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_7
    :goto_3
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final onNetworkConnectivityChanged()V
    .locals 3

    .line 87
    sget-object v0, Lcom/amazon/falkor/utils/FalkorThreadUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorThreadUtils;

    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    new-instance v2, Lcom/amazon/falkor/panels/EpisodeListViewController$onNetworkConnectivityChanged$1;

    invoke-direct {v2, p0}, Lcom/amazon/falkor/panels/EpisodeListViewController$onNetworkConnectivityChanged$1;-><init>(Lcom/amazon/falkor/panels/EpisodeListViewController;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/falkor/utils/FalkorThreadUtils;->runOrSubmitOnMainThread(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPageDownloadFailed()V
    .locals 3

    .line 62
    sget-object v0, Lcom/amazon/falkor/utils/FalkorThreadUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorThreadUtils;

    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    new-instance v2, Lcom/amazon/falkor/panels/EpisodeListViewController$onPageDownloadFailed$1;

    invoke-direct {v2, p0}, Lcom/amazon/falkor/panels/EpisodeListViewController$onPageDownloadFailed$1;-><init>(Lcom/amazon/falkor/panels/EpisodeListViewController;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/falkor/utils/FalkorThreadUtils;->runOrSubmitOnMainThread(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPageDownloadSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/falkor/models/FalkorEpisode;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "pagedList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/amazon/falkor/utils/FalkorThreadUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorThreadUtils;

    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    new-instance v2, Lcom/amazon/falkor/panels/EpisodeListViewController$onPageDownloadSuccess$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/falkor/panels/EpisodeListViewController$onPageDownloadSuccess$1;-><init>(Lcom/amazon/falkor/panels/EpisodeListViewController;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/falkor/utils/FalkorThreadUtils;->runOrSubmitOnMainThread(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportMetrics()V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-eq v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-ne v0, v1, :cond_3

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getTOC_LOADING_CALLING_CLASS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOCLoadingEvent"

    const-string v3, "TOCLoadingPerformanceKey"

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getTOC_LOADING_CALLING_CLASS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOCOnlineLoadingKey"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getTOC_LOADING_CALLING_CLASS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOCOfflineLoadingKey"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->tryAgainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getTOC_LOADING_CALLING_CLASS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOCRetryButtonNotShown"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getTOC_LOADING_CALLING_CLASS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOCRetryButtonShown"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
