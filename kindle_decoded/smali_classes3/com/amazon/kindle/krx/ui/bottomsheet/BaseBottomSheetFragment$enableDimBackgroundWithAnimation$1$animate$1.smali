.class final Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$enableDimBackgroundWithAnimation$1$animate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseBottomSheetFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->enableDimBackgroundWithAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/ViewPropertyAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $animationDur:J

.field final synthetic $it:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;J)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$enableDimBackgroundWithAnimation$1$animate$1;->$it:Landroid/view/View;

    iput-wide p2, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$enableDimBackgroundWithAnimation$1$animate$1;->$animationDur:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/ViewPropertyAnimator;
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$enableDimBackgroundWithAnimation$1$animate$1;->$it:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$enableDimBackgroundWithAnimation$1$animate$1;->$it:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 205
    iget-wide v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$enableDimBackgroundWithAnimation$1$animate$1;->$animationDur:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$enableDimBackgroundWithAnimation$1$animate$1;->invoke()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method
