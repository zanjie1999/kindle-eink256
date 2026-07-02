.class Lcom/amazon/kindle/toast/snackbar/Snackbar$4;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/toast/snackbar/Snackbar;->showView()V
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

    .line 368
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$4;->this$0:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 375
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$4;->this$0:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    invoke-static {p1}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->access$400(Lcom/amazon/kindle/toast/snackbar/Snackbar;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 380
    invoke-static {}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->access$300()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/toast/snackbar/Snackbar$4$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/toast/snackbar/Snackbar$4$1;-><init>(Lcom/amazon/kindle/toast/snackbar/Snackbar$4;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
