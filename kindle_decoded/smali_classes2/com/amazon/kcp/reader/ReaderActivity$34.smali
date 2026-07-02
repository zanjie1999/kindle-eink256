.class Lcom/amazon/kcp/reader/ReaderActivity$34;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Landroid/app/SearchManager$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->onRefreshLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 5132
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$34;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 5136
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$34;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$34;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 5137
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5138
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$34;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$3002(Lcom/amazon/kcp/reader/ReaderActivity;Z)Z

    :cond_0
    return-void
.end method
