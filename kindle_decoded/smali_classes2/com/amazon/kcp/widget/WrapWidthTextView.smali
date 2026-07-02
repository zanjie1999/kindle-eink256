.class public Lcom/amazon/kcp/widget/WrapWidthTextView;
.super Landroid/widget/TextView;
.source "WrapWidthTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .line 32
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 33
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 34
    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Ljava/text/Bidi;->requiresBidi([CII)Z

    move-result p1

    if-nez p1, :cond_1

    .line 35
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 40
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    float-to-double p1, p2

    .line 42
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    .line 43
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    .line 42
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method
