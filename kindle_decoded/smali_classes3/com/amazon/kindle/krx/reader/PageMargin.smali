.class public Lcom/amazon/kindle/krx/reader/PageMargin;
.super Ljava/lang/Object;
.source "PageMargin.java"


# instance fields
.field private final bottomMargin:I

.field private final leftMargin:I

.field private final rightMargin:I

.field private final topMargin:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/amazon/kindle/krx/reader/PageMargin;->leftMargin:I

    .line 23
    iput p2, p0, Lcom/amazon/kindle/krx/reader/PageMargin;->rightMargin:I

    .line 24
    iput p3, p0, Lcom/amazon/kindle/krx/reader/PageMargin;->topMargin:I

    .line 25
    iput p4, p0, Lcom/amazon/kindle/krx/reader/PageMargin;->bottomMargin:I

    return-void
.end method


# virtual methods
.method public getBottomMargin()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/amazon/kindle/krx/reader/PageMargin;->bottomMargin:I

    return v0
.end method

.method public getLeftMargin()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/amazon/kindle/krx/reader/PageMargin;->leftMargin:I

    return v0
.end method

.method public getRightMargin()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/amazon/kindle/krx/reader/PageMargin;->rightMargin:I

    return v0
.end method

.method public getTopMargin()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/amazon/kindle/krx/reader/PageMargin;->topMargin:I

    return v0
.end method
