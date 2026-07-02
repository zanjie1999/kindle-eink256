.class public Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;
.super Ljava/lang/Object;
.source "PdfPageLabelProvider.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/amazon/android/docviewer/IPageLabelProvider;
.implements Lcom/amazon/android/docviewer/pdf/PdfDocDependent;


# static fields
.field public static final INVALID_PAGE_INDEX:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile m_allPageLabels:[Ljava/lang/String;

.field private volatile m_allPageLabelsFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_isPaginationNumericOnly:Ljava/lang/Boolean;

.field private volatile m_lastArabicPageLabel:Ljava/lang/Integer;

.field private final m_nativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

.field private final m_pageCount:I

.field private volatile m_pageLabelIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_providerHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;J)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_pageLabelIndexMap:Ljava/util/HashMap;

    .line 40
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_nativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    .line 41
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    .line 46
    :try_start_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_nativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->createHandle(J)V

    .line 48
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_nativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0, p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getPdfPageCount(J)I

    move-result p2

    iput p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_pageCount:I

    .line 49
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_nativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return-void

    :catchall_0
    move-exception p2

    .line 49
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2

    :catchall_1
    move-exception p1

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PDF document handle pointer is NULL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 51
    :goto_0
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_nativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 52
    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;)Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_nativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_providerHandle:J

    return-wide v0
.end method

.method private createHandle(J)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_nativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    monitor-enter v0

    .line 57
    :try_start_0
    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelNative;->create(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_providerHandle:J

    .line 58
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getAllPageLabels()[Ljava/lang/String;
    .locals 5

    .line 306
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_allPageLabels:[Ljava/lang/String;

    if-nez v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_allPageLabelsFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_allPageLabelsFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_allPageLabels:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 311
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_allPageLabels:[Ljava/lang/String;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 312
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_allPageLabels:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 314
    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_pageLabelIndexMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    .line 319
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 327
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_allPageLabels:[Ljava/lang/String;

    if-nez v0, :cond_3

    .line 331
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->makeDefaultPageLabels()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_allPageLabels:[Ljava/lang/String;

    goto :goto_2

    .line 324
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "page labels not loaded yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_allPageLabels:[Ljava/lang/String;

    return-object v0
.end method

.method private makeDefaultPageLabels()[Ljava/lang/String;
    .locals 5

    .line 338
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_pageCount:I

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 340
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 6

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_nativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 118
    :try_start_1
    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_providerHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 119
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_nativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    :try_start_2
    iget-wide v4, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_providerHandle:J

    invoke-static {v4, v5}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelNative;->destroy(J)V

    .line 121
    iput-wide v2, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_providerHandle:J

    .line 122
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    :cond_0
    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_nativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 127
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 125
    :try_start_5
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_nativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 126
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeDocHandleDerivatives()V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->close()V

    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 132
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_providerHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 137
    throw v0
.end method

.method public getFirstNonEmptyPageLabel()Ljava/lang/String;
    .locals 5

    .line 347
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->hasPageNumbers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->getAllPageLabels()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 349
    invoke-static {v3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getFirstPageLabel()Ljava/lang/String;
    .locals 2

    .line 183
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->getAllPageLabels()[Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->hasPageNumbers()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 185
    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastArabicPageLabel()I
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_lastArabicPageLabel:Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 83
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->getAllPageLabels()[Ljava/lang/String;

    move-result-object v1

    .line 84
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 86
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_lastArabicPageLabel:Ljava/lang/Integer;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_lastArabicPageLabel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLastBodyPageLabel()Ljava/lang/String;
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->getLastArabicPageLabel()I

    move-result v0

    if-gez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->getLastPageLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 210
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastPageLabel()Ljava/lang/String;
    .locals 2

    .line 195
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->getAllPageLabels()[Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->hasPageNumbers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageBreakPositionsInSpan(II)[I
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageIndexForPageLabel(Ljava/lang/String;)I
    .locals 1

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_pageLabelIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_pageLabelIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getPageIndexForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I
    .locals 1

    .line 359
    instance-of v0, p1, Lcom/amazon/android/docviewer/grid/GridPosition;

    if-eqz v0, :cond_0

    .line 360
    check-cast p1, Lcom/amazon/android/docviewer/grid/GridPosition;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/grid/GridPosition;->getPageIndex()I

    move-result p1

    return p1

    .line 362
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result p1

    return p1
.end method

.method public getPageLabelForPageIndex(I)Ljava/lang/String;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->getPreFetchedPageLabelForPageIndex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPageLabelForPosition(I)Ljava/lang/String;
    .locals 0

    .line 174
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result p1

    .line 175
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->getPageLabelForPageIndex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPageLabelPairInSpan(II)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageRangeSummary()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageStartPositionForPageIndex(I)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 368
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result p1

    .line 369
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v0
.end method

.method public getPositionForPageLabel(Ljava/lang/String;)I
    .locals 1

    .line 219
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->getPageIndexForPageLabel(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 222
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getPreFetchedPageLabelForPageIndex(I)Ljava/lang/String;
    .locals 2

    .line 100
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->getAllPageLabels()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 102
    aget-object p1, v0, p1

    return-object p1

    .line 104
    :cond_0
    sget-object p1, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->TAG:Ljava/lang/String;

    const-string v0, "PdfPageLabelProvider.getPreFetchedPageLabelForPageIndex:  m_allPageLabels is null or pageIndex is outside range"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public getTotalArabicPages()I
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->getLastArabicPageLabel()I

    move-result v0

    return v0
.end method

.method public getTotalPages()I
    .locals 2

    .line 232
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->getAllPageLabels()[Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->hasPageNumbers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalRomanPages()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasOnlyNumericPageLabels()Z
    .locals 6

    .line 154
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_isPaginationNumericOnly:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->getAllPageLabels()[Ljava/lang/String;

    move-result-object v0

    .line 157
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 159
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_isPaginationNumericOnly:Ljava/lang/Boolean;

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_isPaginationNumericOnly:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasPageNumbers()Z
    .locals 1

    .line 145
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->getAllPageLabels()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public openNewDocHandleDerivatives(J)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_nativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V

    .line 74
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->createHandle(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_nativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_nativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 77
    throw p1
.end method

.method preloadPageLabels(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_allPageLabelsFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider$1;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider$1;-><init>(Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->m_allPageLabelsFuture:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method
