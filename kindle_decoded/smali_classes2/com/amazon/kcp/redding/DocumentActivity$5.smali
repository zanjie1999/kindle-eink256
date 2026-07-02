.class Lcom/amazon/kcp/redding/DocumentActivity$5;
.super Ljava/lang/Object;
.source "DocumentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/redding/DocumentActivity;->onActivityResumed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/redding/DocumentActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/DocumentActivity;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity$5;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 380
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity$5;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    invoke-static {v0}, Lcom/amazon/kcp/redding/DocumentActivity;->access$300(Lcom/amazon/kcp/redding/DocumentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity$5;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    iget-object v0, v0, Lcom/amazon/kcp/redding/DocumentActivity;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/reader/ReaderControllerEvent;

    sget-object v2, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_OPENED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    iget-object v3, p0, Lcom/amazon/kcp/redding/DocumentActivity$5;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    iget-object v3, v3, Lcom/amazon/kcp/redding/DocumentActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    iget-object v4, p0, Lcom/amazon/kcp/redding/DocumentActivity$5;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    iget-object v4, v4, Lcom/amazon/kcp/redding/DocumentActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/reader/ReaderControllerEvent;-><init>(Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    :catch_0
    invoke-static {}, Lcom/amazon/kcp/redding/DocumentActivity;->access$000()Ljava/lang/String;

    .line 387
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity$5;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/redding/DocumentActivity;->access$302(Lcom/amazon/kcp/redding/DocumentActivity;Z)Z

    return-void
.end method
