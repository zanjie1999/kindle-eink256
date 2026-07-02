.class Lcom/amazon/kcp/reader/BookReaderActivity$1;
.super Ljava/lang/Object;
.source "BookReaderActivity.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/BookReaderActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/BookReaderActivity;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/BookReaderActivity;Landroid/content/Intent;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/amazon/kcp/reader/BookReaderActivity$1;->this$0:Lcom/amazon/kcp/reader/BookReaderActivity;

    iput-object p2, p0, Lcom/amazon/kcp/reader/BookReaderActivity$1;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldRenderAfterGoingBack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public takeAction()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity$1;->this$0:Lcom/amazon/kcp/reader/BookReaderActivity;

    iget-object v1, p0, Lcom/amazon/kcp/reader/BookReaderActivity$1;->val$data:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->startNotesActivity(Landroid/os/Bundle;)V

    return-void
.end method
