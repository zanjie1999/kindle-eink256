.class Lcom/amazon/kcp/reader/ui/ThumbnailService$IncomingMessageHandler;
.super Landroid/os/Handler;
.source "ThumbnailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncomingMessageHandler"
.end annotation


# instance fields
.field private parent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/kcp/reader/ui/ThumbnailService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/kcp/reader/ui/ThumbnailService;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService$IncomingMessageHandler;->parent:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService$IncomingMessageHandler;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ThumbnailService;

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 126
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {v0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->access$000(Lcom/amazon/kcp/reader/ui/ThumbnailService;Landroid/os/Message;)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->openNewPdfDocument(Landroid/os/Message;)V

    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->renderAndReply(Landroid/os/Message;)V

    :goto_0
    return-void
.end method
