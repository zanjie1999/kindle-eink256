.class public final Lcom/amazon/falkor/bottomsheet/OfflineNextEpisodeBottomSheetFragment;
.super Lcom/amazon/falkor/BaseRefreshableFragment;
.source "OfflineBottomSheetFragments.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineBottomSheetFragments.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineBottomSheetFragments.kt\ncom/amazon/falkor/bottomsheet/OfflineNextEpisodeBottomSheetFragment\n*L\n1#1,156:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amazon/falkor/BaseRefreshableFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRefreshEvent()Lcom/amazon/falkor/event/EOEBottomSheetRefreshEvent;
    .locals 2

    .line 41
    new-instance v0, Lcom/amazon/falkor/event/EOEBottomSheetRefreshEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/falkor/event/EOEBottomSheetRefreshEvent;-><init>(Z)V

    return-object v0
.end method

.method public bridge synthetic getRefreshEvent()Lcom/amazon/kindle/krx/events/IEvent;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/OfflineNextEpisodeBottomSheetFragment;->getRefreshEvent()Lcom/amazon/falkor/event/EOEBottomSheetRefreshEvent;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const-string/jumbo v0, "next_episode_asin"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 45
    sget-object v0, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v0}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    if-eqz p2, :cond_1

    .line 49
    sget-object v0, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    sget-object v1, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v1}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sdk.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    sget-object v3, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v3}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->isReaderInDarkMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->getContextThemeWrapper(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 51
    sget v1, Lcom/amazon/falkor/R$layout;->bottom_sheet_next_episode_button:I

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 52
    sget v0, Lcom/amazon/falkor/R$id;->bottom_sheet_next_episode_button:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 53
    sget-object v1, Lcom/amazon/falkor/utils/FalkorFontUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorFontUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/amazon/falkor/utils/FalkorFontUtils;->getEmberRegularTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 54
    new-instance v1, Lcom/amazon/falkor/bottomsheet/OfflineNextEpisodeBottomSheetFragment$onCreateView$$inlined$let$lambda$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/falkor/bottomsheet/OfflineNextEpisodeBottomSheetFragment$onCreateView$$inlined$let$lambda$1;-><init>(Lcom/amazon/falkor/bottomsheet/OfflineNextEpisodeBottomSheetFragment;Landroid/view/LayoutInflater;Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p3
.end method
