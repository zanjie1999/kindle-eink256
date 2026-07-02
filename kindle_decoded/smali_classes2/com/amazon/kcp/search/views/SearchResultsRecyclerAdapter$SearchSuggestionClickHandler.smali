.class public Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$SearchSuggestionClickHandler;
.super Ljava/lang/Object;
.source "SearchResultsRecyclerAdapter.java"

# interfaces
.implements Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder$ClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SearchSuggestionClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;


# direct methods
.method protected constructor <init>(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$SearchSuggestionClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$SearchSuggestionClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->access$000(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)Lcom/amazon/kcp/search/SearchInteractionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$SearchSuggestionClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->access$100(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$SearchSuggestionClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-static {v1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->access$000(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)Lcom/amazon/kcp/search/SearchInteractionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$SearchSuggestionClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-static {v2}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->access$200(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)I

    move-result v2

    invoke-interface {v1, v2, p1, v0}, Lcom/amazon/kcp/search/SearchInteractionHandler;->onSuggestionSelected(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method
