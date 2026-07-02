.class public Lcom/amazon/kindle/krx/contentdecoration/AmplifyHighlightDecoration;
.super Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;
.source "AmplifyHighlightDecoration.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;I)V

    .line 10
    sget-object p1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->AmplifyHighlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;->style:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-void
.end method
