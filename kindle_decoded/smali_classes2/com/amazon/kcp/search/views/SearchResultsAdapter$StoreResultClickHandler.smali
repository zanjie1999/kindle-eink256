.class public Lcom/amazon/kcp/search/views/SearchResultsAdapter$StoreResultClickHandler;
.super Ljava/lang/Object;
.source "SearchResultsAdapter.java"

# interfaces
.implements Lcom/amazon/kcp/search/StoreGroupResult$ClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/views/SearchResultsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StoreResultClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/SearchResultsAdapter;


# direct methods
.method protected constructor <init>(Lcom/amazon/kcp/search/views/SearchResultsAdapter;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$StoreResultClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/amazon/kcp/search/store/StoreContentMetadata;I)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$StoreResultClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsAdapter;

    iget-object v1, v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->interactionHandler:Lcom/amazon/kcp/search/SearchInteractionHandler;

    if-eqz v1, :cond_0

    .line 56
    invoke-static {v0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->access$000(Lcom/amazon/kcp/search/views/SearchResultsAdapter;)I

    move-result v0

    invoke-interface {v1, v0, p1, p2}, Lcom/amazon/kcp/search/SearchInteractionHandler;->onStoreItemSelected(ILcom/amazon/kcp/search/store/StoreContentMetadata;I)V

    :cond_0
    return-void
.end method
