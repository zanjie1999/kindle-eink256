.class public Lcom/amazon/android/docviewer/pdf/PdfWordIterator;
.super Lcom/amazon/kindle/krx/search/BaseKindleWordTokenIterator;
.source "PdfWordIterator.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private currentElementIndex:I

.field private currentPageIndex:I

.field private currentTextElements:[Lcom/amazon/android/docviewer/pdf/TextElement;

.field private final m_doc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

.field private totalPages:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/amazon/kindle/krx/search/BaseKindleWordTokenIterator;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentPageIndex:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentElementIndex:I

    .line 15
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->totalPages:I

    .line 19
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->m_doc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    .line 20
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageCount()I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->totalPages:I

    return-void
.end method

.method private getTextElements()Z
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->m_doc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentPageIndex:I

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->createPagePosition(I)Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->getAllTextElements()[Lcom/amazon/android/docviewer/pdf/TextElement;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentTextElements:[Lcom/amazon/android/docviewer/pdf/TextElement;

    .line 170
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 172
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->TAG:Ljava/lang/String;

    const-string v2, "Error when freeing pagePos"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentTextElements:[Lcom/amazon/android/docviewer/pdf/TextElement;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private gotoBottomOfPreviousPageWithTextElements()Z
    .locals 2

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentTextElements:[Lcom/amazon/android/docviewer/pdf/TextElement;

    .line 147
    :cond_0
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentPageIndex:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 148
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentPageIndex:I

    .line 149
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->getTextElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentTextElements:[Lcom/amazon/android/docviewer/pdf/TextElement;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentElementIndex:I

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private gotoTopOfNextPageWithTextElements()Z
    .locals 4

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentElementIndex:I

    const/4 v1, 0x0

    .line 129
    iput-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentTextElements:[Lcom/amazon/android/docviewer/pdf/TextElement;

    .line 130
    :cond_0
    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentPageIndex:I

    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->totalPages:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 131
    iput v1, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentPageIndex:I

    .line 132
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->getTextElements()Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_1
    return v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public first()Z
    .locals 1

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentPageIndex:I

    .line 29
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->gotoTopOfNextPageWithTextElements()Z

    move-result v0

    return v0
.end method

.method public getTextInRange(II)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;
    .locals 0

    .line 114
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet supported in PDF"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentTextElements:[Lcom/amazon/android/docviewer/pdf/TextElement;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentElementIndex:I

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 103
    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 105
    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentPageIndex:I

    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/TextElement;->getKindleIndex()I

    move-result v2

    add-int/2addr v1, v2

    .line 106
    new-instance v2, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/TextElement;->getWord()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;-><init>(Ljava/lang/String;II)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public gotoPosition(I)V
    .locals 4

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentTextElements:[Lcom/amazon/android/docviewer/pdf/TextElement;

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentElementIndex:I

    .line 86
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentPageIndex:I

    if-lez v0, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->getTextElements()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7fffffff

    .line 90
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentTextElements:[Lcom/amazon/android/docviewer/pdf/TextElement;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentElementIndex:I

    :goto_0
    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentElementIndex:I

    if-lez v1, :cond_1

    .line 91
    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentPageIndex:I

    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentTextElements:[Lcom/amazon/android/docviewer/pdf/TextElement;

    iget v3, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentElementIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/TextElement;->getKindleIndex()I

    move-result v2

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_0

    if-ge p1, v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentElementIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentElementIndex:I

    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public next()Z
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentTextElements:[Lcom/amazon/android/docviewer/pdf/TextElement;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentElementIndex:I

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    add-int/2addr v1, v2

    .line 36
    iput v1, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentElementIndex:I

    return v2

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->gotoTopOfNextPageWithTextElements()Z

    move-result v0

    return v0
.end method

.method public nextNWords(IC)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;
    .locals 7

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    sget-object v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->emptyWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    .line 50
    iget v1, v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_0
    if-eqz v3, :cond_2

    if-ge v4, p1, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v6

    if-eqz v6, :cond_1

    if-ne v5, v2, :cond_0

    .line 57
    iget v1, v6, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    move v5, v1

    .line 59
    :cond_0
    iget-object v1, v6, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    iget v1, v6, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    :cond_2
    new-instance p1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v5, v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;-><init>(Ljava/lang/String;II)V

    return-object p1
.end method

.method public previous()Z
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentTextElements:[Lcom/amazon/android/docviewer/pdf/TextElement;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentElementIndex:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 73
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->currentElementIndex:I

    return v1

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;->gotoBottomOfPreviousPageWithTextElements()Z

    move-result v0

    return v0
.end method
