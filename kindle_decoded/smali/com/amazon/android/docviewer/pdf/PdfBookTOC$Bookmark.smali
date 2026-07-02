.class Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;
.super Ljava/lang/Object;
.source "PdfBookTOC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/pdf/PdfBookTOC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bookmark"
.end annotation


# instance fields
.field private final bookmark:Lcom/amazon/android/docviewer/pdf/PdfBookmark;

.field private final depth:I


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfBookmark;I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;->bookmark:Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    .line 33
    iput p2, p0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;->depth:I

    return-void
.end method


# virtual methods
.method public getDepth()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;->depth:I

    return v0
.end method

.method public getPageIndex()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;->bookmark:Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->getPosition()I

    move-result v0

    return v0
.end method

.method public getPdfBookmark()Lcom/amazon/android/docviewer/pdf/PdfBookmark;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;->bookmark:Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;->bookmark:Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
