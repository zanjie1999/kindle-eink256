.class public Lcom/amazon/android/docviewer/pdf/PdfPagePositions;
.super Ljava/lang/Object;
.source "PdfPagePositions.java"


# static fields
.field public static final INVALID_PAGE_POSITIONS_HANDLE:I = -0x1


# instance fields
.field private final elements:[Lcom/amazon/android/docviewer/pdf/TextElement;

.field private pagePositionsHandle:J


# direct methods
.method constructor <init>(J[Lcom/amazon/android/docviewer/pdf/TextElement;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->pagePositionsHandle:J

    .line 18
    iput-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->elements:[Lcom/amazon/android/docviewer/pdf/TextElement;

    return-void
.end method


# virtual methods
.method destroy()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 88
    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->pagePositionsHandle:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 89
    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfPagePositionsNative;->destroyPagePositions(J)J

    .line 90
    iput-wide v2, p0, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->pagePositionsHandle:J

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 75
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->pagePositionsHandle:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 80
    throw v0
.end method

.method public getAllBounds(I)[Lcom/amazon/android/docviewer/pdf/Rectangle;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->elements:[Lcom/amazon/android/docviewer/pdf/TextElement;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/TextElement;->getAllBounds()[Lcom/amazon/android/docviewer/pdf/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method public getAllTextElements()[Lcom/amazon/android/docviewer/pdf/TextElement;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->elements:[Lcom/amazon/android/docviewer/pdf/TextElement;

    return-object v0
.end method

.method public getBounds(I)Lcom/amazon/android/docviewer/pdf/Rectangle;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->elements:[Lcom/amazon/android/docviewer/pdf/TextElement;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/TextElement;->getBounds()Lcom/amazon/android/docviewer/pdf/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method public getKindleIndexClosestToPoint(II)I
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->pagePositionsHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfPagePositionsNative;->getKindleIndexClosestToPoint(JII)I

    move-result p1

    return p1
.end method

.method public getKindleIndexCount()I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->elements:[Lcom/amazon/android/docviewer/pdf/TextElement;

    array-length v0, v0

    return v0
.end method

.method public getTextElement(I)Lcom/amazon/android/docviewer/pdf/TextElement;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->elements:[Lcom/amazon/android/docviewer/pdf/TextElement;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
