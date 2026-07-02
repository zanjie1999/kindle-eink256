.class public Lcom/amazon/kcp/search/RubySectionResult;
.super Lcom/amazon/kcp/search/SectionResult;
.source "RubySectionResult.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/search/SectionResult$SectionType;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/search/SectionResult;-><init>(Lcom/amazon/kcp/search/SectionResult$SectionType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p4, Lcom/amazon/kindle/librarymodule/R$layout;->ruby_search_result_section:I

    const/4 v0, 0x0

    invoke-virtual {p2, p4, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 30
    :cond_0
    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->ruby_search_section_name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .line 32
    iget-object p4, p0, Lcom/amazon/kcp/search/SectionResult;->title:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_1
    iget-object p3, p0, Lcom/amazon/kcp/search/SectionResult;->type:Lcom/amazon/kcp/search/SectionResult$SectionType;

    sget-object p4, Lcom/amazon/kcp/search/SectionResult$SectionType;->STORE:Lcom/amazon/kcp/search/SectionResult$SectionType;

    if-ne p3, p4, :cond_2

    .line 35
    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->ruby_search_see_more_results:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 36
    sget p4, Lcom/amazon/kindle/librarymodule/R$string;->see_more:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    new-instance p1, Lcom/amazon/kcp/search/RubySectionResult$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/search/RubySectionResult$1;-><init>(Lcom/amazon/kcp/search/RubySectionResult;)V

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-object p2
.end method
