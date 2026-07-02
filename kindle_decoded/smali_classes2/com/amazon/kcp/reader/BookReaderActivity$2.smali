.class Lcom/amazon/kcp/reader/BookReaderActivity$2;
.super Ljava/lang/Object;
.source "BookReaderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/BookReaderActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/BookReaderActivity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/BookReaderActivity;I)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/amazon/kcp/reader/BookReaderActivity$2;->this$0:Lcom/amazon/kcp/reader/BookReaderActivity;

    iput p2, p0, Lcom/amazon/kcp/reader/BookReaderActivity$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity$2;->this$0:Lcom/amazon/kcp/reader/BookReaderActivity;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onDismiss(Landroid/content/DialogInterface;)V

    .line 397
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/BookReaderActivity$2;->this$0:Lcom/amazon/kcp/reader/BookReaderActivity;

    iget v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity$2;->val$id:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->removeDialog(I)V

    return-void
.end method
