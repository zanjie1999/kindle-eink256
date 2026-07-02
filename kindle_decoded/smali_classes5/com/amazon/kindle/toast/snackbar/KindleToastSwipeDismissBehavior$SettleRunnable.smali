.class final Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "KindleToastSwipeDismissBehavior.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettleRunnable"
.end annotation


# instance fields
.field private final dismiss:Z

.field final synthetic this$0:Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$SettleRunnable;->this$0:Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$SettleRunnable;->view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$SettleRunnable;->dismiss:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$SettleRunnable;->this$0:Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;

    invoke-static {v0}, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->access$getViewDragHelper$p(Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$SettleRunnable;->view:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$SettleRunnable;->dismiss:Z

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$SettleRunnable;->this$0:Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;

    invoke-static {v0}, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->access$getOnDismissListener$p(Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;)Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$SettleRunnable;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
