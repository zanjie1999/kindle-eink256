.class public Lcom/amazon/xray/model/loader/AsyncListLoader;
.super Ljava/lang/Object;
.source "AsyncListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;,
        Lcom/amazon/xray/model/loader/AsyncListLoader$SymmetricLoadOrderStrategy;,
        Lcom/amazon/xray/model/loader/AsyncListLoader$LinearLoadOrderStrategy;,
        Lcom/amazon/xray/model/loader/AsyncListLoader$ValueLoader;,
        Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener;,
        Lcom/amazon/xray/model/loader/AsyncListLoader$LoadOrderStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final LINEAR_LOAD_ORDER:Lcom/amazon/xray/model/loader/AsyncListLoader$LoadOrderStrategy;

.field private static final NULL_VALUE:Ljava/lang/Object;

.field public static final SYMMETRIC_LOAD_ORDER:Lcom/amazon/xray/model/loader/AsyncListLoader$LoadOrderStrategy;

.field public static final TAG:Ljava/lang/String; = "com.amazon.xray.model.loader.AsyncListLoader"


# instance fields
.field private final count:I

.field private volatile executor:Ljava/util/concurrent/ExecutorService;

.field private final handler:Landroid/os/Handler;

.field private listener:Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final loadStrategy:Lcom/amazon/xray/model/loader/AsyncListLoader$LoadOrderStrategy;

.field private final loaderActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final preloadCountAfter:I

.field private final preloadCountBefore:I

.field private volatile preloadEnd:I

.field private volatile preloadStart:I

.field private final rangeMutex:Ljava/lang/Object;

.field private final valueLoader:Lcom/amazon/xray/model/loader/AsyncListLoader$ValueLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/xray/model/loader/AsyncListLoader$ValueLoader<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final values:Landroid/util/SparseArray;

.field private volatile visibleEnd:I

.field private volatile visibleStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/amazon/xray/model/loader/AsyncListLoader$LinearLoadOrderStrategy;

    invoke-direct {v0}, Lcom/amazon/xray/model/loader/AsyncListLoader$LinearLoadOrderStrategy;-><init>()V

    sput-object v0, Lcom/amazon/xray/model/loader/AsyncListLoader;->LINEAR_LOAD_ORDER:Lcom/amazon/xray/model/loader/AsyncListLoader$LoadOrderStrategy;

    .line 27
    new-instance v0, Lcom/amazon/xray/model/loader/AsyncListLoader$SymmetricLoadOrderStrategy;

    invoke-direct {v0}, Lcom/amazon/xray/model/loader/AsyncListLoader$SymmetricLoadOrderStrategy;-><init>()V

    sput-object v0, Lcom/amazon/xray/model/loader/AsyncListLoader;->SYMMETRIC_LOAD_ORDER:Lcom/amazon/xray/model/loader/AsyncListLoader$LoadOrderStrategy;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/xray/model/loader/AsyncListLoader;->NULL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/xray/model/loader/AsyncListLoader$ValueLoader;Lcom/amazon/xray/model/loader/AsyncListLoader$LoadOrderStrategy;III)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/xray/model/loader/AsyncListLoader$ValueLoader<",
            "TV;>;",
            "Lcom/amazon/xray/model/loader/AsyncListLoader$LoadOrderStrategy;",
            "III)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->handler:Landroid/os/Handler;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->rangeMutex:Ljava/lang/Object;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->values:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->loaderActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 90
    invoke-static {v2}, Lcom/amazon/xray/util/Validate;->notNull([Ljava/lang/Object;)V

    const/4 v2, 0x3

    new-array v2, v2, [I

    aput p3, v2, v1

    aput p4, v2, v3

    aput p5, v2, v0

    .line 91
    invoke-static {v2}, Lcom/amazon/xray/util/Validate;->notNegative([I)V

    .line 93
    iput-object p1, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->valueLoader:Lcom/amazon/xray/model/loader/AsyncListLoader$ValueLoader;

    .line 94
    iput-object p2, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->loadStrategy:Lcom/amazon/xray/model/loader/AsyncListLoader$LoadOrderStrategy;

    .line 95
    iput p3, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->count:I

    .line 96
    iput p4, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->preloadCountBefore:I

    .line 97
    iput p5, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->preloadCountAfter:I

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/xray/model/loader/AsyncListLoader;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->loaderActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/xray/model/loader/AsyncListLoader;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/xray/model/loader/AsyncListLoader;->scheduleNextRunnable()V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/xray/model/loader/AsyncListLoader;)Lcom/amazon/xray/model/loader/AsyncListLoader$ValueLoader;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->valueLoader:Lcom/amazon/xray/model/loader/AsyncListLoader$ValueLoader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/xray/model/loader/AsyncListLoader;)Ljava/lang/Object;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->rangeMutex:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/xray/model/loader/AsyncListLoader;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->preloadStart:I

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/xray/model/loader/AsyncListLoader;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->preloadEnd:I

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/xray/model/loader/AsyncListLoader;ILjava/lang/Object;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/amazon/xray/model/loader/AsyncListLoader;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/xray/model/loader/AsyncListLoader;)Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->listener:Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/xray/model/loader/AsyncListLoader;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->executor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/xray/model/loader/AsyncListLoader;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private put(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->values:Landroid/util/SparseArray;

    if-nez p2, :cond_0

    sget-object p2, Lcom/amazon/xray/model/loader/AsyncListLoader;->NULL_VALUE:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private scheduleNextRunnable()V
    .locals 9

    .line 218
    iget-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->loaderActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->rangeMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_0
    iget v5, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->visibleStart:I

    .line 223
    iget v6, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->visibleEnd:I

    .line 224
    iget v7, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->preloadStart:I

    .line 225
    iget v8, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->preloadEnd:I

    .line 226
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    iget-object v2, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->loadStrategy:Lcom/amazon/xray/model/loader/AsyncListLoader$LoadOrderStrategy;

    iget-object v3, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->values:Landroid/util/SparseArray;

    iget v4, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->count:I

    invoke-interface/range {v2 .. v8}, Lcom/amazon/xray/model/loader/AsyncListLoader$LoadOrderStrategy;->nextIndex(Landroid/util/SparseArray;IIIII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 230
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Lcom/amazon/xray/model/loader/AsyncListLoader;->TAG:Ljava/lang/String;

    const-string v2, "Nothing to load; going to sleep."

    invoke-static {v0, v2}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->loaderActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_2

    .line 242
    :try_start_1
    new-instance v2, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;

    invoke-direct {v2, p0, v0}, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;-><init>(Lcom/amazon/xray/model/loader/AsyncListLoader;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 245
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    sget-object v1, Lcom/amazon/xray/model/loader/AsyncListLoader;->TAG:Ljava/lang/String;

    const-string v2, "Failed to schedule runnable"

    invoke-static {v1, v2, v0}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 226
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->values:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 211
    sget-object v0, Lcom/amazon/xray/model/loader/AsyncListLoader;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public setOnLoadListener(Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener<",
            "TV;>;)V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->listener:Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener;

    return-void
.end method

.method public setVisibleRange(II)V
    .locals 6

    add-int/2addr p2, p1

    .line 157
    iget-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->rangeMutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 158
    :try_start_0
    iget v2, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->preloadCountBefore:I

    sub-int v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 159
    iget v2, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->count:I

    iget v3, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->preloadCountAfter:I

    add-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 162
    iget v3, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->preloadStart:I

    :goto_0
    if-ge v3, v1, :cond_0

    .line 163
    iget-object v4, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->values:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 165
    :goto_1
    iget v4, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->preloadEnd:I

    if-ge v3, v4, :cond_1

    .line 166
    iget-object v4, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->values:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 170
    :cond_1
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    sget-object v3, Lcom/amazon/xray/model/loader/AsyncListLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New range: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_2
    iput p1, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->visibleStart:I

    .line 175
    iput p2, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->visibleEnd:I

    .line 176
    iput v1, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->preloadStart:I

    .line 177
    iput v2, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->preloadEnd:I

    .line 178
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 182
    sget-object p1, Lcom/amazon/xray/model/loader/AsyncListLoader;->TAG:Ljava/lang/String;

    const-string p2, "Waking up..."

    invoke-static {p1, p2}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_3
    invoke-direct {p0}, Lcom/amazon/xray/model/loader/AsyncListLoader;->scheduleNextRunnable()V

    return-void

    :catchall_0
    move-exception p1

    .line 178
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    sget-object v0, Lcom/amazon/xray/model/loader/AsyncListLoader;->TAG:Ljava/lang/String;

    const-string v1, "Starting..."

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->executor:Ljava/util/concurrent/ExecutorService;

    .line 122
    iget-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->loaderActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 123
    invoke-direct {p0}, Lcom/amazon/xray/model/loader/AsyncListLoader;->scheduleNextRunnable()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    sget-object v0, Lcom/amazon/xray/model/loader/AsyncListLoader;->TAG:Ljava/lang/String;

    const-string v1, "Stopping..."

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->executor:Ljava/util/concurrent/ExecutorService;

    .line 141
    iget-object v1, p0, Lcom/amazon/xray/model/loader/AsyncListLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
