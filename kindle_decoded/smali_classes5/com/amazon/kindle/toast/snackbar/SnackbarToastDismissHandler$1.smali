.class final Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler$1;
.super Ljava/lang/Object;
.source "SnackbarToast.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;-><init>(Lcom/amazon/kindle/toast/snackbar/Snackbar;Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler$1;->this$0:Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler$1;->this$0:Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;

    invoke-virtual {v0}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;->dismiss()V

    return-void
.end method
