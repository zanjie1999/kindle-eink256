.class public final Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener;
.super Ljava/lang/Object;
.source "InlineSearchRecyclerViewScrollListener.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private attached:Z

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class v0, Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 24
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener;->attach()V

    return-void
.end method


# virtual methods
.method public final attach()V
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener;->attached:Z

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener;->attached:Z

    return-void
.end method

.method public final detach()V
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener;->attached:Z

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener;->attached:Z

    return-void
.end method

.method public final onLibraryApplyInlineSearchFilterEvent(Lcom/amazon/kindle/event/LibraryApplyInlineSearchFilterEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener$onLibraryApplyInlineSearchFilterEvent$1;

    invoke-direct {v1, p1}, Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener$onLibraryApplyInlineSearchFilterEvent$1;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener;->attach()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener;->detach()V

    return-void
.end method
