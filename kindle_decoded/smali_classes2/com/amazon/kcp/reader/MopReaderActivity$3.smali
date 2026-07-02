.class Lcom/amazon/kcp/reader/MopReaderActivity$3;
.super Ljava/lang/Object;
.source "MopReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/MopReaderActivity;->adjustOverlayAfterAnnotationLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/MopReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/MopReaderActivity;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/amazon/kcp/reader/MopReaderActivity$3;->this$0:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 283
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity$3;->this$0:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 289
    iget-object v1, p0, Lcom/amazon/kcp/reader/MopReaderActivity$3;->this$0:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/redding/ReddingActivity;->setupCustomButtons()V

    .line 290
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v1

    .line 291
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v2

    const/4 v3, 0x0

    .line 293
    invoke-virtual {v0, v1, v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-nez v1, :cond_0

    .line 296
    iget-object v4, p0, Lcom/amazon/kcp/reader/MopReaderActivity$3;->this$0:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-static {v4}, Lcom/amazon/kcp/reader/MopReaderActivity;->access$700(Lcom/amazon/kcp/reader/MopReaderActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->flashOverlays()V

    :cond_0
    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    .line 302
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity$3;->this$0:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/MopReaderActivity;->access$700(Lcom/amazon/kcp/reader/MopReaderActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0, v3}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setOverlaysVisible(ZZ)V

    :cond_3
    return-void
.end method
