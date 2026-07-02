.class final Lcom/amazon/kindle/toast/snackbar/Snackbar$1;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/toast/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 122
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/toast/snackbar/Snackbar;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->access$100(Lcom/amazon/kindle/toast/snackbar/Snackbar;I)V

    return v1

    .line 119
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amazon/kindle/toast/snackbar/Snackbar;

    invoke-static {p1}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->access$000(Lcom/amazon/kindle/toast/snackbar/Snackbar;)V

    return v1
.end method
