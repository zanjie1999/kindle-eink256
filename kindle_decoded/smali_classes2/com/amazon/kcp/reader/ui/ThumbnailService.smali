.class public Lcom/amazon/kcp/reader/ui/ThumbnailService;
.super Landroid/app/Service;
.source "ThumbnailService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/ThumbnailService$ThumbnailDiskFetcher;,
        Lcom/amazon/kcp/reader/ui/ThumbnailService$IncomingMessageHandler;
    }
.end annotation


# static fields
.field public static final ActionKey:Ljava/lang/String; = "ThumbnailServer"

.field private static final BACKGROUND_RENDER_PAUSE_SECONDS:J = 0x5L

.field private static final BITMAP_FILE_QUALITY:I = 0x3c

.field public static final CACHE_PAGES:I = 0x5

.field public static final DocumentPathKey:Ljava/lang/String; = "documentPath"

.field public static final HeightKey:Ljava/lang/String; = "height"

.field private static final Invalid:I = -0x1

.field public static final KRFDocumentInfoBundleKey:Ljava/lang/String; = "KrfDocumentInfoBundle"

.field private static final MAXIMUM_RENDERS_PER_OPEN:I = 0x19

.field private static final MAX_THUMBNAIL_THREADS:I = 0x1

.field public static final NEW_PDF_DOCUMENT:I = 0x4

.field public static final PageRangePathKey:Ljava/lang/String; = "pageRangePath"

.field public static final RENDER_THUMBNAIL_TO_DISK:I = 0x1

.field public static final SecurityPidsKey:Ljava/lang/String; = "securityPids"

.field public static final ServiceTimeKey:Ljava/lang/String; = "serviceTime"

.field public static final StartTimeKey:Ljava/lang/String; = "startTime"

.field private static final TAG:Ljava/lang/String; = "ThumbnailService"

.field public static final THUMBNAIL_BITMAP_SUFFIX:Ljava/lang/String; = "_bitmap.jpg"

.field public static final THUMBNAIL_CANCELLED:I = 0x3

.field public static final THUMBNAIL_RENDERED:I = 0x2

.field public static final ThumbnailPathKey:Ljava/lang/String; = "thumbnailPath"

.field public static final ThumbnailPrefixKey:Ljava/lang/String; = "thumbnailPrefix"

.field public static final WidthKey:Ljava/lang/String; = "width"


# instance fields
.field private KrfDocumentInfoBundle:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field backgroundRenderer:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

.field private documentFileName:Ljava/lang/String;

.field private documentHandle:J

.field private documentSecurityPids:[Ljava/lang/String;

.field final incomingMessenger:Landroid/os/Messenger;

.field private maximumValidPage:I

.field private minimumValidPage:I

.field private mobiDataReader:Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;

.field private mopHandle:J

.field private pageRange:Lcom/amazon/kcp/reader/ui/MappedIntArray;

.field private pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

.field private rendersSinceOpen:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->rendersSinceOpen:I

    const-wide/16 v1, 0x0

    .line 60
    iput-wide v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->documentHandle:J

    .line 61
    iput-wide v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->mopHandle:J

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->mobiDataReader:Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;

    .line 87
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/amazon/kcp/reader/ui/ThumbnailService$IncomingMessageHandler;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lcom/amazon/kcp/reader/ui/ThumbnailService$IncomingMessageHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->incomingMessenger:Landroid/os/Messenger;

    .line 90
    iput v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->minimumValidPage:I

    const v0, 0x7fffffff

    .line 91
    iput v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->maximumValidPage:I

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->KrfDocumentInfoBundle:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/ThumbnailService;Landroid/os/Message;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->warmUpCache(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/ThumbnailService;IIILjava/lang/String;)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->renderBitmapToDisk(IIILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/ThumbnailService;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->closePdfDocument()V

    return-void
.end method

.method private closePdfDocument()V
    .locals 6

    .line 221
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->ensurePdfNativeInterface()V

    .line 222
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->writeLockDocument()V

    .line 223
    iget-wide v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->documentHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-string v0, "ThumbnailService"

    const-string v1, "Closing old document"

    .line 224
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v4, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->documentHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->doCloseDocument(J)I

    .line 226
    iput-wide v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->documentHandle:J

    .line 227
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v4, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->mopHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->releaseMopAccess(J)V

    .line 228
    iput-wide v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->mopHandle:J

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->mobiDataReader:Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;->delete()V

    :cond_0
    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->mobiDataReader:Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->writeUnlockDocument()V

    return-void
.end method

.method private ensurePdfNativeInterface()V
    .locals 3

    .line 518
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    if-nez v0, :cond_0

    .line 519
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->blockOnAppInitialization()Z

    .line 521
    :try_start_0
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getInstance()Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;
    :try_end_0
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing PDF native interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailService"

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private initBackgroundRenderingServer()V
    .locals 9

    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->backgroundRenderer:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    if-nez v0, :cond_0

    const-string v0, "ThumbnailService"

    const-string v1, "Spinning up new background rendering service"

    .line 140
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x2

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 142
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->backgroundRenderer:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    :cond_0
    return-void
.end method

.method private readValidPages()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pageRange:Lcom/amazon/kcp/reader/ui/MappedIntArray;

    const-string v1, "ThumbnailService"

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 240
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/reader/ui/MappedIntArray;->get([I)V

    const/4 v0, 0x0

    .line 241
    aget v0, v2, v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->minimumValidPage:I

    const/4 v0, 0x1

    .line 242
    aget v0, v2, v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->maximumValidPage:I

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readValidPages: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->minimumValidPage:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->maximumValidPage:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "readValidPages: mPageRangeFile is null"

    .line 245
    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private recyclePdfDocument()V
    .locals 9

    .line 192
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->ensurePdfNativeInterface()V

    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->writeLockDocument()V

    .line 194
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->closePdfDocument()V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recycling PDF document"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->documentFileName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailService"

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->documentFileName:Ljava/lang/String;

    const-string v4, ".azw4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;

    invoke-direct {v0}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;-><init>()V

    .line 199
    new-instance v4, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArray;

    invoke-direct {v4}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArray;-><init>()V

    .line 200
    invoke-virtual {v4}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArray;->getStoredElements()Lcom/amazon/kindle/krf/KBL/Foundation/BufferVectorArray;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->documentSecurityPids:[Ljava/lang/String;

    array-length v6, v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferVectorArray;->setCount(J)V

    const/4 v5, 0x0

    .line 201
    :goto_1
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->documentSecurityPids:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 202
    invoke-virtual {v4}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArray;->getStoredElements()Lcom/amazon/kindle/krf/KBL/Foundation/BufferVectorArray;

    move-result-object v6

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateBufferAlterableArray;->getItem(J)Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;

    move-result-object v6

    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->documentSecurityPids:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;->copyFrom(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 204
    :cond_1
    invoke-static {v4}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArrayIterator;->createIterator(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;)Lcom/amazon/kindle/krf/KBL/Foundation/BufferArrayIterator;

    move-result-object v4

    .line 205
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->documentFileName:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;->createMobiDataReader(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->mobiDataReader:Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;

    .line 208
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->mobiDataReader:Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;

    if-eqz v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->mobiDataReader:Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;

    invoke-static {v4}, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;->getCPtr(Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->createMopAccess(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->mopHandle:J

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->documentFileName:Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->mopHandle:J

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->doLoadDocument(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->documentHandle:J

    const-string v0, "Opened new document"

    .line 212
    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot open document"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->documentFileName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    :goto_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->writeUnlockDocument()V

    .line 217
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private renderAndWrite(IIILjava/io/File;)Z
    .locals 5

    .line 395
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->useKRFRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->renderKrfThumbnail(III)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 398
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->renderPdfThumbnail(III)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_0
    const-string p3, "ThumbnailService"

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const-string p1, "Was not able to construct a bitmap"

    .line 401
    invoke-static {p3, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_1

    .line 403
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 404
    invoke-static {p2, p4}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->stashToDisk(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 406
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Time to write page "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v1

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 409
    :goto_1
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->useKRFRendering()Z

    move-result p2

    if-nez p2, :cond_2

    iget p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->rendersSinceOpen:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->rendersSinceOpen:I

    const/16 p3, 0x19

    if-le p2, p3, :cond_2

    .line 410
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->recyclePdfDocument()V

    .line 411
    iput v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->rendersSinceOpen:I

    :cond_2
    return p1
.end method

.method private renderBitmapToDisk(IIILjava/lang/String;)Z
    .locals 7

    .line 376
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p4

    const-string v1, "ThumbnailService"

    if-eqz p4, :cond_0

    .line 379
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bitmap for page "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already exists; skipping render and write"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_0
    iget-wide v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->documentHandle:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->useKRFRendering()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "Render request arrived but no document was opened; ignoring"

    .line 383
    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    if-le p1, v1, :cond_2

    .line 385
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->renderAndWrite(IIILjava/io/File;)Z

    move-result p4

    :cond_2
    :goto_0
    return p4
.end method

.method private renderKrfThumbnail(III)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v1, p0

    move/from16 v11, p1

    const-string v12, "Cannot render thumbnail for page index "

    const-string v13, "ThumbnailService"

    const/4 v14, 0x0

    .line 453
    :try_start_0
    iget-object v0, v1, Lcom/amazon/kcp/reader/ui/ThumbnailService;->KrfDocumentInfoBundle:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 458
    sget-object v2, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->DOCUMENT_PATH:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 459
    sget-object v2, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->VOUCHER_FILES:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 460
    sget-object v3, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->CONTAINER_FILES:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 461
    sget-object v4, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->ACCOUNT_SECRETS:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 462
    sget-object v5, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->DSN:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 463
    new-instance v0, Landroid/graphics/Rect;

    const/4 v5, 0x0

    move/from16 v7, p2

    move/from16 v9, p3

    invoke-direct {v0, v5, v5, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 465
    invoke-static {}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->instance()Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    move-result-object v5

    const/4 v7, 0x1

    .line 466
    invoke-direct {v1, v4}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->stringArrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 467
    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->stringArrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v1, v3}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->stringArrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    move-object v2, v5

    move/from16 v3, p1

    move-object v4, v0

    move v5, v7

    move-object v7, v9

    move-object v9, v10

    move-object v10, v15

    .line 466
    invoke-virtual/range {v2 .. v10}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->renderThumbnail(ILandroid/graphics/Rect;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 467
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No KRF document opened"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 469
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/amazon/kcp/reader/provider/BookImageRendererContainersMissingException;

    if-eqz v2, :cond_1

    return-object v14

    .line 474
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v14
.end method

.method private renderPdfThumbnail(III)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "ThumbnailService"

    .line 418
    iget-wide v4, v1, Lcom/amazon/kcp/reader/ui/ThumbnailService;->documentHandle:J

    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-le v2, v0, :cond_1

    .line 420
    :try_start_0
    iget-object v0, v1, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V

    .line 421
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 422
    iget-object v0, v1, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v7, v1, Lcom/amazon/kcp/reader/ui/ThumbnailService;->documentHandle:J

    invoke-virtual {v0, v7, v8, v2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->doLoadPage(JI)J

    move-result-wide v7

    .line 423
    iget-object v0, v1, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0, v7, v8}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getPageWidth(J)I

    move-result v0

    int-to-double v9, v0

    .line 424
    iget-object v0, v1, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0, v7, v8}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getPageHeight(J)I

    move-result v0

    int-to-double v11, v0

    div-double/2addr v9, v11

    move/from16 v0, p2

    int-to-double v11, v0

    move/from16 v13, p3

    int-to-double v14, v13

    div-double v16, v11, v14

    move-wide/from16 v18, v7

    const-wide/16 v6, 0x1

    cmpg-double v8, v9, v16

    if-gez v8, :cond_0

    mul-double v14, v14, v9

    .line 429
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v0, v6

    move v14, v0

    move v15, v13

    goto :goto_0

    :cond_0
    div-double/2addr v11, v9

    .line 431
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    move v14, v0

    move v15, v7

    :goto_0
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rendering page "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to bitmap "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v9, v1, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    const/16 v17, 0x0

    move-wide/from16 v10, v18

    invoke-virtual/range {v9 .. v17}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->renderPage(JIIIIFI)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_0
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :try_start_1
    iget-object v0, v1, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    move-wide/from16 v7, v18

    invoke-virtual {v0, v7, v8}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->doClosePage(J)I

    .line 439
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Time to render page "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v4

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v6, 0x0

    .line 442
    :goto_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot render thumbnail for page index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-static {v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 445
    :goto_2
    iget-object v0, v1, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    goto :goto_4

    :goto_3
    iget-object v2, v1, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 446
    throw v0

    :cond_1
    const/4 v6, 0x0

    :goto_4
    return-object v6
.end method

.method private shutDownBackgroundRendering()V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->backgroundRenderer:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    if-eqz v0, :cond_0

    const-string v0, "ThumbnailService"

    const-string v1, "Shutting down background rendering"

    .line 180
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->backgroundRenderer:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->backgroundRenderer:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Forced to interrupted a rendering from a previous document"

    .line 185
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->backgroundRenderer:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    :cond_0
    return-void
.end method

.method static stashToDisk(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 7

    const-string v0, " because it didn\'t write successfully"

    const-string v1, "Deleting "

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ThumbnailService"

    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 485
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 486
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x3c

    invoke-virtual {p0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    .line 488
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 493
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 490
    :try_start_1
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 493
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void

    :goto_1
    if-nez v2, :cond_1

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 496
    :cond_1
    throw p0
.end method

.method private stringArrayToList([Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 510
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private useKRFRendering()Z
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->KrfDocumentInfoBundle:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private warmUpCache(IIIILjava/lang/String;)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v0, p1

    move/from16 v7, p2

    .line 325
    iget-object v1, v6, Lcom/amazon/kcp/reader/ui/ThumbnailService;->backgroundRenderer:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    if-nez v1, :cond_0

    return-void

    .line 331
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warming up cache for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", page range [0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], starting at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v10, "ThumbnailService"

    invoke-static {v10, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v0, 0x1

    move v11, v0

    move v12, v1

    :cond_1
    :goto_0
    if-gez v11, :cond_3

    if-ge v12, v7, :cond_2

    goto :goto_1

    .line 349
    :cond_2
    iget-object v0, v6, Lcom/amazon/kcp/reader/ui/ThumbnailService;->backgroundRenderer:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    new-instance v1, Lcom/amazon/kcp/reader/ui/ThumbnailService$1;

    invoke-direct {v1, v6, v6}, Lcom/amazon/kcp/reader/ui/ThumbnailService$1;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailService;Landroid/app/Service;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    :goto_1
    const-string v13, "BG REQUEST: page "

    if-ltz v11, :cond_4

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v14, v6, Lcom/amazon/kcp/reader/ui/ThumbnailService;->backgroundRenderer:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    new-instance v15, Lcom/amazon/kcp/reader/ui/ThumbnailService$ThumbnailDiskFetcher;

    move-object v0, v15

    move-object/from16 v1, p0

    move v2, v11

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/ui/ThumbnailService$ThumbnailDiskFetcher;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailService;IIILjava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    add-int/lit8 v11, v11, -0x1

    .line 339
    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v11, v0

    :cond_4
    if-ge v12, v7, :cond_1

    .line 342
    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v13, v6, Lcom/amazon/kcp/reader/ui/ThumbnailService;->backgroundRenderer:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    new-instance v14, Lcom/amazon/kcp/reader/ui/ThumbnailService$ThumbnailDiskFetcher;

    move-object v0, v14

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/ui/ThumbnailService$ThumbnailDiskFetcher;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailService;IIILjava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method private warmUpCache(Landroid/os/Message;)V
    .locals 9

    .line 316
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 317
    invoke-virtual {p0}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v1, -0x1

    const-string/jumbo v2, "width"

    .line 318
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v2, "height"

    .line 319
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v1, "thumbnailPrefix"

    .line 320
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 321
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->warmUpCache(IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 501
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->incomingMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 134
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "ThumbnailService"

    const-string v1, "onDestroy: closing PDF document"

    .line 364
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->shutDownBackgroundRendering()V

    .line 366
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->closePdfDocument()V

    .line 367
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pageRange:Lcom/amazon/kcp/reader/ui/MappedIntArray;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/MappedIntArray;->close()V

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pageRange:Lcom/amazon/kcp/reader/ui/MappedIntArray;

    .line 371
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public openNewPdfDocument(Landroid/os/Message;)V
    .locals 4

    .line 147
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New open document request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ThumbnailService"

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->shutDownBackgroundRendering()V

    const-string p1, "documentPath"

    .line 151
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->documentFileName:Ljava/lang/String;

    const-string p1, "securityPids"

    .line 152
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->documentSecurityPids:[Ljava/lang/String;

    const-string p1, "pageRangePath"

    .line 153
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 155
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->KrfDocumentInfoBundle:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v3, "KrfDocumentInfoBundle"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pageRange:Lcom/amazon/kcp/reader/ui/MappedIntArray;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/amazon/kcp/reader/ui/MappedIntArray;

    const/4 v2, 0x2

    invoke-direct {v0, p1, v2}, Lcom/amazon/kcp/reader/ui/MappedIntArray;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pageRange:Lcom/amazon/kcp/reader/ui/MappedIntArray;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create page range file. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->useKRFRendering()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 169
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService;->pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    if-eqz p1, :cond_2

    .line 170
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->closePdfDocument()V

    goto :goto_1

    .line 173
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->recyclePdfDocument()V

    .line 175
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->initBackgroundRenderingServer()V

    return-void
.end method

.method public renderAndReply(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 251
    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 252
    iget v5, v0, Landroid/os/Message;->arg2:I

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 254
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v7, -0x1

    const-string/jumbo v8, "width"

    .line 255
    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "height"

    .line 256
    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v9, "startTime"

    const-wide/16 v10, 0x0

    .line 257
    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v12, "thumbnailPath"

    .line 258
    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 260
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->readValidPages()V

    .line 265
    iget v13, v1, Lcom/amazon/kcp/reader/ui/ThumbnailService;->minimumValidPage:I

    const-string v14, "Could not send THUMBNAIL_RENDERED: "

    const-string v15, ", "

    move-object/from16 v16, v14

    const-string v14, "ThumbnailService"

    if-lt v5, v13, :cond_1

    iget v13, v1, Lcom/amazon/kcp/reader/ui/ThumbnailService;->maximumValidPage:I

    if-gt v5, v13, :cond_1

    iget-object v13, v1, Lcom/amazon/kcp/reader/ui/ThumbnailService;->backgroundRenderer:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    if-nez v13, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v17, v2

    const-string v2, "Render request: "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v2, v1, Lcom/amazon/kcp/reader/ui/ThumbnailService;->backgroundRenderer:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    move-object v3, v14

    const-wide/16 v13, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v13, v14, v6}, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->pause(JLjava/util/concurrent/TimeUnit;)V

    .line 279
    invoke-direct {v1, v5, v8, v7, v12}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->renderBitmapToDisk(IIILjava/lang/String;)Z

    const/4 v2, 0x2

    const/4 v6, 0x0

    .line 280
    invoke-static {v6, v2, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 282
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 283
    invoke-virtual {v4, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "serviceTime"

    move-wide/from16 v6, v17

    .line 284
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 285
    invoke-virtual {v2, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 287
    :try_start_0
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v16

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v14

    move-object/from16 v6, v16

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cancelling render request for page "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " which is no longer in the valid range of ["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/amazon/kcp/reader/ui/ThumbnailService;->minimumValidPage:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/amazon/kcp/reader/ui/ThumbnailService;->maximumValidPage:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    const/4 v7, 0x0

    .line 269
    invoke-static {v7, v2, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 272
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
