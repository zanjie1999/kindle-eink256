.class public Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;
.super Landroid/widget/TextView;
.source "SearchResultSnippetTextView.java"


# static fields
.field private static final DEFAULT_BUFFER_TYPE:Landroid/widget/TextView$BufferType;

.field private static final ELLIPSIS_BLOCKING_CHARACTERS:Ljava/lang/String; = "."


# instance fields
.field private bufferType:Landroid/widget/TextView$BufferType;

.field private highlightedTypefaceName:Ljava/lang/String;

.field private snippet:Lcom/amazon/kindle/krx/search/SearchResultSnippet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    sput-object v0, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->DEFAULT_BUFFER_TYPE:Landroid/widget/TextView$BufferType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 72
    invoke-direct {p0}, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    invoke-direct {p0}, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->initialize()V

    return-void
.end method

.method private ellipsizeAndHighlightText()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->snippet:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/search/SearchResultSnippet;->getContextualHighlightRanges()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->getHighlightedText()Landroid/text/SpannableString;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->snippet:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/search/SearchResultSnippet;->getContextualHighlightRanges()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/Range;

    .line 184
    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->ellipsizeBeginning(Lcom/amazon/kindle/krx/Range;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->bufferType:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    return-void
.end method

.method private ellipsizeBeginning(Lcom/amazon/kindle/krx/Range;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 142
    new-instance v10, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v5, v2, v0

    .line 143
    invoke-virtual {v1}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v7

    .line 144
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v8

    const/4 v9, 0x0

    move-object v2, v10

    move-object v3, p2

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 145
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    invoke-virtual {v10}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 147
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v0, p1

    const/4 p1, 0x2

    div-int/2addr v0, p1

    .line 148
    invoke-virtual {v10, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 149
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    div-int/2addr v1, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 150
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 151
    invoke-virtual {v10, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 154
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_0

    .line 155
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const-string v4, "."

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    .line 162
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p2, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/CharSequence;

    const-string v0, "..."

    aput-object v0, p1, v1

    aput-object p2, p1, v2

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method private getHighlightedText()Landroid/text/SpannableString;
    .locals 8

    .line 109
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->snippet:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/search/SearchResultSnippet;->getContextualText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->snippet:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/search/SearchResultSnippet;->getContextualHighlightRanges()Ljava/util/Collection;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/Range;

    .line 113
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 114
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    const/16 v5, 0x21

    .line 117
    iget-object v6, p0, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->highlightedTypefaceName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 119
    new-instance v6, Landroid/text/style/TypefaceSpan;

    iget-object v7, p0, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->highlightedTypefaceName:Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v3, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 122
    :cond_0
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v6, v3, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 123
    new-instance v4, Landroid/text/style/UnderlineSpan;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Landroid/text/style/UnderlineSpan;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0, v4, v3, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private initialize()V
    .locals 1

    .line 94
    sget-object v0, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->DEFAULT_BUFFER_TYPE:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->bufferType:Landroid/widget/TextView$BufferType;

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->highlightedTypefaceName:Ljava/lang/String;

    .line 97
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->snippet:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/search/SearchResultSnippet;->getContextualText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->ellipsizeAndHighlightText()V

    .line 197
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    return-void
.end method

.method public setHighlightedTypefaceName(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->highlightedTypefaceName:Ljava/lang/String;

    return-void
.end method

.method public setText(Lcom/amazon/kindle/krx/search/SearchResultSnippet;)V
    .locals 1

    .line 219
    sget-object v0, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->DEFAULT_BUFFER_TYPE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->setText(Lcom/amazon/kindle/krx/search/SearchResultSnippet;Landroid/widget/TextView$BufferType;)V

    .line 220
    invoke-direct {p0}, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->ellipsizeAndHighlightText()V

    return-void
.end method

.method public setText(Lcom/amazon/kindle/krx/search/SearchResultSnippet;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 233
    iput-object p2, p0, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->bufferType:Landroid/widget/TextView$BufferType;

    .line 234
    iput-object p1, p0, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->snippet:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    .line 236
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->bufferType:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 206
    new-instance v0, Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/search/SearchResultSnippet;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 208
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/amazon/kindle/krx/search/SearchResultSnippetTextView;->setText(Lcom/amazon/kindle/krx/search/SearchResultSnippet;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
