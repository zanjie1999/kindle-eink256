.class public Lcom/amazon/docviewer/PDFPageIndexProperties;
.super Ljava/lang/Object;
.source "PDFPageIndexProperties.java"


# static fields
.field private static final PAGE_NUMBER_BITS:I = 0x10


# direct methods
.method public static getPageIndexFromPosition(I)I
    .locals 1

    const/16 v0, 0x10

    .line 31
    invoke-static {p0, v0}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPageIndexFromPosition(II)I

    move-result p0

    return p0
.end method

.method public static getPageIndexFromPosition(II)I
    .locals 0

    shr-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    const/4 p1, 0x0

    .line 62
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static getPositionFromPageIndex(I)I
    .locals 1

    const/16 v0, 0x10

    .line 19
    invoke-static {p0, v0}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPositionFromPageIndex(II)I

    move-result p0

    return p0
.end method

.method public static getPositionFromPageIndex(II)I
    .locals 0

    add-int/lit8 p0, p0, 0x1

    shl-int/2addr p0, p1

    return p0
.end method
