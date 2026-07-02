.class Lcom/amazon/kindle/toast/snackbar/Snackbar$4$1;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/toast/snackbar/Snackbar$4;->onViewDetachedFromWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/toast/snackbar/Snackbar$4;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/toast/snackbar/Snackbar$4;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$4$1;->this$1:Lcom/amazon/kindle/toast/snackbar/Snackbar$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$4$1;->this$1:Lcom/amazon/kindle/toast/snackbar/Snackbar$4;

    iget-object v0, v0, Lcom/amazon/kindle/toast/snackbar/Snackbar$4;->this$0:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->access$500(Lcom/amazon/kindle/toast/snackbar/Snackbar;I)V

    return-void
.end method
