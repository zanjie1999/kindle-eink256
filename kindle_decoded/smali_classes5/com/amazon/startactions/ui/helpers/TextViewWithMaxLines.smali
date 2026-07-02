.class public Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;
.super Landroid/widget/TextView;
.source "TextViewWithMaxLines.java"


# instance fields
.field private lines:I

.field private maxLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getActualMaxLines()I
    .locals 2

    .line 55
    iget v0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->lines:I

    if-nez v0, :cond_0

    .line 56
    iget v0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->maxLines:I

    return v0

    .line 58
    :cond_0
    iget v1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->maxLines:I

    if-nez v1, :cond_1

    return v0

    .line 62
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getMaxLines()I
    .locals 2

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 44
    invoke-super {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    return v0

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->getActualMaxLines()I

    move-result v0

    return v0
.end method

.method public setLines(I)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 38
    iput p1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->lines:I

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 32
    iput p1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->maxLines:I

    return-void
.end method
