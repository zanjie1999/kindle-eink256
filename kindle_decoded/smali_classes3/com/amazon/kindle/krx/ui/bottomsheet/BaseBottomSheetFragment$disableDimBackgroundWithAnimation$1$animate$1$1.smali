.class public final Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$disableDimBackgroundWithAnimation$1$animate$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseBottomSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$disableDimBackgroundWithAnimation$1$animate$1;->invoke()Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$disableDimBackgroundWithAnimation$1$animate$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$disableDimBackgroundWithAnimation$1$animate$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$disableDimBackgroundWithAnimation$1$animate$1$1;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$disableDimBackgroundWithAnimation$1$animate$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$disableDimBackgroundWithAnimation$1$animate$1$1;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$disableDimBackgroundWithAnimation$1$animate$1;

    iget-object p1, p1, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$disableDimBackgroundWithAnimation$1$animate$1;->$it:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
