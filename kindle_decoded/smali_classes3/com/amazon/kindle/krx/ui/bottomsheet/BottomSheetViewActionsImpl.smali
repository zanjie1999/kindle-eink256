.class public final Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetViewActionsImpl;
.super Ljava/lang/Object;
.source "BottomSheetViewActionsImpl.kt"

# interfaces
.implements Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;


# instance fields
.field private final fragment:Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetViewActionsImpl;->fragment:Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;

    return-void
.end method


# virtual methods
.method public disableDimBackground()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetViewActionsImpl;->fragment:Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;->disableDimBackground()V

    return-void
.end method

.method public disableDimBackgroundWithAnimation()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetViewActionsImpl;->fragment:Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;->disableDimBackgroundWithAnimation()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetViewActionsImpl;->fragment:Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public enableDimBackground()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetViewActionsImpl;->fragment:Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;->enableDimBackground()V

    return-void
.end method

.method public enableDimBackgroundWithAnimation()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetViewActionsImpl;->fragment:Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;->enableDimBackgroundWithAnimation()V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetViewActionsImpl;->fragment:Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetViewActionsImpl;->fragment:Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;->setMaxHeight(I)V

    return-void
.end method

.method public setPeekHeight(I)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetViewActionsImpl;->fragment:Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "PEEK_HEIGHT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetViewActionsImpl;->fragment:Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    return-void
.end method

.method public setState(I)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetViewActionsImpl;->fragment:Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void
.end method
