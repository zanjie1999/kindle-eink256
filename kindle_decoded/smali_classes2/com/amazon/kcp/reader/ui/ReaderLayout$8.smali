.class Lcom/amazon/kcp/reader/ui/ReaderLayout$8;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout;->onDocViewerInitialDrawEvent(Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field final synthetic val$bookInfo:Lcom/amazon/kindle/model/content/ILocalBookInfo;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/kindle/model/content/ILocalBookInfo;)V
    .locals 0

    .line 1922
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->val$bookInfo:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1927
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 1929
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->inflateLocationSeeker()V

    .line 1930
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 1936
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->val$bookInfo:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    const-wide/16 v3, 0x5dc

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->val$bookInfo:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1937
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout$8;Z)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1952
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$200(Lcom/amazon/kcp/reader/ui/ReaderLayout;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 1953
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$200(Lcom/amazon/kcp/reader/ui/ReaderLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

    .line 1954
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;->onDocViewerInitialDraw()V

    goto :goto_2

    .line 1956
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1960
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_5

    .line 1961
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    new-instance v1, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$2;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout$8;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 1968
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$300()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/tutorial/BookOpenAccessibilityReadyEvent;

    invoke-direct {v1}, Lcom/amazon/kindle/tutorial/BookOpenAccessibilityReadyEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 1971
    :goto_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    new-instance v1, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$3;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout$8;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v1

    .line 1956
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
