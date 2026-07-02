.class public Lcom/amazon/kcp/search/views/SearchResultsAdapter$GoToStoreClickHandler;
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
    name = "GoToStoreClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/SearchResultsAdapter;


# direct methods
.method protected constructor <init>(Lcom/amazon/kcp/search/views/SearchResultsAdapter;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$GoToStoreClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/amazon/kcp/search/SearchResult;Landroid/view/View;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$GoToStoreClickHandler;->this$0:Lcom/amazon/kcp/search/views/SearchResultsAdapter;

    iget-object p2, p1, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->interactionHandler:Lcom/amazon/kcp/search/SearchInteractionHandler;

    if-eqz p2, :cond_0

    .line 64
    invoke-static {p1}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->access$000(Lcom/amazon/kcp/search/views/SearchResultsAdapter;)I

    move-result p1

    invoke-interface {p2, p1}, Lcom/amazon/kcp/search/SearchInteractionHandler;->onGoToStoreSelected(I)V

    :cond_0
    return-void
.end method
