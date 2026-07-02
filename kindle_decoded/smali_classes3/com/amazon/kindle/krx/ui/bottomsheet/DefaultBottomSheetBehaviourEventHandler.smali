.class public Lcom/amazon/kindle/krx/ui/bottomsheet/DefaultBottomSheetBehaviourEventHandler;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "DefaultBottomSheetBehaviourEventHandler.kt"


# instance fields
.field private final fragment:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/DefaultBottomSheetBehaviourEventHandler;->fragment:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;

    return-void
.end method


# virtual methods
.method public final getFragment()Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/DefaultBottomSheetBehaviourEventHandler;->fragment:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;

    return-object v0
.end method

.method public onSlide(Landroid/view/View;F)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/DefaultBottomSheetBehaviourEventHandler;->fragment:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->getDragIconUpdateManager()Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;->setSlideOffset(F)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/DefaultBottomSheetBehaviourEventHandler;->fragment:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->dismiss()V

    :cond_0
    return-void
.end method
