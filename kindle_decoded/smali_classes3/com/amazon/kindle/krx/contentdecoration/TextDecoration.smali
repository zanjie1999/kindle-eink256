.class public Lcom/amazon/kindle/krx/contentdecoration/TextDecoration;
.super Lcom/amazon/kindle/krx/contentdecoration/AnchoredDecoration;
.source "TextDecoration.java"


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;Ljava/lang/String;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p5, p3}, Lcom/amazon/kindle/krx/contentdecoration/AnchoredDecoration;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ILcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;)V

    .line 33
    iput-object p4, p0, Lcom/amazon/kindle/krx/contentdecoration/TextDecoration;->text:Ljava/lang/String;

    .line 34
    sget-object p1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Text:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;->style:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/TextDecoration;->text:Ljava/lang/String;

    return-object v0
.end method
