.class public Lcom/amazon/android/docviewer/pdf/PdfPageElement;
.super Ljava/lang/Object;
.source "PdfPageElement.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IPageElement;
.implements Lcom/amazon/android/docviewer/IWordPageElement;


# instance fields
.field private final m_bounds:[Lcom/amazon/android/docviewer/pdf/Rectangle;

.field private final m_kindleIndex:I

.field private final m_pageIndex:I

.field private final m_text:Ljava/lang/String;


# direct methods
.method constructor <init>(I[Lcom/amazon/android/docviewer/pdf/Rectangle;Ljava/lang/String;I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->m_kindleIndex:I

    .line 14
    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->m_bounds:[Lcom/amazon/android/docviewer/pdf/Rectangle;

    .line 15
    iput-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->m_text:Ljava/lang/String;

    .line 16
    iput p4, p0, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->m_pageIndex:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 58
    instance-of v0, p1, Lcom/amazon/android/docviewer/pdf/PdfPageElement;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfPageElement;

    .line 60
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->getEndId()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->getEndId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCoveringRectangles()Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->m_bounds:[Lcom/amazon/android/docviewer/pdf/Rectangle;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x0

    .line 35
    :goto_0
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->m_bounds:[Lcom/amazon/android/docviewer/pdf/Rectangle;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 36
    aget-object v2, v2, v1

    .line 37
    new-instance v3, Lcom/amazon/system/drawing/Rectangle;

    .line 38
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getX()I

    move-result v4

    .line 39
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getY()I

    move-result v5

    .line 40
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getWidth()I

    move-result v6

    .line 41
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getHeight()I

    move-result v2

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 37
    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getEndId()I
    .locals 2

    .line 27
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->m_pageIndex:I

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result v0

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->m_kindleIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getId()I
    .locals 2

    .line 21
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->m_pageIndex:I

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result v0

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->m_kindleIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->m_text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->m_bounds:[Lcom/amazon/android/docviewer/pdf/Rectangle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 75
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->m_text:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
