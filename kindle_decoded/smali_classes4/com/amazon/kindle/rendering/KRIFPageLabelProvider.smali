.class public Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;
.super Ljava/lang/Object;
.source "KRIFPageLabelProvider.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IPageLabelProvider;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private docViewerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/kindle/rendering/KRIFDocViewer;",
            ">;"
        }
    .end annotation
.end field

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

.field private m_firstNonEmptyPageLabel:Ljava/lang/String;

.field private volatile m_isPaginationNumericOnly:Ljava/lang/Boolean;

.field private volatile m_lastArabicPageLabel:Ljava/lang/Long;

.field private volatile m_totalArabicPageLabel:Ljava/lang/Integer;

.field private providerRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/amazon/krf/platform/PageInfoProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/rendering/KRIFDocViewer;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/amazon/krf/platform/PageInfoProvider;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_isPaginationNumericOnly:Ljava/lang/Boolean;

    .line 36
    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_totalArabicPageLabel:Ljava/lang/Integer;

    .line 37
    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_firstNonEmptyPageLabel:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 42
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    :cond_0
    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->providerRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->docViewerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->providerRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private findNumericPageLabels()V
    .locals 13

    .line 206
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->providerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/PageInfoProvider;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 212
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->getTotalPages()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 214
    invoke-interface {v0, v5}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageInfoAt(I)Lcom/amazon/krf/platform/PageInfo;

    move-result-object v8

    .line 215
    invoke-virtual {v8}, Lcom/amazon/krf/platform/PageInfo;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_3

    .line 218
    :cond_0
    invoke-virtual {v8}, Lcom/amazon/krf/platform/PageInfo;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_2

    aget-char v12, v9, v11

    .line 219
    invoke-static {v12}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x1

    :goto_2
    if-eqz v9, :cond_3

    .line 226
    invoke-virtual {v8}, Lcom/amazon/krf/platform/PageInfo;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 230
    :cond_4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_lastArabicPageLabel:Ljava/lang/Long;

    .line 231
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_totalArabicPageLabel:Ljava/lang/Integer;

    .line 232
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_isPaginationNumericOnly:Ljava/lang/Boolean;

    return-void
.end method

.method private getAllPageLabels()[Ljava/lang/String;
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_allPageLabelsFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_allPageLabelsFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 324
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :catch_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->makeDefaultPageLabels()[Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 329
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "page info not loaded yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPreFetchedPageLabelForPageIndex(I)Ljava/lang/String;
    .locals 2

    .line 270
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->getAllPageLabels()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 271
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 272
    aget-object p1, v0, p1

    return-object p1

    .line 274
    :cond_0
    sget-object p1, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->TAG:Ljava/lang/String;

    const-string v0, "KRIFPageLabelProvider.getPreFetchedPageLabelForPageIndex:  m_allPageLabels is null or pageIndex is outside range"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method private makeDefaultPageLabels()[Ljava/lang/String;
    .locals 5

    .line 343
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->getTotalPages()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 345
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getFirstNonEmptyPageLabel()Ljava/lang/String;
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->providerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/PageInfoProvider;

    .line 89
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_firstNonEmptyPageLabel:Ljava/lang/String;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->getTotalPages()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 91
    invoke-interface {v0, v1}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageInfoAt(I)Lcom/amazon/krf/platform/PageInfo;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lcom/amazon/krf/platform/PageInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    invoke-virtual {v2}, Lcom/amazon/krf/platform/PageInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_firstNonEmptyPageLabel:Ljava/lang/String;

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_firstNonEmptyPageLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLastBodyPageLabel()Ljava/lang/String;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->getTotalArabicPages()I

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_lastArabicPageLabel:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->getLastPageLabel()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLastPageLabel()Ljava/lang/String;
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->providerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/PageInfoProvider;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->getTotalPages()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 108
    invoke-interface {v0, v1}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageInfoAt(I)Lcom/amazon/krf/platform/PageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/amazon/krf/platform/PageInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getPageBreakPositionsInSpan(II)[I
    .locals 8

    .line 169
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->providerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/PageInfoProvider;

    .line 170
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->docViewerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/rendering/KRIFDocViewer;

    const/4 v2, 0x0

    new-array v3, v2, [I

    if-lt p1, p2, :cond_0

    return-object v3

    :cond_0
    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageInfoAt(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/PageInfo;

    move-result-object v4

    .line 179
    invoke-virtual {v1, p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageInfoAt(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/PageInfo;

    move-result-object p2

    .line 181
    invoke-virtual {v4}, Lcom/amazon/krf/platform/PageInfo;->getPageIndex()I

    move-result v1

    .line 182
    invoke-virtual {p2}, Lcom/amazon/krf/platform/PageInfo;->getPageIndex()I

    move-result p2

    if-lt v1, p2, :cond_1

    return-object v3

    :cond_1
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 192
    invoke-interface {v0, v1}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageInfoAt(I)Lcom/amazon/krf/platform/PageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/krf/platform/PageInfo;->getPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v3

    int-to-long v5, p1

    cmp-long v7, v3, v5

    if-gez v7, :cond_2

    invoke-interface {v0}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 p1, v1, -0x1

    sub-int/2addr p2, p1

    .line 196
    new-array v3, p2, [I

    :goto_1
    if-ge v2, p2, :cond_3

    add-int p1, v2, v1

    .line 198
    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageInfoAt(I)Lcom/amazon/krf/platform/PageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PageInfo;->getPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v4

    long-to-int p1, v4

    aput p1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method public getPageIndexForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->providerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/PageInfoProvider;

    .line 282
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->docViewerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-eqz v0, :cond_1

    .line 286
    invoke-interface {v0}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageCount()I

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 288
    instance-of v2, p1, Lcom/amazon/kindle/rendering/IKRIFPlatformPosition;

    if-eqz v2, :cond_0

    .line 289
    check-cast p1, Lcom/amazon/kindle/rendering/IKRIFPlatformPosition;

    invoke-interface {p1}, Lcom/amazon/kindle/rendering/IKRIFPlatformPosition;->getPlatformPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    goto :goto_0

    .line 293
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 296
    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageInfoAt(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/PageInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 298
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PageInfo;->getPageIndex()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getPageLabelForPageIndex(I)Ljava/lang/String;
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->providerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/PageInfoProvider;

    if-eqz v0, :cond_1

    .line 259
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_allPageLabelsFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_allPageLabelsFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 262
    :cond_0
    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageInfoAt(I)Lcom/amazon/krf/platform/PageInfo;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PageInfo;->getLabel()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 265
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->getPreFetchedPageLabelForPageIndex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPageLabelForPosition(I)Ljava/lang/String;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->providerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/PageInfoProvider;

    .line 64
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->docViewerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageInfoAt(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/PageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PageInfo;->getLabel()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getPageRangeSummary()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageStartPositionForPageIndex(I)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->providerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/PageInfoProvider;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 308
    invoke-interface {v0}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageCount()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 309
    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageInfoAt(I)Lcom/amazon/krf/platform/PageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PageInfo;->getPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    .line 310
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFTextPosition;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/rendering/KRIFTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    return-object v0

    .line 313
    :cond_0
    new-instance p1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object p1
.end method

.method public getPositionForPageLabel(Ljava/lang/String;)I
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->providerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/PageInfoProvider;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageInfoForLabel(Ljava/lang/String;)[Lcom/amazon/krf/platform/PageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 128
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 129
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PageInfo;->getPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getTotalArabicPages()I
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->providerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/PageInfoProvider;

    .line 144
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_totalArabicPageLabel:Ljava/lang/Integer;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->findNumericPageLabels()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_totalArabicPageLabel:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_totalArabicPageLabel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTotalPages()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->providerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/PageInfoProvider;

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTotalRomanPages()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasOnlyNumericPageLabels()Z
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->providerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/PageInfoProvider;

    .line 55
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_isPaginationNumericOnly:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->findNumericPageLabels()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_isPaginationNumericOnly:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_isPaginationNumericOnly:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public hasPageNumbers()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->providerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/PageInfoProvider;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public preloadPageLabels(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_allPageLabelsFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider$1;-><init>(Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->m_allPageLabelsFuture:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method
