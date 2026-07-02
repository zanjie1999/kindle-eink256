.class Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$3;
.super Ljava/lang/Object;
.source "BaseTicrDocViewerEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->onDocViewerAfterPositionChanged(Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)V
    .locals 0

    .line 791
    iput-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$3;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Error while unlocking loadingCurScreenLock in getScreenForCurrentPage with ignorePageTurn"

    .line 796
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$3;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-static {v1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$400(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 797
    iget-object v1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$3;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    iget-object v2, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$3;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-static {v2}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$600(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$502(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$3;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-static {v1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$400(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 799
    :try_start_2
    invoke-static {}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error while acquiring lock and processing getScreenForCurrentPage with ignorePageTurn"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 802
    :try_start_3
    iget-object v1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$3;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-static {v1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$400(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 804
    invoke-static {}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 802
    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$3;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-static {v2}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$400(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 804
    invoke-static {}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 806
    :goto_2
    throw v1
.end method
