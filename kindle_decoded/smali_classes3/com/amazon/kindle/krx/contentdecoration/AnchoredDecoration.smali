.class public abstract Lcom/amazon/kindle/krx/contentdecoration/AnchoredDecoration;
.super Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;
.source "AnchoredDecoration.java"


# instance fields
.field protected anchor:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ILcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;I)V

    .line 27
    iput-object p4, p0, Lcom/amazon/kindle/krx/contentdecoration/AnchoredDecoration;->anchor:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    return-void
.end method


# virtual methods
.method public getAnchorLocation()Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/AnchoredDecoration;->anchor:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    return-object v0
.end method
