.class Lcom/amazon/kcp/reader/BookReaderActivity$3;
.super Ljava/lang/Object;
.source "BookReaderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

    .line 401
    iput-object p1, p0, Lcom/amazon/kcp/reader/BookReaderActivity$3;->this$0:Lcom/amazon/kcp/reader/BookReaderActivity;

    iput p2, p0, Lcom/amazon/kcp/reader/BookReaderActivity$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity$3;->this$0:Lcom/amazon/kcp/reader/BookReaderActivity;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onShow(Landroid/content/DialogInterface;)V

    .line 408
    :cond_0
    iget p1, p0, Lcom/amazon/kcp/reader/BookReaderActivity$3;->val$id:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 409
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 411
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "NotePopupDialog"

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
