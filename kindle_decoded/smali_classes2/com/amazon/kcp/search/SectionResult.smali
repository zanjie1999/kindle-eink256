.class public Lcom/amazon/kcp/search/SectionResult;
.super Lcom/amazon/kcp/search/SearchResult;
.source "SectionResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/SectionResult$SectionType;
    }
.end annotation


# instance fields
.field protected title:Ljava/lang/String;

.field protected type:Lcom/amazon/kcp/search/SectionResult$SectionType;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/search/SectionResult$SectionType;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchResult;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/amazon/kcp/search/SectionResult;->title:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/amazon/kcp/search/SectionResult;->type:Lcom/amazon/kcp/search/SectionResult$SectionType;

    return-void
.end method


# virtual methods
.method public getView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$layout;->search_result_section:I

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 42
    :cond_0
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->search_section_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 44
    iget-object p3, p0, Lcom/amazon/kcp/search/SectionResult;->title:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2
.end method

.method public getViewType()I
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->HEADER:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method
