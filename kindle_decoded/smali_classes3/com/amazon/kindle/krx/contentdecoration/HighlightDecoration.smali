.class public Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;
.super Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;
.source "HighlightDecoration.java"


# instance fields
.field private borderColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 30
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IIZ)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;I)V

    const/4 p1, 0x0

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;->borderColor:Ljava/lang/Integer;

    .line 71
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;->borderColor:Ljava/lang/Integer;

    if-eqz p5, :cond_0

    .line 72
    sget-object p1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->TransientHighlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Highlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;->style:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IZ)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    .line 42
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IIZ)V

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;->borderColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hasBorder()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;->borderColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
