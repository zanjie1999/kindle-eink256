.class final Lcom/amazon/falkor/panels/EpisodeListViewContainerRow;
.super Ljava/lang/Object;
.source "FalkorEpisodeListPanelProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;


# instance fields
.field private final currentBook:Lcom/amazon/kindle/krx/content/IBook;

.field private final currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

.field private final episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

.field private final panelProvider:Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/EpisodeListDownloadHelper;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodeListDownloadHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentEpisodeInfoManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "panelProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentBook"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewContainerRow;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/falkor/panels/EpisodeListViewContainerRow;->episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    iput-object p3, p0, Lcom/amazon/falkor/panels/EpisodeListViewContainerRow;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    iput-object p4, p0, Lcom/amazon/falkor/panels/EpisodeListViewContainerRow;->panelProvider:Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;

    iput-object p5, p0, Lcom/amazon/falkor/panels/EpisodeListViewContainerRow;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    return-void
.end method


# virtual methods
.method public getChildRows()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getChildRows()Ljava/util/List;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/amazon/falkor/panels/EpisodeListViewContainerRow;->getChildRows()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    .line 66
    sget-object v1, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    iget-object v2, v0, Lcom/amazon/falkor/panels/EpisodeListViewContainerRow;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "sdk.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v3, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    iget-object v4, v0, Lcom/amazon/falkor/panels/EpisodeListViewContainerRow;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v3, v4}, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->isTocInDarkMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v3

    .line 66
    invoke-virtual {v1, v2, v3}, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->getContextThemeWrapper(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object v6

    .line 68
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/amazon/falkor/R$layout;->episode_list_container:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    .line 69
    sget v2, Lcom/amazon/falkor/R$id;->about_this_story_row_id:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/view/ViewGroup;

    .line 70
    sget v2, Lcom/amazon/falkor/R$id;->episode_list_online_container:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/view/ViewGroup;

    .line 71
    sget v2, Lcom/amazon/falkor/R$id;->episode_list_spinner:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 72
    sget v2, Lcom/amazon/falkor/R$id;->episode_list_offline_container:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/view/ViewGroup;

    .line 73
    sget v2, Lcom/amazon/falkor/R$id;->episode_list_try_again:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 75
    new-instance v2, Lcom/amazon/falkor/panels/EpisodeListViewController;

    iget-object v5, v0, Lcom/amazon/falkor/panels/EpisodeListViewContainerRow;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v7, v0, Lcom/amazon/falkor/panels/EpisodeListViewContainerRow;->episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    .line 76
    iget-object v8, v0, Lcom/amazon/falkor/panels/EpisodeListViewContainerRow;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    iget-object v9, v0, Lcom/amazon/falkor/panels/EpisodeListViewContainerRow;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    const-string v3, "aboutThisStoryRow"

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "onlineListView"

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "spinnerView"

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "offlineListView"

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "tryAgainView"

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc00

    const/16 v18, 0x0

    move-object v4, v2

    .line 75
    invoke-direct/range {v4 .. v18}, Lcom/amazon/falkor/panels/EpisodeListViewController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Lcom/amazon/falkor/download/EpisodeListDownloadHelper;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/kindle/krx/content/IBook;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/amazon/falkor/panels/EpisodePanelViewFactory;Lcom/amazon/falkor/utils/BookGroupUtils;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    iget-object v3, v0, Lcom/amazon/falkor/panels/EpisodeListViewContainerRow;->episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    invoke-virtual {v3, v2}, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->setCurrentEpisodeListViewController(Lcom/amazon/falkor/panels/EpisodeListViewController;)V

    .line 78
    iget-object v3, v0, Lcom/amazon/falkor/panels/EpisodeListViewContainerRow;->panelProvider:Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;

    invoke-virtual {v3, v2}, Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;->setCurrentEpisodeListViewController(Lcom/amazon/falkor/panels/EpisodeListViewController;)V

    .line 79
    invoke-virtual {v2}, Lcom/amazon/falkor/panels/EpisodeListViewController;->reportMetrics()V

    return-object v1

    .line 68
    :cond_0
    new-instance v1, Lkotlin/TypeCastException;

    const-string/jumbo v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic getIconComponent()Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/amazon/falkor/panels/EpisodeListViewContainerRow;->getIconComponent()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;

    return-object v0
.end method

.method public getIconComponent()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPanelStatus()Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 1

    .line 96
    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object v0
.end method

.method public getPanelTheme()Lcom/amazon/kindle/krx/ui/panels/PanelTheme;
    .locals 1

    .line 94
    sget-object v0, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;->DEFAULT:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    return-object v0
.end method

.method public getSelectedView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    const-string/jumbo v0, "parentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selected"

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Landroid/view/View;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic getTextComponent()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/amazon/falkor/panels/EpisodeListViewContainerRow;->getTextComponent()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

    return-object v0
.end method

.method public getTextComponent()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick()V
    .locals 0

    return-void
.end method
