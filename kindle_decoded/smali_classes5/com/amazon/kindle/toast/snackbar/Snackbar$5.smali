.class Lcom/amazon/kindle/toast/snackbar/Snackbar$5;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout$OnLayoutChangeListener;


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

    .line 394
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$5;->this$0:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 0

    .line 397
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$5;->this$0:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    invoke-static {p1}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->access$600(Lcom/amazon/kindle/toast/snackbar/Snackbar;)Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;->setOnLayoutChangeListener(Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout$OnLayoutChangeListener;)V

    .line 398
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$5;->this$0:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    invoke-static {p1}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->access$700(Lcom/amazon/kindle/toast/snackbar/Snackbar;)V

    return-void
.end method
