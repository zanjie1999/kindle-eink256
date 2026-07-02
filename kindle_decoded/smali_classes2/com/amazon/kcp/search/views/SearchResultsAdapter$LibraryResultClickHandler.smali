.class public Lcom/amazon/kcp/search/views/SearchResultsAdapter$LibraryResultClickHandler;
.super Ljava/lang/Object;
.source "SearchResultsAdapter.java"

# interfaces
.implements Lcom/amazon/kcp/search/SearchResult$ClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/views/SearchResultsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LibraryResultClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/SearchResultsAdapter;


# direct methods
.method protected constructor <init>(Lcom/amazon/kcp/search/views/SearchResultsAdapter;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$LibraryResultClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/amazon/kcp/search/SearchResult;Landroid/view/View;)V
    .locals 3

    .line 46
    instance-of v0, p1, Lcom/amazon/kcp/search/ContentResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$LibraryResultClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsAdapter;

    iget-object v1, v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->interactionHandler:Lcom/amazon/kcp/search/SearchInteractionHandler;

    if-eqz v1, :cond_0

    .line 47
    check-cast p1, Lcom/amazon/kcp/search/ContentResult;

    .line 48
    invoke-static {v0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->access$000(Lcom/amazon/kcp/search/views/SearchResultsAdapter;)I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/ContentResult;->getMetadata()Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kcp/search/ContentResult;->getIndex()I

    move-result p1

    invoke-interface {v1, v0, v2, p1, p2}, Lcom/amazon/kcp/search/SearchInteractionHandler;->onLibraryItemSelected(ILcom/amazon/kindle/model/content/IListableBook;ILandroid/view/View;)V

    :cond_0
    return-void
.end method
