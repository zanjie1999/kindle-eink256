.class public Lcom/amazon/klo/EllipsizingTextView;
.super Landroid/widget/TextView;
.source "EllipsizingTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;
    }
.end annotation


# static fields
.field private static final ELLIPSIS:Ljava/lang/String; = "\u2026"


# instance fields
.field private fullText:Ljava/lang/String;

.field private lineSpacingExtra:F

.field private lineSpacingMultiplier:F

.field private maxLines:I

.field private skipEllipsize:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 37
    iput p1, p0, Lcom/amazon/klo/EllipsizingTextView;->lineSpacingMultiplier:F

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/amazon/klo/EllipsizingTextView;->lineSpacingExtra:F

    const p1, 0x7fffffff

    .line 39
    iput p1, p0, Lcom/amazon/klo/EllipsizingTextView;->maxLines:I

    const-string p1, ""

    .line 41
    iput-object p1, p0, Lcom/amazon/klo/EllipsizingTextView;->fullText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/amazon/klo/EllipsizingTextView;->skipEllipsize:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    iput v0, p0, Lcom/amazon/klo/EllipsizingTextView;->lineSpacingMultiplier:F

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/amazon/klo/EllipsizingTextView;->lineSpacingExtra:F

    const v0, 0x7fffffff

    .line 39
    iput v0, p0, Lcom/amazon/klo/EllipsizingTextView;->maxLines:I

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/amazon/klo/EllipsizingTextView;->fullText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/amazon/klo/EllipsizingTextView;->skipEllipsize:Z

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/amazon/klo/EllipsizingTextView;->setLineAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 37
    iput p3, p0, Lcom/amazon/klo/EllipsizingTextView;->lineSpacingMultiplier:F

    const/4 p3, 0x0

    .line 38
    iput p3, p0, Lcom/amazon/klo/EllipsizingTextView;->lineSpacingExtra:F

    const p3, 0x7fffffff

    .line 39
    iput p3, p0, Lcom/amazon/klo/EllipsizingTextView;->maxLines:I

    const-string p3, ""

    .line 41
    iput-object p3, p0, Lcom/amazon/klo/EllipsizingTextView;->fullText:Ljava/lang/String;

    const/4 p3, 0x0

    .line 43
    iput-boolean p3, p0, Lcom/amazon/klo/EllipsizingTextView;->skipEllipsize:Z

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/amazon/klo/EllipsizingTextView;->setLineAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;
    .locals 9

    .line 179
    new-instance v8, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 180
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/amazon/klo/EllipsizingTextView;->lineSpacingMultiplier:F

    iget v6, p0, Lcom/amazon/klo/EllipsizingTextView;->lineSpacingExtra:F

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v8
.end method

.method private ellipsizeText()V
    .locals 10

    .line 102
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_4

    .line 104
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Lcom/amazon/klo/EllipsizingTextView;->createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    iget v3, p0, Lcom/amazon/klo/EllipsizingTextView;->maxLines:I

    if-le v2, v3, :cond_4

    :goto_0
    const/16 v2, 0x20

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    const-string/jumbo v4, "\u2026"

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    const-string v2, ""

    const/4 v3, 0x0

    goto :goto_1

    .line 124
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/klo/EllipsizingTextView;->createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    .line 129
    iget v6, p0, Lcom/amazon/klo/EllipsizingTextView;->maxLines:I

    if-gt v3, v6, :cond_3

    move-object v9, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v9

    .line 134
    :goto_1
    iget v6, p0, Lcom/amazon/klo/EllipsizingTextView;->maxLines:I

    if-eq v3, v6, :cond_2

    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    .line 140
    :goto_2
    iget v8, p0, Lcom/amazon/klo/EllipsizingTextView;->maxLines:I

    if-eq v3, v8, :cond_2

    if-lez v6, :cond_2

    if-ge v3, v8, :cond_1

    add-int/2addr v7, v6

    goto :goto_3

    :cond_1
    sub-int/2addr v7, v6

    .line 151
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/klo/EllipsizingTextView;->createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    .line 153
    div-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 157
    :cond_2
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/klo/EllipsizingTextView;->setTextSkipEllipsize(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    move-object v1, v2

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method private setLineAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 66
    fill-array-data v0, :array_0

    .line 67
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const v0, 0x7fffffff

    .line 69
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/amazon/klo/EllipsizingTextView;->maxLines:I

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/amazon/klo/EllipsizingTextView;->lineSpacingExtra:F

    return-void

    nop

    :array_0
    .array-data 4
        0x1010153
        0x1010217
    .end array-data
.end method

.method private setTextSkipEllipsize(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/amazon/klo/EllipsizingTextView;->skipEllipsize:Z

    .line 77
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/amazon/klo/EllipsizingTextView;->skipEllipsize:Z

    return-void
.end method


# virtual methods
.method public getSavedState()Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;
    .locals 2

    .line 192
    new-instance v0, Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;

    invoke-direct {v0}, Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;-><init>()V

    .line 193
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;->setEllipsizedText(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/amazon/klo/EllipsizingTextView;->fullText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;->setFullText(Ljava/lang/String;)V

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 2

    .line 165
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 166
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 168
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 171
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    if-eq v1, p1, :cond_1

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/amazon/klo/EllipsizingTextView;->ellipsizeText()V

    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 93
    iget-boolean p2, p0, Lcom/amazon/klo/EllipsizingTextView;->skipEllipsize:Z

    if-nez p2, :cond_0

    .line 95
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/klo/EllipsizingTextView;->fullText:Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Lcom/amazon/klo/EllipsizingTextView;->ellipsizeText()V

    :cond_0
    return-void
.end method

.method public restoreState(Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;)V
    .locals 1

    .line 201
    invoke-virtual {p1}, Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;->getFullText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/klo/EllipsizingTextView;->fullText:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;->getEllipsizedText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/klo/EllipsizingTextView;->setTextSkipEllipsize(Ljava/lang/String;)V

    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    .line 84
    iput p2, p0, Lcom/amazon/klo/EllipsizingTextView;->lineSpacingMultiplier:F

    .line 85
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-void
.end method
