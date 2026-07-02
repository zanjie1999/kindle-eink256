.class public final Lcom/amazon/android/docviewer/pdf/PdfDoc;
.super Ljava/lang/Object;
.source "PdfDoc.java"

# interfaces
.implements Lcom/amazon/android/docviewer/KindleDoc;
.implements Lcom/amazon/android/docviewer/KindleDocSearcher;
.implements Lcom/amazon/kindle/model/content/ILocalBookItemDocument;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;
    }
.end annotation


# static fields
.field private static final DOCUMENT_RELOAD_THRESHOLD:I = 0x19

.field private static final EMPTY_TEXT_ELEMENTS:[Lcom/amazon/android/docviewer/pdf/TextElement;

.field private static final MIN_PERCENT:F = 0.1f

.field private static final PAGE_LOAD_SETTLE_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String;

.field private static final TEXT_MAGNIFICATION_NEED_TO_TURN_OFF:I = 0x2

.field private static final TEXT_MAGNIFICATION_NEED_TO_TURN_ON:I = 0x1

.field private static final ZOOM_FOR_MINIMUM_SIZE_RECT:F = 1.25f

.field private static highlightingSupported:Z


# instance fields
.field private final m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field private m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

.field private m_docHandleDependents:Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;

.field private final m_docViewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

.field private volatile m_documentHandle:J

.field private m_documentReloadTriggerCounts:I

.field private m_mobiDataReader:Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;

.field private m_mopHandle:J

.field private m_pageContentRectCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final m_pageCount:I

.field private m_pageOriginCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private m_pageSizeCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private m_pdfHistoryManager:Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;

.field private m_pdfLabelProvider:Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;

.field private final m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

.field private m_pdfRenderer:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;

.field private m_pdfTaskManager:Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;

.field private final m_searcher:Lcom/amazon/android/docviewer/pdf/PdfDocSearcher;

.field private final m_securityPids:[Ljava/lang/String;

.field private final m_textMagnificationManager:Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;

.field private m_timeOfLastReloadReq:J

.field private m_timeVisibilityOfFirstPage:Z

.field private final m_tocSupported:Z

.field private m_tocTask:Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask<",
            "Lcom/amazon/android/docviewer/IKindleTOC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazon/android/docviewer/pdf/TextElement;

    .line 53
    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->EMPTY_TEXT_ELEMENTS:[Lcom/amazon/android/docviewer/pdf/TextElement;

    return-void
.end method

.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_docHandleDependents:Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;

    .line 77
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfTaskManager:Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_timeVisibilityOfFirstPage:Z

    const/4 v1, 0x0

    .line 101
    iput v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentReloadTriggerCounts:I

    .line 102
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getInstance()Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    .line 103
    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 104
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageSizeCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageContentRectCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    iput-object p4, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_securityPids:[Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_mobiDataReader:Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;

    .line 112
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing to open with MobiDataReader reader="

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    invoke-static {p3}, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;->getCPtr(Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;)J

    move-result-wide p3

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The contained C pointer is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v2, p3, p4}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->createMopAccess(J)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_mopHandle:J

    .line 117
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The MoP handle from the given CPtr is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_mopHandle:J

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-wide/16 p3, 0x0

    .line 119
    iput-wide p3, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    .line 120
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->reloadDocHandle()V

    .line 121
    iget-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    invoke-virtual {p3, v2, v3}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getPdfPageLabelProvider(J)Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfLabelProvider:Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;

    .line 122
    iget-object p4, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_docHandleDependents:Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;

    invoke-virtual {p4, p3}, Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;->add(Lcom/amazon/android/docviewer/pdf/PdfDocDependent;)V

    .line 124
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_docViewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    .line 126
    iget-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    invoke-virtual {p3, v2, v3}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getPdfPageCount(J)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageCount:I

    .line 127
    new-instance p3, Landroid/util/SparseArray;

    iget p4, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageCount:I

    invoke-direct {p3, p4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageOriginCache:Landroid/util/SparseArray;

    .line 129
    iget p3, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageCount:I

    sub-int/2addr p3, v0

    invoke-direct {p0, p3}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getMaxPositionForPage(I)I

    move-result p3

    .line 131
    iget-object p4, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-static {v1}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPositionFromPageIndex(I)I

    move-result v2

    invoke-interface {p4, v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setBookStartingPosition(I)V

    .line 132
    iget-object p4, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {p4, p3}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setBookFurthestPosition(I)V

    .line 133
    iget-object p4, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {p4, p3}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setBookLastPosition(I)V

    .line 135
    iget-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {p3}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result p3

    invoke-static {p3}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPageIndexFromPosition(I)I

    move-result p3

    .line 136
    invoke-direct {p0, p3}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->validateLastPageReadIndex(I)I

    move-result p3

    .line 138
    invoke-virtual {p0, p3}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPdfPage(I)Lcom/amazon/android/docviewer/pdf/PdfPage;

    move-result-object p4

    iput-object p4, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-nez p4, :cond_0

    .line 141
    sget-object p4, Lcom/amazon/android/docviewer/pdf/PdfDoc;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening page 0 since getPdfPage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") unexpectedly returned null!"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPdfPage(I)Lcom/amazon/android/docviewer/pdf/PdfPage;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 145
    :cond_0
    new-instance p3, Lcom/amazon/android/docviewer/pdf/PdfDocSearcher;

    invoke-direct {p3, p1}, Lcom/amazon/android/docviewer/pdf/PdfDocSearcher;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;)V

    iput-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_searcher:Lcom/amazon/android/docviewer/pdf/PdfDocSearcher;

    .line 147
    new-instance p1, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;

    invoke-direct {p1}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfRenderer:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;

    .line 149
    new-instance p1, Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;

    invoke-direct {p1}, Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfHistoryManager:Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;

    .line 151
    new-instance p1, Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;

    invoke-direct {p1}, Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_textMagnificationManager:Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bookItem.getSample(): "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isMop()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_tocSupported:Z

    if-eqz v0, :cond_2

    .line 157
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfTaskManager:Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;

    new-instance p2, Lcom/amazon/android/docviewer/pdf/PdfDoc$1;

    invoke-direct {p2, p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc$1;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDoc;)V

    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->newTask(Ljava/util/concurrent/Callable;)Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_tocTask:Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfTaskManager:Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;

    new-instance p2, Lcom/amazon/android/docviewer/pdf/PdfDoc$2;

    invoke-direct {p2, p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc$2;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDoc;)V

    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->newTask(Ljava/util/concurrent/Callable;)Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/pdf/PdfDoc;)Lcom/amazon/android/docviewer/pdf/PdfDocViewer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_docViewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/pdf/PdfDoc;Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->populateTOC(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/android/docviewer/pdf/PdfDoc;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentReloadTriggerCounts:I

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/android/docviewer/pdf/PdfDoc;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_timeOfLastReloadReq:J

    return-wide v0
.end method

.method private createPagePosition(ILcom/amazon/kcp/application/metrics/internal/MetricsManager;)Lcom/amazon/android/docviewer/pdf/PdfPagePositions;
    .locals 2

    .line 850
    :try_start_0
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V

    .line 852
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isMop()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "loading page index "

    if-eqz p2, :cond_0

    .line 853
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from mopHandle="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_mopHandle:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 854
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_mopHandle:J

    invoke-virtual {p2, v0, v1, p1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->createPdfPagePositionsFromMop(JI)Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    move-result-object p1

    goto :goto_0

    .line 857
    :cond_0
    sget-boolean p2, Lcom/amazon/android/docviewer/pdf/PdfDoc;->highlightingSupported:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isClosed()Z

    move-result p2

    if-nez p2, :cond_1

    .line 858
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from documentHandle="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 859
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    invoke-virtual {p2, v0, v1, p1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->createPdfPagePositionsFromDoc(JI)Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    move-result-object p1

    goto :goto_0

    .line 863
    :cond_1
    new-instance p1, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    const-wide/16 v0, -0x1

    sget-object p2, Lcom/amazon/android/docviewer/pdf/PdfDoc;->EMPTY_TEXT_ELEMENTS:[Lcom/amazon/android/docviewer/pdf/TextElement;

    invoke-direct {p1, v0, v1, p2}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;-><init>(J[Lcom/amazon/android/docviewer/pdf/TextElement;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 866
    :goto_0
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 867
    throw p1
.end method

.method private getBookBeginningPosition()I
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookStartingPosition()I

    move-result v0

    return v0
.end method

.method private getEndPosition()I
    .locals 1

    .line 620
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPositionFromPageIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getGraphicForRangeHelper(IIII)Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;
    .locals 16

    move-object/from16 v9, p0

    .line 1222
    invoke-static/range {p1 .. p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getPageIndexFromGeometricPosition(I)I

    move-result v1

    .line 1223
    invoke-static/range {p2 .. p2}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getPageIndexFromGeometricPosition(I)I

    move-result v0

    if-ne v1, v0, :cond_5

    .line 1230
    invoke-virtual {v9, v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isPageValid(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1235
    invoke-direct/range {p0 .. p2}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getRectFFromPositions(II)Landroid/graphics/RectF;

    move-result-object v0

    .line 1239
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    .line 1240
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const v4, 0x447fc000    # 1023.0f

    .line 1241
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1244
    iget-object v3, v9, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageSizeCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 1245
    invoke-direct/range {p0 .. p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->incrementDocumentReloadTrigger()V

    .line 1246
    monitor-enter p0

    .line 1247
    :try_start_0
    iget-object v3, v9, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1249
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getGraphicHelper for page "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " from docHandle "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v9, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1250
    iget-object v3, v9, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v6, v9, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    invoke-virtual {v3, v6, v7, v1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->doLoadPage(JI)J

    move-result-wide v6
    :try_end_1
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1252
    :try_start_2
    iget-object v3, v9, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v3, v6, v7}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getPageWidth(J)I

    move-result v3

    int-to-float v3, v3

    .line 1253
    iget-object v8, v9, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v8, v6, v7}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getPageHeight(J)I

    move-result v8

    int-to-float v8, v8

    .line 1254
    iget-object v10, v9, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageSizeCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Landroid/graphics/Rect;

    float-to-int v13, v3

    float-to-int v14, v8

    const/4 v15, 0x0

    invoke-direct {v12, v15, v15, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1256
    :try_start_3
    iget-object v10, v9, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v10, v6, v7}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->doClosePage(J)I
    :try_end_3
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1262
    :try_start_4
    iget-object v1, v9, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 1264
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1256
    :try_start_5
    iget-object v2, v9, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v2, v6, v7}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->doClosePage(J)I

    .line 1257
    throw v0
    :try_end_5
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1259
    :try_start_6
    sget-object v2, Lcom/amazon/android/docviewer/pdf/PdfDoc;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to fetch page size for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from docHandle "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v9, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1262
    :try_start_7
    iget-object v0, v9, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    monitor-exit p0

    return-object v5

    :goto_0
    iget-object v1, v9, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 1263
    throw v0

    :catchall_2
    move-exception v0

    .line 1264
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 1266
    :cond_0
    iget-object v3, v9, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageSizeCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1267
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    .line 1268
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v8, v1

    :goto_1
    const v1, 0x43ff8000    # 511.0f

    div-float v1, v3, v1

    div-float v4, v8, v4

    .line 1272
    invoke-virtual {v2, v1, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1273
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1274
    invoke-virtual {v0}, Landroid/graphics/RectF;->sort()V

    .line 1276
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 1277
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 1279
    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/16 v6, 0x1ff

    const/16 v7, 0x3ff

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v4, v6

    cmpg-float v6, v1, v4

    if-ltz v6, :cond_3

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v4, p3

    int-to-float v4, v4

    div-float/2addr v4, v1

    move/from16 v6, p4

    int-to-float v6, v6

    div-float/2addr v6, v2

    .line 1288
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float v6, v1, v4

    .line 1290
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-float v7, v2, v4

    .line 1291
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 1293
    iget v10, v0, Landroid/graphics/RectF;->left:F

    neg-float v10, v10

    mul-float v10, v10, v4

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 1294
    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    mul-float v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v4, 0x1

    if-lt v6, v4, :cond_3

    if-ge v7, v4, :cond_2

    goto :goto_2

    :cond_2
    div-float v11, v3, v1

    div-float/2addr v8, v2

    .line 1304
    new-instance v12, Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;

    move-object v1, v12

    move-object/from16 v2, p0

    move v3, v6

    move v4, v7

    move v5, v10

    move v6, v0

    move v7, v11

    invoke-direct/range {v1 .. v8}, Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDoc;IIIIFF)V

    return-object v12

    :cond_3
    :goto_2
    return-object v5

    .line 1231
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a valid page: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for position: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1226
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Geometric ranges across multiple pages are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getMaxPositionForPage(I)I
    .locals 3

    .line 1396
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V

    .line 1398
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isMop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_mopHandle:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->createPdfPagePositionsFromMop(JI)Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    move-result-object v0

    .line 1401
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result p1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->getKindleIndexCount()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 1409
    invoke-static {p1}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPositionFromPageIndex(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, -0x1

    .line 1412
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 1413
    throw p1
.end method

.method private getRectFFromPositions(II)Landroid/graphics/RectF;
    .locals 3

    .line 1212
    new-instance v0, Landroid/graphics/RectF;

    .line 1213
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getUnscaledXCoordinateFromGeometricPosition(I)I

    move-result v1

    int-to-float v1, v1

    .line 1214
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getUnscaledYCoordinateFromGeometricPosition(I)I

    move-result p1

    int-to-float p1, p1

    .line 1215
    invoke-static {p2}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getUnscaledXCoordinateFromGeometricPosition(I)I

    move-result v2

    int-to-float v2, v2

    .line 1216
    invoke-static {p2}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getUnscaledYCoordinateFromGeometricPosition(I)I

    move-result p2

    int-to-float p2, p2

    invoke-direct {v0, v1, p1, v2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1217
    invoke-virtual {v0}, Landroid/graphics/RectF;->sort()V

    return-object v0
.end method

.method private incrementDocumentReloadTrigger()V
    .locals 5

    .line 941
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentReloadTriggerCounts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentReloadTriggerCounts:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    .line 943
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_timeOfLastReloadReq:J

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "m_documentReloadTriggerCounts == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentReloadTriggerCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; scheduling reload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 945
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/android/docviewer/pdf/PdfDoc$4;

    invoke-direct {v1, p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc$4;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDoc;)V

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public static isHighlightingSupported()Z
    .locals 1

    .line 1066
    sget-boolean v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->highlightingSupported:Z

    return v0
.end method

.method private populateTOC(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 4

    .line 236
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_tocSupported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->doLoadBookmarks(J)Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 254
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return-object v1

    .line 250
    :cond_1
    :try_start_1
    invoke-static {p1, v0}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->createPdfBookTOC(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/pdf/PdfBookmark;)Lcom/amazon/android/docviewer/pdf/PdfBookTOC;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 252
    :try_start_2
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->TAG:Ljava/lang/String;

    const-string v2, "Caught exception when trying to load PDF TOC bookmarks"

    invoke-static {v0, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    :goto_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return-object v1

    :goto_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 255
    throw p1

    :cond_2
    :goto_2
    return-object v1
.end method

.method public static setHighlightingSupported(Z)V
    .locals 0

    .line 1059
    sput-boolean p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->highlightingSupported:Z

    return-void
.end method

.method private validateLastPageReadIndex(I)I
    .locals 1

    .line 762
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBookBeginningPosition()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPageIndexFromPosition(I)I

    move-result v0

    if-le v0, p1, :cond_0

    .line 763
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBookBeginningPosition()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPageIndexFromPosition(I)I

    move-result p1

    goto :goto_0

    .line 764
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getEndPosition()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPageIndexFromPosition(I)I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 765
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getEndPosition()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPageIndexFromPosition(I)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public addVisitedHistory()V
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getCurrentPageIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->addVisitedHistory(I)V

    return-void
.end method

.method public addVisitedHistory(I)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfHistoryManager:Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;->addPageIndex(I)V

    :cond_0
    return-void
.end method

.method public clearBackHistory()V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfHistoryManager:Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;->clearHistory()V

    return-void
.end method

.method public clearCachedSearchResults()V
    .locals 0

    return-void
.end method

.method close()V
    .locals 4

    .line 796
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfTaskManager:Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfTaskManager:Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->shutdownNow()V

    .line 799
    iput-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfTaskManager:Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfLabelProvider:Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;

    if-eqz v0, :cond_1

    .line 802
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->close()V

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->writeLockDocument()V

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->doCloseDocument(J)I

    .line 807
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_mopHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->releaseMopAccess(J)V

    .line 808
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfHistoryManager:Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;

    if-eqz v0, :cond_2

    .line 809
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfHistoryManager:Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;->close()V

    const-wide/16 v2, 0x0

    .line 810
    iput-wide v2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    .line 811
    iput-wide v2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_mopHandle:J

    .line 813
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_textMagnificationManager:Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->writeUnlockDocument()V

    .line 818
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_mobiDataReader:Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;

    if-eqz v0, :cond_3

    .line 819
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;->delete()V

    .line 821
    :cond_3
    iput-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_mobiDataReader:Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;

    return-void

    :catchall_0
    move-exception v0

    .line 815
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->writeUnlockDocument()V

    .line 816
    throw v0
.end method

.method public createExcerpt(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;
    .locals 7

    .line 1418
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 1419
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 1420
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result v2

    .line 1421
    invoke-virtual {p0, v2}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPagePositions(I)Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    move-result-object v3

    .line 1422
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-static {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result v4

    sub-int/2addr v0, v4

    .line 1423
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-static {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 1424
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1426
    sget-object v4, Lcom/amazon/android/docviewer/pdf/PdfDoc;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End page index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " != beginning page "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; limiting excerpt to first page"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->getKindleIndexCount()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    .line 1430
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x14

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ne v0, v4, :cond_2

    .line 1431
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result p1

    if-nez p1, :cond_2

    add-int/2addr v4, v1

    .line 1434
    :cond_2
    invoke-static {v3, v0, v4, v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->createPageExcerpt(Lcom/amazon/android/docviewer/pdf/PdfPagePositions;III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method createPagePosition(I)Lcom/amazon/android/docviewer/pdf/PdfPagePositions;
    .locals 1

    .line 839
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->createPagePosition(ILcom/amazon/kcp/application/metrics/internal/MetricsManager;)Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    move-result-object p1

    return-object p1
.end method

.method public finishFirstPageVisibleTiming()Z
    .locals 2

    .line 1362
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_timeVisibilityOfFirstPage:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_docViewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->notifyFirstPageLoadedEvent()V

    .line 1364
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_timeVisibilityOfFirstPage:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public getBackDepth()J
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfHistoryManager:Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;->getHistoryCount()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getBeginningPosition()I
    .locals 1

    .line 580
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBookBeginningPosition()I

    move-result v0

    return v0
.end method

.method public getBeginningPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 605
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBeginningPosition()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v0
.end method

.method public getBookEndPosition()I
    .locals 1

    .line 590
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getEndPosition()I

    move-result v0

    return v0
.end method

.method public getBookEndPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 611
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBookEndPosition()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v0
.end method

.method public getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-object v0
.end method

.method public getBookPositionBase()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCachedSearchResults(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/android/docviewer/BookSearchResult;",
            ">;"
        }
    .end annotation

    .line 687
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    return-object v0
.end method

.method getCurrentPageIndex()I
    .locals 1

    .line 997
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz v0, :cond_0

    .line 998
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndex()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDocumentWordCount()I
    .locals 3

    .line 979
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V

    .line 981
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isMop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_mopHandle:J

    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getDocumentWordCount(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 985
    :goto_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 986
    throw v0
.end method

.method public getGotoTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    .line 1071
    new-instance v0, Lcom/amazon/kcp/reader/PdfGotoTextWatcher;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/PdfGotoTextWatcher;-><init>(Lcom/amazon/android/docviewer/KindleDoc;)V

    return-object v0
.end method

.method public getGraphicDimensionsForRange(IIII)Landroid/graphics/Rect;
    .locals 0

    .line 1147
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getGraphicForRangeHelper(IIII)Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1148
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    iget p3, p1, Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;->renderWidth:I

    iget p1, p1, Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;->renderHeight:I

    const/4 p4, 0x0

    invoke-direct {p2, p4, p4, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public getGraphicForPageIndex(III)Landroid/graphics/Bitmap;
    .locals 1

    .line 1352
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getFirstGeometricPositionFromPageIndex(I)I

    move-result v0

    .line 1353
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getLastGeometricPositionFromPageIndex(I)I

    move-result p1

    .line 1352
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getGraphicForRange(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getGraphicForRange(IIII)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v1, p0

    const-string v2, " from docHandle "

    .line 1310
    invoke-static/range {p1 .. p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getPageIndexFromGeometricPosition(I)I

    move-result v3

    .line 1312
    invoke-direct/range {p0 .. p4}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getGraphicForRangeHelper(IIII)Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;

    move-result-object v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    return-object v4

    .line 1317
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->incrementDocumentReloadTrigger()V

    .line 1318
    iget-object v5, v1, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v5}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V

    .line 1320
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5
    :try_end_0
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_1

    .line 1336
    :goto_0
    iget-object v0, v1, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return-object v4

    .line 1324
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getGraphic for page "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1325
    iget-object v5, v1, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v6, v1, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    invoke-virtual {v5, v6, v7, v3}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->doLoadPage(JI)J

    move-result-wide v5
    :try_end_1
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1327
    :try_start_2
    iget-object v8, v1, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget v11, v0, Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;->startX:I

    iget v12, v0, Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;->startY:I

    iget v13, v0, Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;->renderWidth:I

    iget v14, v0, Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;->renderHeight:I

    iget v15, v0, Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;->xZoomScale:F

    iget v0, v0, Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;->yZoomScale:F

    const/16 v17, 0x0

    move-wide v9, v5

    move/from16 v16, v0

    invoke-virtual/range {v8 .. v17}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->renderPage(JIIIIFFI)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1330
    :try_start_3
    iget-object v7, v1, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v7, v5, v6}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->doClosePage(J)I
    :try_end_3
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1336
    iget-object v2, v1, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 1330
    :try_start_4
    iget-object v7, v1, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v7, v5, v6}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->doClosePage(J)I

    .line 1331
    throw v0
    :try_end_4
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1333
    :try_start_5
    sget-object v5, Lcom/amazon/android/docviewer/pdf/PdfDoc;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to render thumbnail for page "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 1336
    :goto_1
    iget-object v2, v1, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 1337
    throw v0
.end method

.method public getImageFromImageId(Ljava/lang/String;)Lcom/amazon/android/docviewer/ImageProvider;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLastPageRead()I
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPageIndexFromPosition(I)I

    move-result v0

    .line 779
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->validateLastPageReadIndex(I)I

    move-result v0

    return v0
.end method

.method public getNextPage()Lcom/amazon/android/docviewer/IDocumentPage;
    .locals 1

    .line 489
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNumWordsBetweenPositions(III)I
    .locals 3

    .line 1119
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result v0

    .line 1121
    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result v1

    sub-int/2addr p1, v1

    sub-int/2addr p2, v1

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_1

    .line 1129
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPagePositions(I)Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    move-result-object v0

    :goto_0
    if-gt p1, p2, :cond_2

    .line 1132
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->getTextElement(I)Lcom/amazon/android/docviewer/pdf/TextElement;

    move-result-object v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p3, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public getPageCount()I
    .locals 1

    .line 974
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageCount:I

    return v0
.end method

.method public getPageEndLabel()Ljava/lang/String;
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfLabelProvider:Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->getLastArabicPageLabel()I

    move-result v0

    if-gez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfLabelProvider:Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBookEndPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 563
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageEndPosition()I
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getLastElementPositionId()I

    move-result v0

    goto :goto_0

    .line 546
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getLastPageRead()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getMaxPositionForPage(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPageEndPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 554
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageEndPosition()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v0
.end method

.method public getPageLabelForPosition(I)Ljava/lang/String;
    .locals 0

    .line 569
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result p1

    .line 570
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageLabelFromPageIndex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPageLabelFromPageIndex(I)Ljava/lang/String;
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfLabelProvider:Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->getPageLabelForPageIndex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;

    move-result-object v0

    return-object v0
.end method

.method public getPageLabelProvider()Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfLabelProvider:Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;

    return-object v0
.end method

.method getPageOrigin(I)Landroid/graphics/Point;
    .locals 2

    .line 1384
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageOriginCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1385
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageOriginCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1386
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getPagePositions(I)Lcom/amazon/android/docviewer/pdf/PdfPagePositions;
    .locals 1

    .line 828
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPagePositions(ILcom/amazon/kcp/application/metrics/internal/MetricsManager;)Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    move-result-object p1

    return-object p1
.end method

.method getPagePositions(ILcom/amazon/kcp/application/metrics/internal/MetricsManager;)Lcom/amazon/android/docviewer/pdf/PdfPagePositions;
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndex()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 882
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPagePositions()Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    move-result-object p1

    return-object p1

    .line 885
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->createPagePosition(ILcom/amazon/kcp/application/metrics/internal/MetricsManager;)Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    move-result-object p1

    return-object p1
.end method

.method public getPageStartPosition()I
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndex()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result v0

    goto :goto_0

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getLastPageRead()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 526
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageStartPosition()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v0
.end method

.method public getPageState(I)[B
    .locals 1

    .line 1459
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageState(I)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPdfMetaData()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    .line 189
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getInstance()Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    move-result-object v0

    iget-wide v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getDocInfo(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPdfPage(I)Lcom/amazon/android/docviewer/pdf/PdfPage;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    .line 898
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V

    .line 900
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPdfPage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 902
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz v0, :cond_1

    .line 903
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndex()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_1

    .line 926
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 908
    :try_start_1
    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageCount:I

    if-ge p1, v1, :cond_0

    .line 909
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPagePositions(I)Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    move-result-object v7

    .line 910
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_docViewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->isMarginChangeSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isMop()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 911
    :goto_1
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfPage;

    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_docViewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    iget-wide v5, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    iget-object v9, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageSizeCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v10, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageContentRectCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v2, v0

    move v8, p1

    invoke-direct/range {v2 .. v11}, Lcom/amazon/android/docviewer/pdf/PdfPage;-><init>(Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;Lcom/amazon/android/docviewer/pdf/PdfDocViewer;JLcom/amazon/android/docviewer/pdf/PdfPagePositions;ILjava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Z)V

    .line 920
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_docHandleDependents:Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;

    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;->add(Lcom/amazon/android/docviewer/pdf/PdfDocDependent;)V

    .line 921
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->incrementDocumentReloadTrigger()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 926
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 927
    throw p1
.end method

.method public getPdfPageSize(I)Landroid/graphics/Rect;
    .locals 4

    .line 931
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getFirstGeometricPositionFromPageIndex(I)I

    move-result v0

    .line 932
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getLastGeometricPositionFromPageIndex(I)I

    move-result p1

    .line 933
    new-instance v1, Landroid/graphics/Rect;

    .line 934
    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getUnscaledXCoordinateFromGeometricPosition(I)I

    move-result v2

    .line 935
    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getUnscaledYCoordinateFromGeometricPosition(I)I

    move-result v0

    .line 936
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getUnscaledXCoordinateFromGeometricPosition(I)I

    move-result v3

    .line 937
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getUnscaledYCoordinateFromGeometricPosition(I)I

    move-result p1

    invoke-direct {v1, v2, v0, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method getPdfRenderer()Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfRenderer:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;

    return-object v0
.end method

.method public getPortraitSizeForGraphic(IIIF)Landroid/graphics/Rect;
    .locals 6

    .line 1154
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getPageIndexFromGeometricPosition(I)I

    move-result v0

    .line 1155
    invoke-static {p2}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getPageIndexFromGeometricPosition(I)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 1163
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    .line 1164
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1165
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1166
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 1167
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-le v2, v1, :cond_0

    move v5, v2

    move v2, v1

    move v1, v5

    .line 1178
    :cond_0
    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getFirstGeometricPositionFromPageIndex(I)I

    move-result v3

    .line 1179
    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getLastGeometricPositionFromPageIndex(I)I

    move-result v0

    .line 1177
    invoke-direct {p0, v3, v0, v2, v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getGraphicForRangeHelper(IIII)Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1186
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getRectFFromPositions(II)Landroid/graphics/RectF;

    move-result-object p1

    .line 1189
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    const v1, 0x43ff8000    # 511.0f

    div-float/2addr p2, v1

    .line 1190
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    const v1, 0x447fc000    # 1023.0f

    div-float/2addr p1, v1

    .line 1193
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;->renderWidth:I

    int-to-float v2, v2

    mul-float v2, v2, p2

    iget v0, v0, Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;->renderHeight:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v0, 0x3fa00000    # 1.25f

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v3, v2, p2

    if-lez v3, :cond_2

    cmpl-float v3, v2, p1

    if-gtz v3, :cond_3

    :cond_2
    const v3, 0x3e4ccccd    # 0.2f

    add-float v4, p2, p1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    :cond_3
    div-float p1, v2, p1

    div-float/2addr v2, p2

    .line 1201
    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_4
    int-to-float p1, p3

    .line 1205
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1208
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result p3

    mul-float p3, p3, p1

    float-to-int p3, p3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result p4

    mul-float p4, p4, p1

    float-to-int p1, p4

    const/4 p4, 0x0

    invoke-direct {p2, p4, p4, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2

    .line 1158
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Geometric ranges across multiple pages are not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPreviousPage()Lcom/amazon/android/docviewer/IDocumentPage;
    .locals 1

    .line 484
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getReadingProgress()I
    .locals 2

    .line 1342
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageStartPosition()I

    move-result v0

    int-to-float v0, v0

    .line 1343
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBookEndPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v1, 0x64

    .line 1342
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getSearcher()Lcom/amazon/android/docviewer/KindleDocSearcher;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_searcher:Lcom/amazon/android/docviewer/pdf/PdfDocSearcher;

    return-object v0
.end method

.method public getSecurityPids()[Ljava/lang/String;
    .locals 1

    .line 1358
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_securityPids:[Ljava/lang/String;

    return-object v0
.end method

.method public getStartReadingPosition()I
    .locals 1

    .line 585
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBookBeginningPosition()I

    move-result v0

    return v0
.end method

.method public getTOC()Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 1

    const/4 v0, 0x0

    .line 421
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getTOC(Z)Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    return-object v0
.end method

.method public getTOC(Z)Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_tocTask:Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 445
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->getNoThrow()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->getNoBlocking()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/amazon/android/docviewer/IKindleTOC;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTOCForReadingMode(Lcom/amazon/kindle/krx/reader/BookReadingMode;)Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTOCForSearch()Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 1

    .line 426
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    return-object v0
.end method

.method public getTextBetweenPositions(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1077
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getTextBetweenPositions(III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextBetweenPositions(III)Ljava/lang/String;
    .locals 4

    .line 1082
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result v0

    .line 1083
    invoke-static {p2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result v1

    const-string v2, ""

    if-eq v0, v1, :cond_0

    return-object v2

    .line 1088
    :cond_0
    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result v1

    sub-int/2addr p1, v1

    sub-int/2addr p2, v1

    if-ltz p1, :cond_5

    if-gez p2, :cond_1

    goto :goto_2

    .line 1096
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPagePositions(I)Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    move-result-object v0

    .line 1098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-gt p1, p2, :cond_4

    if-lez p3, :cond_2

    if-lt v2, p3, :cond_2

    goto :goto_1

    .line 1105
    :cond_2
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->getTextElement(I)Lcom/amazon/android/docviewer/pdf/TextElement;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1107
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/pdf/TextElement;->getWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1112
    :cond_4
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    return-object v2
.end method

.method public getTextMagnificationManager()Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_textMagnificationManager:Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;

    return-object v0
.end method

.method public getValidLocationFromLocation(I)I
    .locals 0

    .line 1464
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result p1

    .line 1465
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result p1

    return p1
.end method

.method public getVisitedHistory()I
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfHistoryManager:Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;->getLastPageIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public hasCoverPage()Z
    .locals 1

    .line 406
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHierarchicalTOC()Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_tocSupported:Z

    return v0
.end method

.method public hasTOC()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_tocSupported:Z

    return v0
.end method

.method public isActiveAreaClicked(Landroid/graphics/PointF;)Z
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_textMagnificationManager:Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;

    .line 396
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndex()I

    move-result v0

    add-int/2addr v0, v1

    .line 395
    invoke-virtual {v2, p1, v0}, Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;->isTextMagnificationClicked(Landroid/graphics/PointF;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isBackAvailable()Z
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfHistoryManager:Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;->hasHistory()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isClosed()Z
    .locals 5

    .line 789
    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMop()Z
    .locals 5

    .line 498
    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_mopHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNextPageAvailable()Z
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndex()I

    move-result v0

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isPageValid(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1034
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageCount:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPrevPageAvailable()Z
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndex()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPromptworthyFpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)Z
    .locals 4

    .line 735
    iget v0, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBookEndPosition()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 736
    :goto_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz v1, :cond_1

    iget p1, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getLastElementPositionId()I

    move-result v1

    if-le p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public isPromptworthyMrpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)Z
    .locals 5

    .line 743
    iget v0, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBookEndPosition()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 744
    :goto_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz v1, :cond_2

    iget v4, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    .line 746
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getLastElementPositionId()I

    move-result v1

    if-gt v4, v1, :cond_1

    iget p1, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 747
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getFirstElementPositionId()I

    move-result v1

    if-ge p1, v1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public isUnderMagnificationActiveArea(FF)Z
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 322
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRealTouchPointOnPage(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 324
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getIsTextMagnificationEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 325
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getSelectedMagnificationItem()Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->isClickOnImage(Landroid/graphics/PointF;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 326
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isActiveAreaClicked(Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 327
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->setMagnificationStatus(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 329
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->setMagnificationStatus(I)V

    .line 332
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getIsTextMagnificationEnabled()Z

    move-result v1

    :cond_3
    return v1
.end method

.method onPageClosed(Lcom/amazon/android/docviewer/pdf/PdfPage;)V
    .locals 1

    .line 1372
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1373
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    :cond_0
    return-void
.end method

.method public proposeFurthestReadLocation(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public proposeMRPR(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public recordStatisticsOnPostNavigation()V
    .locals 0

    return-void
.end method

.method public reloadDocHandle()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    const-string v0, "Notifying "

    .line 202
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->writeLockDocument()V

    .line 204
    :try_start_0
    iget-wide v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_docHandleDependents:Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " observers of close of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_docHandleDependents:Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;->getDependents()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/android/docviewer/pdf/PdfDocDependent;

    .line 207
    invoke-interface {v4}, Lcom/amazon/android/docviewer/pdf/PdfDocDependent;->closeDocHandleDerivatives()V

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing old document handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v3, v1, v2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->doCloseDocument(J)I

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_mopHandle:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->doLoadDocument(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The new doc handle is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    iput-wide v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    const/4 v1, 0x0

    .line 219
    iput v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentReloadTriggerCounts:I

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_docHandleDependents:Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " observers of switch to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_docHandleDependents:Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;->getDependents()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/pdf/PdfDocDependent;

    .line 222
    iget-wide v2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_documentHandle:J

    invoke-interface {v1, v2, v3}, Lcom/amazon/android/docviewer/pdf/PdfDocDependent;->openNewDocHandleDerivatives(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->writeUnlockDocument()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->writeUnlockDocument()V

    .line 226
    throw v0
.end method

.method public runSubmittedBackgroundTasks()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pdfTaskManager:Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->runSubmittedBackgroundTasks()V

    :cond_0
    return-void
.end method

.method public search(Ljava/lang/String;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/services/download/IStatusTracker;)Ljava/lang/Runnable;
    .locals 0

    .line 726
    new-instance p1, Lcom/amazon/android/docviewer/pdf/PdfDoc$3;

    invoke-direct {p1, p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc$3;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDoc;)V

    return-object p1
.end method

.method public setCachedSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/android/docviewer/BookSearchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method setCurrentPageIndex(I)Z
    .locals 4

    .line 1011
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isPageValid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1012
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getCurrentPageIndex()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1014
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPdfPage(I)Lcom/amazon/android/docviewer/pdf/PdfPage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->setCurrentPdfPage(Lcom/amazon/android/docviewer/pdf/PdfPage;)V
    :try_end_0
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1016
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetPdfPage failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 1022
    :cond_1
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal page index request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public setCurrentPdfPage(Lcom/amazon/android/docviewer/pdf/PdfPage;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1041
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPdfPage(I)Lcom/amazon/android/docviewer/pdf/PdfPage;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;
    :try_end_0
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1043
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetPdfPage 0 failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1046
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_currentPdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    return-void
.end method

.method setPageOrigin(ILandroid/graphics/Point;)V
    .locals 2

    .line 1378
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageOriginCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1379
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;->m_pageOriginCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1380
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public userLocationFromPosition(I)I
    .locals 0

    .line 636
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
