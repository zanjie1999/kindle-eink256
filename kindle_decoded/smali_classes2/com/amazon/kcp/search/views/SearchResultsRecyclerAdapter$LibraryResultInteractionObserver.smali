.class public Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$LibraryResultInteractionObserver;
.super Ljava/lang/Object;
.source "SearchResultsRecyclerAdapter.java"

# interfaces
.implements Lcom/amazon/kcp/search/views/LibraryItemInteractionObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LibraryResultInteractionObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;


# direct methods
.method protected constructor <init>(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$LibraryResultInteractionObserver;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemInteracted(Lcom/amazon/kindle/model/content/IListableBook;Landroid/view/View;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$LibraryResultInteractionObserver;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->access$000(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)Lcom/amazon/kcp/search/SearchInteractionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$LibraryResultInteractionObserver;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->access$400(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$LibraryResultInteractionObserver;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-static {v1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->access$000(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)Lcom/amazon/kcp/search/SearchInteractionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$LibraryResultInteractionObserver;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-static {v2}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->access$500(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)I

    move-result v2

    invoke-interface {v1, v2, p1, v0, p2}, Lcom/amazon/kcp/search/SearchInteractionHandler;->onLibraryItemSelected(ILcom/amazon/kindle/model/content/IListableBook;ILandroid/view/View;)V

    :cond_0
    return-void
.end method
