.class public Lcom/amazon/android/docviewer/pdf/PdfWrapper;
.super Ljava/lang/Object;


# static fields
.field public static final CONTRAST_DARK:I = 0x4

.field public static final CONTRAST_DARKEST:I = 0x3

.field public static final CONTRAST_LIGHT:I = 0x6

.field public static final CONTRAST_LIGHTEST:I = 0x7

.field public static final CONTRAST_NORMAL:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/amazon/kindle/jni/KindleReaderJNI;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native bookmarkIteratorNext(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method

.method public static native bookmarkIteratorReleaseTOC(J)Lcom/amazon/android/docviewer/pdf/PdfBookmark;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method

.method public static native changeContrastMapping(Landroid/graphics/Bitmap;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method

.method public static native closeDocument(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method

.method public static native closePage(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method

.method public static native convertDeviceToPagePoint(JIIIIIII)Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method

.method public static native convertPageToDeviceRectangle(JIIIIIIIII)Lcom/amazon/android/docviewer/pdf/Rectangle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method

.method public static native countPages(J)I
.end method

.method public static native createBookmarkIterator(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method

.method public static native createMopAccess(J)J
.end method

.method public static native destroyBookmarkIterator(J)V
.end method

.method public static native destroyFileAccess(J)V
.end method

.method public static native exit()V
.end method

.method public static native getCropPageMarginRect(Landroid/graphics/Bitmap;J)Lcom/amazon/android/docviewer/pdf/Rectangle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method

.method public static native getDocInfo(J)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method

.method public static native getDocumentWordCount(J)I
.end method

.method public static native getPageSizeX(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method

.method public static native getPageSizeY(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method

.method public static native init()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method

.method public static native initFileAccess()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method

.method public static native loadBookmarks(J)Lcom/amazon/android/docviewer/pdf/PdfBookmark;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method

.method public static native loadDocument(Ljava/lang/String;Ljava/lang/String;JJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method

.method public static native loadPage(JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method

.method public static native parsePage(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method

.method public static native pauseRenderingPageToBitmap(J)I
.end method

.method public static native quickRenderPageToBitmap(Landroid/graphics/Bitmap;JIIFFI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method

.method public static native releaseMopAccess(J)V
.end method

.method public static native renderPageToBitmap(Landroid/graphics/Bitmap;JIIFFI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation
.end method
