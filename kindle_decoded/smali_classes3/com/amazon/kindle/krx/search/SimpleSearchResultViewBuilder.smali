.class public Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;
.super Ljava/lang/Object;
.source "SimpleSearchResultViewBuilder.java"

# interfaces
.implements Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;


# static fields
.field private static final EMBER_FONT_REGULAR:Ljava/lang/String; = "Amazon Ember"


# instance fields
.field private body:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

.field private bodyMaxLines:I

.field private childResultViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;",
            ">;"
        }
    .end annotation
.end field

.field private decoratorColor:Ljava/lang/Integer;

.field private footers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private final searchResultView:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

.field private title:Lcom/amazon/kindle/krx/search/SearchResultSnippet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 54
    new-instance p2, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;

    invoke-direct {p2, p1}, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->searchResultView:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    goto :goto_0

    .line 56
    :cond_0
    iput-object p2, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->searchResultView:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    :goto_0
    const/4 p2, 0x0

    .line 59
    iput-object p2, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->title:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    .line 60
    iput-object p2, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->body:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->footers:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->childResultViews:Ljava/util/List;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krxsdk/R$integer;->reader_search_result_body_max_lines:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->bodyMaxLines:I

    .line 65
    iput-object p2, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->decoratorColor:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;
    .locals 6

    .line 155
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->title:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    iget-object v3, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->searchResultView:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    iget-object v4, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->title:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;->setTitle(Lcom/amazon/kindle/krx/search/SearchResultSnippet;)V

    .line 157
    iget-object v3, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->searchResultView:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    sget-object v4, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;->TITLE:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    invoke-virtual {v3, v4, v0}, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;->setComponentVisibility(Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;Z)V

    .line 159
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->body:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 160
    :goto_1
    iget-object v3, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->searchResultView:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    iget-object v4, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->body:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    iget v5, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->bodyMaxLines:I

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;->setBody(Lcom/amazon/kindle/krx/search/SearchResultSnippet;I)V

    .line 161
    iget-object v3, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->searchResultView:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    sget-object v4, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;->BODY:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    invoke-virtual {v3, v4, v0}, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;->setComponentVisibility(Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;Z)V

    .line 163
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->footers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    .line 164
    iget-object v3, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->searchResultView:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    iget-object v4, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->footers:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;->setFooters(Ljava/util/List;)V

    .line 165
    iget-object v3, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->searchResultView:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    sget-object v4, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;->FOOTER:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    invoke-virtual {v3, v4, v0}, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;->setComponentVisibility(Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;Z)V

    .line 167
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->decoratorColor:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 169
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->searchResultView:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    iget-object v3, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->decoratorColor:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;->setDecoratorColor(I)V

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->searchResultView:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    sget-object v3, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;->DECORATOR:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    invoke-virtual {v0, v3, v1}, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;->setComponentVisibility(Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;Z)V

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->childResultViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    .line 174
    iget-object v1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->searchResultView:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    iget-object v2, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->childResultViews:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;->setChildResults(Ljava/util/List;)V

    .line 175
    iget-object v1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->searchResultView:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    sget-object v2, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;->CHILDREN:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;->setComponentVisibility(Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;Z)V

    .line 177
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->searchResultView:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    return-object v0
.end method

.method getBody()Lcom/amazon/kindle/krx/search/SearchResultSnippet;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->body:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    return-object v0
.end method

.method getFooters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->footers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getSearchResultView()Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->searchResultView:Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    return-object v0
.end method

.method getTitle()Lcom/amazon/kindle/krx/search/SearchResultSnippet;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->title:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    return-object v0
.end method

.method public bridge synthetic setBody(Lcom/amazon/kindle/krx/search/SearchResultSnippet;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->setBody(Lcom/amazon/kindle/krx/search/SearchResultSnippet;)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBody(Lcom/amazon/kindle/krx/search/SearchResultSnippet;I)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->setBody(Lcom/amazon/kindle/krx/search/SearchResultSnippet;I)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBody(Ljava/lang/CharSequence;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->setBody(Ljava/lang/CharSequence;)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBody(Ljava/lang/CharSequence;I)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->setBody(Ljava/lang/CharSequence;I)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBody(Lcom/amazon/kindle/krx/search/SearchResultSnippet;)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;
    .locals 1

    .line 103
    iget v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->bodyMaxLines:I

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->setBody(Lcom/amazon/kindle/krx/search/SearchResultSnippet;I)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBody(Lcom/amazon/kindle/krx/search/SearchResultSnippet;I)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->body:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    .line 110
    iput p2, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->bodyMaxLines:I

    return-object p0
.end method

.method public setBody(Ljava/lang/CharSequence;)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;
    .locals 1

    .line 86
    iget v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->bodyMaxLines:I

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->setBody(Ljava/lang/CharSequence;I)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBody(Ljava/lang/CharSequence;I)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;
    .locals 1

    if-eqz p1, :cond_0

    .line 94
    new-instance v0, Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/search/SearchResultSnippet;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->setBody(Lcom/amazon/kindle/krx/search/SearchResultSnippet;I)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setChildResults(Ljava/util/List;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->setChildResults(Ljava/util/List;)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setChildResults(Ljava/util/List;)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;",
            ">;)",
            "Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 146
    iput-object p1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->childResultViews:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setDecoratorColor(I)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->setDecoratorColor(I)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setDecoratorColor(I)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;
    .locals 0

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->decoratorColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public bridge synthetic setFooters(Ljava/util/List;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->setFooters(Ljava/util/List;)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setFooters(Ljava/util/List;)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->footers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_2

    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 123
    instance-of v1, v0, Landroid/text/SpannableString;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/text/SpannableString;

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 126
    :goto_1
    iget-object v1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->footers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public bridge synthetic setTitle(Lcom/amazon/kindle/krx/search/SearchResultSnippet;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->setTitle(Lcom/amazon/kindle/krx/search/SearchResultSnippet;)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Lcom/amazon/kindle/krx/search/SearchResultSnippet;)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->title:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 72
    :cond_0
    new-instance v0, Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/search/SearchResultSnippet;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;->setTitle(Lcom/amazon/kindle/krx/search/SearchResultSnippet;)Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;

    move-result-object p1

    return-object p1
.end method
