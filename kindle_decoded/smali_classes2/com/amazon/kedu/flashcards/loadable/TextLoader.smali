.class public Lcom/amazon/kedu/flashcards/loadable/TextLoader;
.super Lcom/amazon/kedu/flashcards/loadable/Loader;
.source "TextLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kedu/flashcards/loadable/Loader<",
        "Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;",
        ">;"
    }
.end annotation


# instance fields
.field private ellipsized:Z

.field private lineCount:I

.field private maxTextSize:I

.field private minTextSize:I

.field private spacingAdd:F

.field private spacingMult:F

.field private targetHeight:I

.field private targetWidth:I

.field private text:Ljava/lang/CharSequence;

.field private textHeight:I

.field private textPaint:Landroid/text/TextPaint;

.field private textSize:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IIIILandroid/text/TextPaint;FFLandroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p9}, Lcom/amazon/kedu/flashcards/loadable/Loader;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->text:Ljava/lang/CharSequence;

    .line 34
    iput p2, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->targetWidth:I

    .line 35
    iput p3, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->targetHeight:I

    .line 36
    iput p4, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->minTextSize:I

    .line 37
    iput p5, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->maxTextSize:I

    .line 38
    iput-object p6, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textPaint:Landroid/text/TextPaint;

    .line 39
    iput p7, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->spacingAdd:F

    .line 40
    iput p8, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->spacingMult:F

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textHeight:I

    .line 42
    iput p1, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textSize:I

    .line 43
    iput p1, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->lineCount:I

    .line 44
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->ellipsized:Z

    return-void
.end method

.method private ellipsizeText()V
    .locals 9

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->ellipsized:Z

    .line 73
    iget v1, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textHeight:I

    iget v2, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->targetHeight:I

    if-le v1, v2, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/loadable/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kedu/flashcards/R$string;->fc_ellipsis:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object v3, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->text:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->targetWidth:I

    iget v2, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textSize:I

    int-to-float v6, v2

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->getTextLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFZ)Landroid/text/StaticLayout;

    move-result-object v2

    .line 77
    iget v3, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->lineCount:I

    if-lez v3, :cond_1

    .line 79
    iget v3, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->targetHeight:I

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ltz v3, :cond_1

    .line 82
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v5

    .line 83
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v6

    .line 84
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    .line 85
    iget-object v3, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 87
    :goto_0
    iget v7, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->targetWidth:I

    int-to-float v7, v7

    add-float/2addr v2, v3

    cmpg-float v2, v7, v2

    if-gez v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->text:Ljava/lang/CharSequence;

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v8, v6, 0x1

    invoke-interface {v7, v5, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    goto :goto_0

    .line 91
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->text:Ljava/lang/CharSequence;

    invoke-interface {v3, v0, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->text:Ljava/lang/CharSequence;

    .line 92
    iput-boolean v4, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->ellipsized:Z

    :cond_1
    return-void
.end method

.method private getTextLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFZ)Landroid/text/StaticLayout;
    .locals 8

    .line 100
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, p2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 101
    invoke-virtual {v2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 102
    new-instance p2, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->spacingMult:F

    iget v6, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->spacingAdd:F

    move-object v0, p2

    move-object v1, p1

    move v3, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p2
.end method


# virtual methods
.method public calculateTextProperties()V
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->targetHeight:I

    if-lez v0, :cond_2

    iget v4, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->targetWidth:I

    if-lez v4, :cond_2

    iget v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->maxTextSize:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    iput v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textSize:I

    .line 58
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->text:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textPaint:Landroid/text/TextPaint;

    int-to-float v5, v0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->getTextLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFZ)Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textHeight:I

    .line 60
    :goto_0
    iget v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textHeight:I

    iget v1, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->targetHeight:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textSize:I

    iget v1, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->minTextSize:I

    if-le v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x2

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textSize:I

    .line 63
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->text:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->targetWidth:I

    int-to-float v5, v0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->getTextLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFZ)Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textHeight:I

    goto :goto_0

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->text:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->targetWidth:I

    iget v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textSize:I

    int-to-float v5, v0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->getTextLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFZ)Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    iput v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->lineCount:I

    return-void

    .line 52
    :cond_2
    :goto_1
    iget v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->maxTextSize:I

    iput v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textSize:I

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textHeight:I

    return-void
.end method

.method protected load()Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;
    .locals 5

    .line 109
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->calculateTextProperties()V

    .line 110
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->ellipsizeText()V

    .line 111
    new-instance v0, Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->text:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->textSize:I

    iget v3, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->lineCount:I

    iget-boolean v4, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->ellipsized:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;-><init>(Ljava/lang/CharSequence;IIZ)V

    return-object v0
.end method

.method protected bridge synthetic load()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/loadable/TextLoader;->load()Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;

    move-result-object v0

    return-object v0
.end method
