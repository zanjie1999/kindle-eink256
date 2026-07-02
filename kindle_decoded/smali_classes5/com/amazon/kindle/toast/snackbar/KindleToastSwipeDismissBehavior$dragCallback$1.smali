.class public final Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "KindleToastSwipeDismissBehavior.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private activePointerId:I

.field private originalCapturedViewTop:I

.field final synthetic this$0:Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;->this$0:Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;->activePointerId:I

    return-void
.end method

.method private final shouldDismiss(Landroid/view/View;F)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpg-float p2, p2, v2

    if-eqz p2, :cond_0

    if-gez p2, :cond_1

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget v2, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;->originalCapturedViewTop:I

    sub-int/2addr p2, v2

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float p1, p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 90
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lt p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 0

    const-string p2, "child"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    return p1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0

    const-string p3, "child"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget p3, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;->originalCapturedViewTop:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p3, p1

    .line 114
    iget p1, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;->originalCapturedViewTop:I

    .line 116
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 1

    const-string v0, "capturedChild"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput p2, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;->activePointerId:I

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;->originalCapturedViewTop:I

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 54
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 3

    const-string p2, "child"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 59
    iput p2, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;->activePointerId:I

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 65
    invoke-direct {p0, p1, p3}, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;->shouldDismiss(Landroid/view/View;F)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 66
    iget p3, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;->originalCapturedViewTop:I

    sub-int/2addr p3, p2

    const/4 p2, 0x1

    goto :goto_0

    .line 70
    :cond_0
    iget p3, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;->originalCapturedViewTop:I

    const/4 p2, 0x0

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;->this$0:Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;

    invoke-static {v1}, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->access$getViewDragHelper$p(Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2, p3}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result p3

    if-ne p3, v0, :cond_1

    .line 74
    new-instance p3, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$SettleRunnable;

    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;->this$0:Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;

    invoke-direct {p3, v0, p1, p2}, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$SettleRunnable;-><init>(Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-static {p1, p3}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 76
    iget-object p2, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;->this$0:Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;

    invoke-static {p2}, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->access$getOnDismissListener$p(Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;)Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$OnDismissListener;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    const-string p2, "child"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget p1, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;->activePointerId:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
