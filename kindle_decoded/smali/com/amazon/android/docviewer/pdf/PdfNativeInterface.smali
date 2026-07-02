.class public Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;
.super Ljava/lang/Object;
.source "PdfNativeInterface.java"


# static fields
.field private static final CONTRAST_DARK:I = 0x3

.field public static final CONTRAST_DARKEST:I = 0x4

.field public static final CONTRAST_DEFAULT:I = 0x3

.field private static final CONTRAST_LIGHT:I = 0x1

.field private static final CONTRAST_LIGHTEST:I = 0x0

.field private static final CONTRAST_NORMAL:I = 0x2

.field static final ERROR:I = 0x2

.field static final FILE_ACCESS_ERROR:I = 0x5

.field static final INCORRECT_FORMAT:I = 0x4

.field static final INCORRECT_PASSWORD:I = 0x3

.field static final INCORRECT_STATUS:I = 0x7

.field private static final MARGIN_DETECT_MAX_SIZE:F = 800.0f

.field static final OUT_OF_MEMORY:I = 0x1

.field static final PARAMETER_ERROR:I = 0x6

.field static final RESULT_NOT_FOUND:I = 0x9

.field static final ROTATE_180_CLOCKWISE:I = 0x2

.field static final ROTATE_90_CLOCKWISE:I = 0x1

.field static final ROTATE_90_COUNTER_CLOCKWISE:I = 0x3

.field static final ROTATE_NONE:I = 0x0

.field static final SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String;

.field static final TO_BE_CONTINUED:I = 0x8

.field private static m_pdfNativeInterfaceInstance:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;


# instance fields
.field private m_documentLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private m_pdfFileHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->initPdfLibrary()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    const-class v0, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->m_pdfNativeInterfaceInstance:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-direct {v1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;-><init>()V

    sput-object v1, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->m_pdfNativeInterfaceInstance:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    .line 104
    :cond_0
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->m_pdfNativeInterfaceInstance:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initPdfLibrary()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 123
    iput-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->m_pdfFileHandle:J

    .line 126
    invoke-static {}, Lcom/amazon/kcp/application/KRF4Helper;->loadNativeLibraries()V

    .line 127
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->init()I

    .line 128
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->initFileAccess()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->m_pdfFileHandle:J

    .line 129
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->m_documentLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-void
.end method


# virtual methods
.method declared-synchronized changeContrastMapping(Landroid/graphics/Bitmap;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    if-eq p2, v0, :cond_0

    if-eq p2, v1, :cond_4

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    .line 632
    :cond_4
    :goto_0
    :try_start_0
    invoke-static {p1, v0}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->changeContrastMapping(Landroid/graphics/Bitmap;I)V

    invoke-static {p1}, Lcom/zyyme/eink256/Eink256Patch;->processInPlace(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized closeMe()I
    .locals 2

    monitor-enter p0

    .line 474
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->m_pdfFileHandle:J

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->destroyFileAccess(J)V

    .line 475
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->exit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 476
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createMopAccess(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    monitor-enter p0

    .line 249
    :try_start_0
    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->createMopAccess(J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method createPdfPagePositionsFromDoc(JI)Lcom/amazon/android/docviewer/pdf/PdfPagePositions;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 650
    monitor-enter p0

    .line 651
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfPagePositionsNative;->createPagePositionsFromDoc(JI)J

    move-result-wide p1

    .line 652
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfPagePositionsNative;->getTextElementsFromPage(J)[Lcom/amazon/android/docviewer/pdf/TextElement;

    move-result-object p3

    .line 656
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;-><init>(J[Lcom/amazon/android/docviewer/pdf/TextElement;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 652
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 645
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PDF document handle pointer is NULL [pageIndex="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method createPdfPagePositionsFromMop(JI)Lcom/amazon/android/docviewer/pdf/PdfPagePositions;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 665
    monitor-enter p0

    .line 666
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfPagePositionsNative;->createPagePositionsFromMop(JI)J

    move-result-wide p1

    .line 667
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfPagePositionsNative;->getTextElementsFromPage(J)[Lcom/amazon/android/docviewer/pdf/TextElement;

    move-result-object p3

    .line 671
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;-><init>(J[Lcom/amazon/android/docviewer/pdf/TextElement;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 667
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 661
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MOP accessor handle pointer is NULL [pageIndex="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized doCloseDocument(J)I
    .locals 2

    monitor-enter p0

    .line 240
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->m_pdfFileHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->closeDocument(JJ)V
    :try_end_0
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 245
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 242
    :try_start_1
    sget-object p2, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->TAG:Ljava/lang/String;

    const-string v0, "Caught exception trying to close document"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x2

    .line 243
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized doClosePage(J)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    monitor-enter p0

    .line 307
    :try_start_0
    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->closePage(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 308
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public doLoadBookmarks(J)Lcom/amazon/android/docviewer/pdf/PdfBookmark;
    .locals 3

    const-wide/16 v0, 0x0

    .line 206
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 207
    :try_start_1
    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->createBookmarkIterator(J)J

    move-result-wide v0

    .line 208
    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->bookmarkIteratorNext(J)Z

    move-result p1

    .line 209
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_0
    if-eqz p1, :cond_0

    .line 210
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 211
    monitor-enter p0
    :try_end_2
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 212
    :try_start_3
    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->bookmarkIteratorNext(J)Z

    move-result p1

    .line 213
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 215
    :cond_0
    monitor-enter p0
    :try_end_4
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 216
    :try_start_5
    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->bookmarkIteratorReleaseTOC(J)Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    move-result-object p1

    .line 217
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 223
    monitor-enter p0

    .line 224
    :try_start_6
    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->destroyBookmarkIterator(J)V

    .line 225
    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 217
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p1
    :try_end_8
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_3
    move-exception p1

    .line 209
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw p1
    :try_end_a
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 220
    :try_start_b
    sget-object p2, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->TAG:Ljava/lang/String;

    const-string v2, "Unable to load bookmarks"

    invoke-static {p2, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    const/4 p1, 0x0

    .line 223
    monitor-enter p0

    .line 224
    :try_start_c
    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->destroyBookmarkIterator(J)V

    .line 225
    monitor-exit p0

    return-object p1

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw p1

    .line 223
    :goto_1
    monitor-enter p0

    .line 224
    :try_start_d
    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->destroyBookmarkIterator(J)V

    .line 225
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 226
    throw p1

    :catchall_6
    move-exception p1

    .line 225
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw p1
.end method

.method public declared-synchronized doLoadDocument(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 178
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->getInstance()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->getFileDescriptorFromFilename(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/self/fd/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v1, p1

    .line 185
    iget-wide v3, p0, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->m_pdfFileHandle:J

    move-object v2, p2

    move-wide v5, p3

    invoke-static/range {v1 .. v6}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->loadDocument(Ljava/lang/String;Ljava/lang/String;JJ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 188
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 190
    :try_start_2
    sget-object p4, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->TAG:Ljava/lang/String;

    const-string v0, "Error closing file descriptor"

    invoke-static {p4, v0, p3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :cond_1
    :goto_0
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 174
    :cond_2
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized doLoadPage(JI)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    monitor-enter p0

    .line 293
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->loadPage(JI)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized doParsePage(J)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    monitor-enter p0

    .line 360
    :try_start_0
    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->parsePage(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 361
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getCropPageMarginRect(IIJ)Landroid/graphics/Rect;
    .locals 7

    monitor-enter p0

    .line 571
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 572
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/high16 v2, 0x44480000    # 800.0f

    .line 575
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 576
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float p1, p1

    mul-float p1, p1, v2

    .line 577
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p2, p2

    mul-float p2, p2, v2

    .line 578
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 579
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 580
    invoke-static {v3, p3, p4}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->getCropPageMarginRect(Landroid/graphics/Bitmap;J)Lcom/amazon/android/docviewer/pdf/Rectangle;

    move-result-object p3

    .line 582
    new-instance p4, Landroid/graphics/Rect;

    .line 583
    invoke-virtual {p3}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getX()I

    move-result v3

    div-int/lit8 v4, p1, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 584
    invoke-virtual {p3}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getY()I

    move-result v4

    div-int/lit8 v5, p2, 0x4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 585
    invoke-virtual {p3}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getX()I

    move-result v5

    invoke-virtual {p3}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v6, p1, 0x4

    sub-int v6, p1, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 586
    invoke-virtual {p3}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getY()I

    move-result v6

    invoke-virtual {p3}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getHeight()I

    move-result p3

    add-int/2addr v6, p3

    div-int/lit8 p3, p2, 0x4

    sub-int p3, p2, p3

    invoke-static {v6, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-direct {p4, v3, v4, v5, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 589
    new-instance p3, Landroid/graphics/Rect;

    iget v3, p4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x1

    .line 590
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, -0x1

    .line 591
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v4, p4, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x1

    .line 592
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p4, p4, 0x1

    .line 593
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-direct {p3, v3, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    :try_start_2
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, p3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 596
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 598
    :try_start_4
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 600
    :goto_0
    monitor-exit p0

    return-object v0

    .line 598
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 599
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getDeviceToPagePoint(JIIIIIII)Landroid/graphics/Point;
    .locals 2

    monitor-enter p0

    .line 507
    :try_start_0
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :try_start_1
    invoke-static/range {p1 .. p9}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->convertDeviceToPagePoint(JIIIIIII)Landroid/graphics/Point;

    move-result-object v0
    :try_end_1
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 512
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 514
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDocInfo(J)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    monitor-enter p0

    .line 690
    :try_start_0
    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->getDocInfo(J)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDocumentWordCount(J)I
    .locals 0

    monitor-enter p0

    .line 270
    :try_start_0
    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->getDocumentWordCount(J)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPageHeight(J)I
    .locals 1

    monitor-enter p0

    .line 343
    :try_start_0
    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->getPageSizeY(J)I

    move-result p1
    :try_end_0
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 345
    :try_start_1
    sget-object p2, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->TAG:Ljava/lang/String;

    const-string v0, "Caught exception attempting to get page height"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 347
    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getPageToDeviceRectangle(JIIIIILcom/amazon/android/docviewer/pdf/Rectangle;)Lcom/amazon/android/docviewer/pdf/Rectangle;
    .locals 13

    monitor-enter p0

    .line 545
    :try_start_0
    new-instance v1, Lcom/amazon/android/docviewer/pdf/Rectangle;

    const/4 v0, 0x0

    invoke-direct {v1, v0, v0, v0, v0}, Lcom/amazon/android/docviewer/pdf/Rectangle;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    :try_start_1
    invoke-virtual/range {p8 .. p8}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getX()I

    move-result v9

    invoke-virtual/range {p8 .. p8}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getY()I

    move-result v10

    .line 549
    invoke-virtual/range {p8 .. p8}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getWidth()I

    move-result v11

    invoke-virtual/range {p8 .. p8}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getHeight()I

    move-result v12

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 547
    invoke-static/range {v2 .. v12}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->convertPageToDeviceRectangle(JIIIIIIIII)Lcom/amazon/android/docviewer/pdf/Rectangle;

    move-result-object v1
    :try_end_1
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 551
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 553
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPageWidth(J)I
    .locals 1

    monitor-enter p0

    .line 323
    :try_start_0
    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->getPageSizeX(J)I

    move-result p1
    :try_end_0
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 325
    :try_start_1
    sget-object p2, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->TAG:Ljava/lang/String;

    const-string v0, "Caught exception attempting to get page width"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 328
    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPdfPageCount(J)I
    .locals 0

    monitor-enter p0

    .line 266
    :try_start_0
    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->countPages(J)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getPdfPageLabelProvider(J)Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;
    .locals 1

    monitor-enter p0

    .line 683
    :try_start_0
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;-><init>(Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method pauseRenderingToBitmap(J)V
    .locals 0

    .line 437
    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->pauseRenderingPageToBitmap(J)I

    return-void
.end method

.method public readLockDocument()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->m_documentLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void
.end method

.method public readUnlockDocument()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->m_documentLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public declared-synchronized releaseMopAccess(J)V
    .locals 0

    monitor-enter p0

    .line 253
    :try_start_0
    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->releaseMopAccess(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized renderPage(JIIIIFFI)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    monitor-enter p0

    .line 420
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v1, p5

    move v2, p6

    invoke-static {p5, p6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 422
    invoke-static/range {v1 .. v8}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->renderPageToBitmap(Landroid/graphics/Bitmap;JIIFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized renderPage(JIIIIFI)Landroid/graphics/Bitmap;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    monitor-enter p0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p7

    move/from16 v10, p8

    .line 389
    :try_start_0
    invoke-virtual/range {v1 .. v10}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->renderPage(JIIIIFFI)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized renderToBitmap(JLandroid/graphics/Bitmap;IIFFI)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    monitor-enter p0

    .line 461
    :try_start_0
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parameters: pageHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v4, p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", startX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", startY="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p5

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", zoomScale="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p6

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p7

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p3

    move-wide v4, p1

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 464
    invoke-static/range {v3 .. v10}, Lcom/amazon/android/docviewer/pdf/PdfWrapper;->renderPageToBitmap(Landroid/graphics/Bitmap;JIIFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeLockDocument()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->m_documentLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void
.end method

.method public writeUnlockDocument()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->m_documentLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
