.class public Lcom/amazon/kcp/search/StoreGroupResult;
.super Lcom/amazon/kcp/search/SearchResult;
.source "StoreGroupResult.java"

# interfaces
.implements Lcom/amazon/kcp/search/StoreResultsLayout$ClickHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/StoreGroupResult$ClickHandler;
    }
.end annotation


# instance fields
.field private clickHandler:Lcom/amazon/kcp/search/StoreGroupResult$ClickHandler;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private visibleItemCount:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/amazon/kcp/search/StoreGroupResult$ClickHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;",
            "Lcom/amazon/kcp/search/StoreGroupResult$ClickHandler;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchResult;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/search/StoreGroupResult;->results:Ljava/util/List;

    .line 30
    iput-object p2, p0, Lcom/amazon/kcp/search/StoreGroupResult;->clickHandler:Lcom/amazon/kcp/search/StoreGroupResult$ClickHandler;

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/amazon/kcp/search/StoreGroupResult;->visibleItemCount:I

    return-void
.end method


# virtual methods
.method public getView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$layout;->search_store_result_group:I

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 45
    :cond_0
    move-object p1, p2

    check-cast p1, Lcom/amazon/kcp/search/StoreResultsLayout;

    .line 46
    iget-object p3, p0, Lcom/amazon/kcp/search/StoreGroupResult;->results:Ljava/util/List;

    invoke-virtual {p1, p3}, Lcom/amazon/kcp/search/StoreResultsLayout;->addStoreResults(Ljava/util/List;)I

    move-result p3

    iput p3, p0, Lcom/amazon/kcp/search/StoreGroupResult;->visibleItemCount:I

    .line 47
    invoke-virtual {p1, p0}, Lcom/amazon/kcp/search/StoreResultsLayout;->setClickHandler(Lcom/amazon/kcp/search/StoreResultsLayout$ClickHandler;)V

    return-object p2
.end method

.method public getViewType()I
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->CONTENT_GROUP:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public getVisibleItemCount()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/amazon/kcp/search/StoreGroupResult;->visibleItemCount:I

    return v0
.end method

.method public onClick(Lcom/amazon/kcp/search/store/StoreContentMetadata;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/search/StoreGroupResult;->clickHandler:Lcom/amazon/kcp/search/StoreGroupResult$ClickHandler;

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/amazon/kcp/search/StoreGroupResult;->results:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/search/StoreGroupResult$ClickHandler;->onClick(Lcom/amazon/kcp/search/store/StoreContentMetadata;I)V

    :cond_0
    return-void
.end method
