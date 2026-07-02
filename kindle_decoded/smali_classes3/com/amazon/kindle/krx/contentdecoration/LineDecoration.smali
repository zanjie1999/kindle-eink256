.class public Lcom/amazon/kindle/krx/contentdecoration/LineDecoration;
.super Lcom/amazon/kindle/krx/contentdecoration/AnchoredDecoration;
.source "LineDecoration.java"


# instance fields
.field private lineStyle:Lcom/amazon/kindle/krx/contentdecoration/LineStyle;

.field private text:Ljava/lang/String;

.field private textAnchor:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

.field private textRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ILcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;Lcom/amazon/kindle/krx/contentdecoration/LineStyle;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 50
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/krx/contentdecoration/LineDecoration;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ILcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;Lcom/amazon/kindle/krx/contentdecoration/LineStyle;Ljava/lang/String;Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ILcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;Lcom/amazon/kindle/krx/contentdecoration/LineStyle;Ljava/lang/String;Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/krx/contentdecoration/AnchoredDecoration;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ILcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;)V

    .line 78
    sget-object p1, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->Above:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    if-eq p4, p1, :cond_1

    sget-object p1, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->StrikeThrough:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    if-eq p4, p1, :cond_1

    sget-object p1, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->Under:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    if-ne p4, p1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported decoration anchor for line"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_1
    :goto_0
    iput-object p5, p0, Lcom/amazon/kindle/krx/contentdecoration/LineDecoration;->lineStyle:Lcom/amazon/kindle/krx/contentdecoration/LineStyle;

    .line 86
    sget-object p1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Line:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;->style:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    .line 87
    iput-object p6, p0, Lcom/amazon/kindle/krx/contentdecoration/LineDecoration;->text:Ljava/lang/String;

    .line 88
    iput-object p7, p0, Lcom/amazon/kindle/krx/contentdecoration/LineDecoration;->textAnchor:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    .line 89
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/LineDecoration;->textRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getLineStyle()Lcom/amazon/kindle/krx/contentdecoration/LineStyle;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/LineDecoration;->lineStyle:Lcom/amazon/kindle/krx/contentdecoration/LineStyle;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/LineDecoration;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextDecorationAnchor()Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/LineDecoration;->textAnchor:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    return-object v0
.end method

.method public getTextRect()Landroid/graphics/Rect;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/LineDecoration;->textRect:Landroid/graphics/Rect;

    return-object v0
.end method
