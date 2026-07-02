.class public final Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetBehaviourDelegator;
.super Lcom/amazon/kindle/krx/ui/bottomsheet/DefaultBottomSheetBehaviourEventHandler;
.source "BottomSheetBehaviourDelegator.kt"


# instance fields
.field private final behaviourEventHandler:Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/ui/bottomsheet/DefaultBottomSheetBehaviourEventHandler;-><init>(Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;)V

    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetBehaviourDelegator;->behaviourEventHandler:Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/krx/ui/bottomsheet/DefaultBottomSheetBehaviourEventHandler;->onSlide(Landroid/view/View;F)V

    .line 15
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetBehaviourDelegator;->behaviourEventHandler:Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;->onSlide(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/krx/ui/bottomsheet/DefaultBottomSheetBehaviourEventHandler;->onStateChanged(Landroid/view/View;I)V

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetBehaviourDelegator;->behaviourEventHandler:Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;->onStateChange(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
