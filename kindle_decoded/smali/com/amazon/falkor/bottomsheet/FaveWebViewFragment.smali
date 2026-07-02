.class public final Lcom/amazon/falkor/bottomsheet/FaveWebViewFragment;
.super Lcom/amazon/falkor/bottomsheet/CachedWebViewFragment;
.source "FaveBottomSheetController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/falkor/bottomsheet/FaveWebViewFragment$CreateDelegate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 218
    sget-object v0, Lcom/amazon/falkor/BottomSheetID;->FAVE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    invoke-virtual {v0}, Lcom/amazon/falkor/BottomSheetID;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/falkor/bottomsheet/CachedWebViewFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getRefreshEvent()Lcom/amazon/falkor/event/FaveBottomSheetRefreshEvent;
    .locals 1

    .line 221
    new-instance v0, Lcom/amazon/falkor/event/FaveBottomSheetRefreshEvent;

    invoke-direct {v0}, Lcom/amazon/falkor/event/FaveBottomSheetRefreshEvent;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getRefreshEvent()Lcom/amazon/kindle/krx/events/IEvent;
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/FaveWebViewFragment;->getRefreshEvent()Lcom/amazon/falkor/event/FaveBottomSheetRefreshEvent;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/falkor/R$color;->fave_bg_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 225
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/falkor/BaseWebViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected shouldShowHandle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
