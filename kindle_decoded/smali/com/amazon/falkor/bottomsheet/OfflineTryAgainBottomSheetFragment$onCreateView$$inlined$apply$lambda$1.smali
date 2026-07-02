.class final Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$onCreateView$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "OfflineBottomSheetFragments.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineBottomSheetFragments.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineBottomSheetFragments.kt\ncom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$onCreateView$item$1$1\n*L\n1#1,156:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$onCreateView$$inlined$apply$lambda$1;->this$0:Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$onCreateView$$inlined$apply$lambda$1;->this$0:Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;->access$getRefreshEvent(Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;Z)Lcom/amazon/kindle/krx/events/IEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$onCreateView$$inlined$apply$lambda$1;->this$0:Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;

    invoke-static {v1}, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;->access$getMessageQueue$p(Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;)Lkotlin/Lazy;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 97
    :cond_0
    sget v0, Lcom/amazon/falkor/R$id;->bottom_sheet_try_again_button_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x43b40000    # 360.0f

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 100
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 101
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method
