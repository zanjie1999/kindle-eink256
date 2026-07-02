.class public Lcom/amazon/kcp/search/LoadingStoreResult;
.super Lcom/amazon/kcp/search/SearchResult;
.source "LoadingStoreResult.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$layout;->search_store_result_loading:I

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public getViewType()I
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->STORE_LOADING:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method
