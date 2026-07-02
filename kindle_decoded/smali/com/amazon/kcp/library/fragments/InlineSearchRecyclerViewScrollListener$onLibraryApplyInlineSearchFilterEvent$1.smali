.class final Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener$onLibraryApplyInlineSearchFilterEvent$1;
.super Ljava/lang/Object;
.source "InlineSearchRecyclerViewScrollListener.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener;->onLibraryApplyInlineSearchFilterEvent(Lcom/amazon/kindle/event/LibraryApplyInlineSearchFilterEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $recyclerViewReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener$onLibraryApplyInlineSearchFilterEvent$1;->$recyclerViewReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener$onLibraryApplyInlineSearchFilterEvent$1;->$recyclerViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method
