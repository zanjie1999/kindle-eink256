.class public Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$StoreResultClickHandler;
.super Ljava/lang/Object;
.source "SearchResultsRecyclerAdapter.java"

# interfaces
.implements Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder$ClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StoreResultClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;


# direct methods
.method protected constructor <init>(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$StoreResultClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/amazon/kcp/search/store/StoreContentMetadata;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$StoreResultClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->access$000(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)Lcom/amazon/kcp/search/SearchInteractionHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 86
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$StoreResultClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-static {v2}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->access$600(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$StoreResultClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-static {v2}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->access$600(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;

    invoke-virtual {v2}, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;->getStoreItem()Lcom/amazon/kcp/search/store/StoreContentMetadata;

    move-result-object v2

    if-ne v2, p1, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$StoreResultClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-static {v1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->access$000(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)Lcom/amazon/kcp/search/SearchInteractionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$StoreResultClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-static {v2}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->access$300(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)I

    move-result v2

    invoke-interface {v1, v2, p1, v0}, Lcom/amazon/kcp/search/SearchInteractionHandler;->onStoreItemSelected(ILcom/amazon/kcp/search/store/StoreContentMetadata;I)V

    :cond_2
    return-void
.end method
