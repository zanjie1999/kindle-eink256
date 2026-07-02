.class public final Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator$showWithCustomAnimation$1;
.super Ljava/lang/Object;
.source "SnackbarToast.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;->showWithCustomAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $snackbarView:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator$showWithCustomAnimation$1;->this$0:Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;

    iput-object p2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator$showWithCustomAnimation$1;->$snackbarView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 249
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator$showWithCustomAnimation$1;->$snackbarView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 250
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator$showWithCustomAnimation$1;->this$0:Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;

    invoke-static {p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;->access$animateViewIn(Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;)V

    return-void
.end method
