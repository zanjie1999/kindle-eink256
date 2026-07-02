.class Lcom/amazon/kcp/reader/ReaderActivity$18;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 2849
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$18;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderActivity$18;->val$listener:Lcom/amazon/kcp/reader/DialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 2852
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$18;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    .line 2853
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onCancel(Landroid/content/DialogInterface;)V

    .line 2856
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$18;->val$listener:Lcom/amazon/kcp/reader/DialogListener;

    if-eqz v0, :cond_1

    .line 2857
    invoke-interface {v0, p1}, Lcom/amazon/kcp/reader/DialogListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_1
    return-void
.end method
