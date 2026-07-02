.class public Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;
.super Ljava/lang/Object;
.source "PdfChapterTOCItem.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IChapterTOCItem;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_bookmark:Lcom/amazon/android/docviewer/pdf/PdfBookmark;

.field private m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/pdf/PdfBookmark;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 27
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 28
    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;->m_bookmark:Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bookmark cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public computePageNumberToPositionMap(Lcom/amazon/foundation/internal/IObjectCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;",
            ">;)V"
        }
    .end annotation

    .line 60
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 83
    instance-of v0, p1, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 87
    :cond_0
    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;

    .line 89
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;->m_bookmark:Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    iget-object p1, p1, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;->m_bookmark:Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;->m_bookmark:Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->getPosition()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPositionFromPageIndex(I)I

    move-result v0

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;->m_bookmark:Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gotoLocation()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;->m_bookmark:Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->getPosition()I

    move-result v0

    if-gez v0, :cond_0

    .line 66
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boomark "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;->m_bookmark:Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has position < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;->m_bookmark:Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->getPosition()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPosition(I)V

    :goto_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;->m_bookmark:Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x11

    return v0
.end method
