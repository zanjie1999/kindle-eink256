.class final synthetic Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onDestroy$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.source "BaseBottomSheetFragment.kt"


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;)V
    .locals 6

    const-class v2, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;

    const-string v3, "behavior"

    const-string v4, "getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;

    .line 261
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;

    .line 261
    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->setBehavior(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-void
.end method
