.class public Lcom/amazon/kindle/krx/search/SimpleSearchResultView;
.super Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;
.source "SimpleSearchResultView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;
    }
.end annotation


# static fields
.field private static final EMBER_FONT_REGULAR:Ljava/lang/String; = "Amazon Ember"

.field private static final FOOTER_SEPARATOR:Ljava/lang/String; = "  \u2022  "


# instance fields
.field private bodyLabel:Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;

.field private childResultsLayout:Landroid/widget/LinearLayout;

.field private decoratorView:Landroid/view/View;

.field private footerLabel:Landroid/widget/TextView;

.field private mainLayout:Landroid/widget/LinearLayout;

.field private titleLabel:Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {p0}, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 61
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krxsdk/R$layout;->search_simple_result_view:I

    invoke-static {v0, v1, p0}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v0

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->EMBERLIGHT:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0, v1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 65
    sget v1, Lcom/amazon/kindle/krxsdk/R$id;->mainLayout:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->mainLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 67
    sget v2, Lcom/amazon/kindle/krxsdk/R$id;->titleLabel:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;

    iput-object v1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->titleLabel:Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;

    .line 68
    iget-object v1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->mainLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/amazon/kindle/krxsdk/R$id;->bodyLabel:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;

    iput-object v1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->bodyLabel:Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;

    .line 69
    iget-object v1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->mainLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/amazon/kindle/krxsdk/R$id;->footerLabel:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->footerLabel:Landroid/widget/TextView;

    .line 70
    iget-object v1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->mainLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/amazon/kindle/krxsdk/R$id;->decorator:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->decoratorView:Landroid/view/View;

    .line 71
    sget v1, Lcom/amazon/kindle/krxsdk/R$id;->childResultsLayout:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->childResultsLayout:Landroid/widget/LinearLayout;

    .line 73
    iget-object v1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->titleLabel:Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    iget-object v1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->titleLabel:Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;

    const-string v2, "Amazon Ember"

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->setHighlightedTypefaceName(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->bodyLabel:Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    iget-object v1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->bodyLabel:Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->setHighlightedTypefaceName(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->footerLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 80
    sget v1, Lcom/amazon/kindle/krxsdk/R$attr;->readerSearchSimpleResultBackground:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 81
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 86
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krxsdk/R$dimen;->reader_search_result_padding_horiz:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 87
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/krxsdk/R$dimen;->reader_search_result_padding_vert:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 88
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 89
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 90
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    .line 92
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 96
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;->getLineSpacingForLanguage(Ljava/lang/String;)I

    move-result v0

    .line 98
    sget v1, Lcom/amazon/kindle/krx/search/SimpleSearchResultView$CustomLanguageLineSpacing;->NO_CUSTOM_LINESPACE:I

    if-eq v0, v1, :cond_2

    .line 99
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->bodyLabel:Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getChildResults()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 158
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->childResultsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->childResultsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setBody(Lcom/amazon/kindle/krx/search/SearchResultSnippet;I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->bodyLabel:Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->setText(Lcom/amazon/kindle/krx/search/SearchResultSnippet;)V

    .line 114
    iget-object p1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->bodyLabel:Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public setChildResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;",
            ">;)V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->childResultsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz p1, :cond_0

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    const v1, 0x106000d

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const/4 v1, 0x0

    .line 147
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 149
    iget-object v1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->childResultsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setComponentVisibility(Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;Z)V
    .locals 1

    .line 168
    sget-object v0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView$1;->$SwitchMap$com$amazon$kindle$krx$search$AbstractSimpleSearchResultView$Component:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->titleLabel:Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;

    goto :goto_0

    .line 179
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->footerLabel:Landroid/widget/TextView;

    goto :goto_0

    .line 176
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->decoratorView:Landroid/view/View;

    goto :goto_0

    .line 173
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->childResultsLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 170
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->bodyLabel:Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;

    :goto_0
    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    goto :goto_1

    :cond_5
    const/16 p2, 0x8

    .line 188
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public setDecoratorColor(I)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->decoratorView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setFooters(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 119
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 121
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 122
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 125
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, "  \u2022  "

    .line 126
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->footerLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Lcom/amazon/kindle/krx/search/SearchResultSnippet;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SimpleSearchResultView;->titleLabel:Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->setText(Lcom/amazon/kindle/krx/search/SearchResultSnippet;)V

    return-void
.end method
