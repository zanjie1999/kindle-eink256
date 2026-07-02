.class Lcom/amazon/kcp/reader/ReaderActivity$19;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->setDialogListeners(ILandroid/app/Dialog;Lcom/amazon/kcp/reader/DialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;

.field final synthetic val$listener:Lcom/amazon/kcp/reader/DialogListener;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/DialogListener;)V
    .locals 0

    .line 2862
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$19;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderActivity$19;->val$listener:Lcom/amazon/kcp/reader/DialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 2865
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$19;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$1602(Lcom/amazon/kcp/reader/ReaderActivity;Z)Z

    .line 2867
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$19;->val$listener:Lcom/amazon/kcp/reader/DialogListener;

    if-eqz v0, :cond_0

    .line 2868
    invoke-interface {v0, p1}, Lcom/amazon/kcp/reader/DialogListener;->onShow(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
