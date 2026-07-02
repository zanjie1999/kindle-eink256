.class Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;
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

.field final synthetic val$navigationDirection:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

.field final synthetic val$navigationType:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    iput-object p2, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->val$navigationType:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    iput-object p3, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->val$navigationDirection:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Error while unlocking  loadingCurScreenLock in getScreenForCurrentPage"

    .line 817
    iget-object v1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-virtual {v1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 822
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-static {v1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$400(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 823
    iget-object v1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    iget-object v2, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-static {v2}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$600(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$502(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-static {v1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$400(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    :catch_0
    move-exception v1

    .line 825
    :try_start_2
    invoke-static {}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error while acquiring lock and processing getScreenForCurrentPage"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 828
    :try_start_3
    iget-object v1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-static {v1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$400(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 830
    invoke-static {}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 834
    :goto_0
    sget-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->GOTO_POSITION:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;

    .line 835
    iget-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->val$navigationType:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->ADJACENT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->val$navigationDirection:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->NEXT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    if-ne v0, v1, :cond_1

    .line 836
    sget-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->NEXT_PAGE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;

    goto :goto_1

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->val$navigationType:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->ADJACENT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->val$navigationDirection:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->PREVIOUS:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    if-ne v0, v1, :cond_3

    .line 838
    sget-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->PREVIOUS_PAGE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;

    .line 846
    :goto_1
    iget-object v1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-static {v1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$700(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-static {v1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$500(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 847
    iget-object v1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-static {v1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$800(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-static {v2}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$700(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-static {v3}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$500(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->logInterval(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;)Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    goto :goto_2

    .line 849
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-static {v0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$800(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->resetTimer()V

    .line 855
    :goto_2
    iget-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-static {v0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$500(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$702(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    return-void

    .line 842
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-static {v0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$500(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$702(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    return-void

    .line 828
    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-static {v2}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$400(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    .line 830
    invoke-static {}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 832
    :goto_4
    throw v1
.end method
