.class public Lcom/amazon/kindle/krx/contentdecoration/IconDecoration;
.super Lcom/amazon/kindle/krx/contentdecoration/AnchoredDecoration;
.source "IconDecoration.java"


# instance fields
.field private icon:[B


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;[BLcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;)V
    .locals 1

    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, p1, p1, v0, p3}, Lcom/amazon/kindle/krx/contentdecoration/AnchoredDecoration;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ILcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;)V

    .line 28
    iput-object p2, p0, Lcom/amazon/kindle/krx/contentdecoration/IconDecoration;->icon:[B

    .line 29
    sget-object p1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Icon:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;->style:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-void
.end method


# virtual methods
.method public getIcon()[B
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/IconDecoration;->icon:[B

    return-object v0
.end method
