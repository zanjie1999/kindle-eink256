.class public Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;
.super Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;
.source "WordWiseDecoration.java"


# instance fields
.field private glossAndIndicatorRectangle:Landroid/graphics/Rect;

.field private glossText:Ljava/lang/String;

.field private isLowConfidence:Z

.field private locale:Ljava/util/Locale;

.field private rectangle:Landroid/graphics/Rect;

.field private senseId:I

.field private textElementRectangle:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;I)V
    .locals 8

    .line 33
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;-><init>(Ljava/lang/String;IZLcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ILjava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ILjava/util/Locale;)V
    .locals 0

    .line 49
    invoke-direct {p0, p4, p5, p6}, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;I)V

    .line 50
    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->glossText:Ljava/lang/String;

    .line 51
    iput p2, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->senseId:I

    .line 52
    iput-boolean p3, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->isLowConfidence:Z

    .line 53
    sget-object p1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->WordWise:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;->style:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    .line 54
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->rectangle:Landroid/graphics/Rect;

    .line 55
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->glossAndIndicatorRectangle:Landroid/graphics/Rect;

    .line 56
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->textElementRectangle:Landroid/graphics/Rect;

    .line 57
    iput-object p7, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->locale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public getGlossAndIndicatorRectangle()Landroid/graphics/Rect;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->glossAndIndicatorRectangle:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGlossText()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->glossText:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getRectangle()Landroid/graphics/Rect;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->rectangle:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSenseId()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->senseId:I

    return v0
.end method

.method public getTextElementRectangle()Landroid/graphics/Rect;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->textElementRectangle:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isLowConfidence()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->isLowConfidence:Z

    return v0
.end method
