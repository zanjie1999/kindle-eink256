.class public abstract Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;
.super Ljava/lang/Object;
.source "BaseContentDecoration.java"

# interfaces
.implements Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;


# instance fields
.field private color:I

.field protected end:Lcom/amazon/kindle/krx/reader/IPosition;

.field protected start:Lcom/amazon/kindle/krx/reader/IPosition;

.field protected style:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 42
    iput-object p2, p0, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 43
    iput p3, p0, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;->color:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;->color:I

    return v0
.end method

.method public getEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getStart()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;->style:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-object v0
.end method
