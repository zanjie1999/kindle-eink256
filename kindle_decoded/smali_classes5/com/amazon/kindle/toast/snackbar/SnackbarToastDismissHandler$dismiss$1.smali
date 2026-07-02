.class public final Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler$dismiss$1;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "SnackbarToast.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler$dismiss$1;->this$0:Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    .line 213
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler$dismiss$1;->this$0:Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;

    invoke-static {p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;->access$dismissSnackbar(Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 0

    .line 217
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler$dismiss$1;->this$0:Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;

    invoke-static {p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;->access$dismissSnackbar(Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;)V

    return-void
.end method
