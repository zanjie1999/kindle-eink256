.class public final Lcom/amazon/kcp/search/GoToStoreResult;
.super Lcom/amazon/kcp/search/SearchResult;
.source "GoToStoreResult.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p4, Lcom/amazon/kindle/librarymodule/R$layout;->search_result_text_link:I

    const/4 v0, 0x0

    invoke-virtual {p2, p4, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 29
    :cond_0
    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->search_result_text_link_content:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/amazon/kindle/librarymodule/R$string;->search_go_to_store:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :cond_1
    new-instance p1, Lcom/amazon/kcp/search/GoToStoreResult$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/search/GoToStoreResult$1;-><init>(Lcom/amazon/kcp/search/GoToStoreResult;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public getViewType()I
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->LINK:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method
