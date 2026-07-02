.class Lcom/amazon/kindle/toast/snackbar/Snackbar$3;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/toast/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/toast/snackbar/Snackbar;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/toast/snackbar/Snackbar;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$3;->this$0:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(I)V
    .locals 5

    .line 359
    invoke-static {}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->access$300()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->access$300()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$3;->this$0:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public show()V
    .locals 4

    .line 354
    invoke-static {}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->access$300()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->access$300()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$3;->this$0:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
