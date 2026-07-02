.class public final Lcom/amazon/falkor/bottomsheet/EndOfEpisodeWebViewFragment;
.super Lcom/amazon/falkor/bottomsheet/CachedWebViewFragment;
.source "EndOfEpisodeController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/falkor/bottomsheet/EndOfEpisodeWebViewFragment$CreateDelegate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 296
    sget-object v0, Lcom/amazon/falkor/BottomSheetID;->NEXT_EPISODE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    invoke-virtual {v0}, Lcom/amazon/falkor/BottomSheetID;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/falkor/bottomsheet/CachedWebViewFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getRefreshEvent()Lcom/amazon/falkor/event/EOEBottomSheetRefreshEvent;
    .locals 2

    .line 306
    new-instance v0, Lcom/amazon/falkor/event/EOEBottomSheetRefreshEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/falkor/event/EOEBottomSheetRefreshEvent;-><init>(Z)V

    return-object v0
.end method

.method public bridge synthetic getRefreshEvent()Lcom/amazon/kindle/krx/events/IEvent;
    .locals 1

    .line 296
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeWebViewFragment;->getRefreshEvent()Lcom/amazon/falkor/event/EOEBottomSheetRefreshEvent;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    sget-object v0, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    sget-object v1, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v1}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->isReaderInDarkMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 301
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/falkor/R$color;->eoe_bg_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 303
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/falkor/BaseWebViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onNextEpisodeClickEvent(Lcom/amazon/falkor/event/NextEpisodeClickEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/amazon/falkor/BaseRefreshableFragment;->markForRefreshOnResume()V

    return-void
.end method

.method protected shouldShowHandle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
