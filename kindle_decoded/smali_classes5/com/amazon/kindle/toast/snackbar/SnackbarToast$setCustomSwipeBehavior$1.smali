.class public final Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setCustomSwipeBehavior$1;
.super Ljava/lang/Object;
.source "SnackbarToast.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->setCustomSwipeBehavior(Lcom/amazon/kindle/toast/snackbar/Snackbar;Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $dismissHandler:Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;

.field final synthetic $snackbar:Lcom/amazon/kindle/toast/snackbar/Snackbar;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/toast/snackbar/Snackbar;Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setCustomSwipeBehavior$1;->$snackbar:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    iput-object p2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setCustomSwipeBehavior$1;->$dismissHandler:Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setCustomSwipeBehavior$1;->$snackbar:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "snackbar.view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 161
    instance-of v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 162
    new-instance v2, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;

    invoke-direct {v2}, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;-><init>()V

    .line 163
    new-instance v3, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setCustomSwipeBehavior$1$onGlobalLayout$1;

    invoke-direct {v3, p0}, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setCustomSwipeBehavior$1$onGlobalLayout$1;-><init>(Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setCustomSwipeBehavior$1;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->setOnDismissListener(Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$OnDismissListener;)V

    .line 168
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setCustomSwipeBehavior$1;->$snackbar:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
