.class public Lcom/amazon/ku/KuContentManager;
.super Lcom/amazon/kindle/krx/library/BaseLibraryEventListener;
.source "KuContentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ku/KuContentManager$CapturedBookList;
    }
.end annotation


# static fields
.field private static final KU_EXPIRATION_PSNL_MAX_TIME_DIFF:J = 0xea60L

.field private static final SUPPORTED_CONTENT_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/krx/content/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.amazon.ku.KuContentManager"

.field private static instance:Lcom/amazon/ku/KuContentManager;


# instance fields
.field private final cachedBooks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/Gson;

.field private final isQueuedForContentUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private persistedBookList:Lcom/amazon/ku/KuContentManager$CapturedBookList;

.field private final prefs:Landroid/content/SharedPreferences;

.field private final rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/ku/KuContentManager;->SUPPORTED_CONTENT_TYPES:Ljava/util/EnumSet;

    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/amazon/ku/KuContentManager;->instance:Lcom/amazon/ku/KuContentManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 111
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryEventListener;-><init>()V

    .line 69
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/amazon/ku/KuContentManager;->gson:Lcom/google/gson/Gson;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/ku/KuContentManager;->isQueuedForContentUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ku/KuContentManager;->cachedBooks:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/amazon/ku/KuContentManager;->persistedBookList:Lcom/amazon/ku/KuContentManager$CapturedBookList;

    .line 112
    invoke-static {}, Lcom/amazon/ku/KuConversionPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ku/KuContentManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 113
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "KuConversionPreferences"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ku/KuContentManager;->prefs:Landroid/content/SharedPreferences;

    .line 114
    invoke-direct {p0}, Lcom/amazon/ku/KuContentManager;->hasCapturedExpiredKuBooks()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/amazon/ku/KuContentManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/library/ILibraryManager;->registerLibraryEventListener(Lcom/amazon/kindle/krx/library/ILibraryEventListener;)V

    .line 116
    sget-object v0, Lcom/amazon/ku/KuContentManager;->TAG:Ljava/lang/String;

    const-string v1, "Registered listener for Library events"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/amazon/ku/KuContentManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ku/KuContentManager;->rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/amazon/ku/KuContentManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/ku/KuContentManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/ku/KuContentManager;->isQueuedForContentUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/ku/KuContentManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/ku/KuContentManager;->cachedBooks:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/ku/KuContentManager;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/ku/KuContentManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/ku/KuContentManager;)Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/ku/KuContentManager;->rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    return-object p0
.end method

.method static filterByContentType(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 374
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 376
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/content/IBook;

    .line 378
    sget-object v2, Lcom/amazon/ku/KuContentManager;->SUPPORTED_CONTENT_TYPES:Ljava/util/EnumSet;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/ku/KuContentManager;
    .locals 2

    const-class v0, Lcom/amazon/ku/KuContentManager;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lcom/amazon/ku/KuContentManager;->instance:Lcom/amazon/ku/KuContentManager;

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lcom/amazon/ku/KuContentManager;

    invoke-direct {v1}, Lcom/amazon/ku/KuContentManager;-><init>()V

    sput-object v1, Lcom/amazon/ku/KuContentManager;->instance:Lcom/amazon/ku/KuContentManager;

    .line 104
    :cond_0
    sget-object v1, Lcom/amazon/ku/KuContentManager;->instance:Lcom/amazon/ku/KuContentManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hasCapturedExpiredKuBooks()Z
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/amazon/ku/KuContentManager;->getCapturedBooks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method appendCapturedBook(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .line 259
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/ku/KuContentManager;->getCapturedBooks()Ljava/util/List;

    move-result-object v0

    .line 264
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 269
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/content/IBook;

    .line 270
    new-instance v3, Lcom/amazon/ku/data/CapturedBook;

    invoke-direct {v3, v2}, Lcom/amazon/ku/data/CapturedBook;-><init>(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 271
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 272
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 277
    invoke-virtual {p0, v0}, Lcom/amazon/ku/KuContentManager;->persistCapturedBooksInJson(Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public deletePsnlForExpiredBooks(Ljava/util/concurrent/ExecutorService;)V
    .locals 5

    .line 323
    iget-object v0, p0, Lcom/amazon/ku/KuContentManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "CapturedBooksTimestamp"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 325
    sget-object p1, Lcom/amazon/ku/KuContentManager;->TAG:Ljava/lang/String;

    const-string v0, "No timestamp for captured books; skipping"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 329
    :cond_0
    new-instance v2, Lcom/amazon/ku/KuContentManager$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/amazon/ku/KuContentManager$3;-><init>(Lcom/amazon/ku/KuContentManager;J)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getCapturedBooks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/ku/data/CapturedBook;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/amazon/ku/KuContentManager;->persistedBookList:Lcom/amazon/ku/KuContentManager$CapturedBookList;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/amazon/ku/KuContentManager$CapturedBookList;->getBooks()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/amazon/ku/KuContentManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "CapturedBooks"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/amazon/ku/KuContentManager;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/amazon/ku/KuContentManager$CapturedBookList;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ku/KuContentManager$CapturedBookList;

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {v0}, Lcom/amazon/ku/KuContentManager$CapturedBookList;->getBooks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 219
    invoke-virtual {v0}, Lcom/amazon/ku/KuContentManager$CapturedBookList;->getBooks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 220
    invoke-virtual {v0}, Lcom/amazon/ku/KuContentManager$CapturedBookList;->getBooks()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 223
    sget-object v1, Lcom/amazon/ku/KuContentManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to parse captured books"

    invoke-static {v1, v2, v0}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onContentRevoked(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 5

    .line 131
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getOriginType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KindleUnlimited"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    sget-object p1, Lcom/amazon/ku/KuContentManager;->TAG:Ljava/lang/String;

    const-string v0, "Skipped content revoked: not KU book"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/amazon/ku/KuContentManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContentRevoked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/amazon/ku/KuContentManager;->SUPPORTED_CONTENT_TYPES:Ljava/util/EnumSet;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    sget-object v0, Lcom/amazon/ku/KuContentManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped content revoked: content type not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/amazon/ku/KuContentManager;->cachedBooks:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/amazon/ku/KuContentManager;->cachedBooks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-direct {p0}, Lcom/amazon/ku/KuContentManager;->hasCapturedExpiredKuBooks()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 146
    sget-object p1, Lcom/amazon/ku/KuContentManager;->TAG:Ljava/lang/String;

    const-string v1, "Already persisted KU books; cached the book"

    invoke-static {p1, v1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/amazon/ku/KuContentManager;->cachedBooks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/ku/KuContentManager;->appendCapturedBook(Ljava/util/Collection;)V

    .line 148
    iget-object p1, p0, Lcom/amazon/ku/KuContentManager;->cachedBooks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 149
    monitor-exit v0

    return-void

    .line 151
    :cond_2
    iget-object p1, p0, Lcom/amazon/ku/KuContentManager;->isQueuedForContentUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 152
    sget-object p1, Lcom/amazon/ku/KuContentManager;->TAG:Ljava/lang/String;

    const-string v1, "Already checking KU subscription status; cached the book"

    invoke-static {p1, v1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    monitor-exit v0

    return-void

    .line 155
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 159
    iget-object p1, p0, Lcom/amazon/ku/KuContentManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object p1

    const-string v2, "KindleUnlimited"

    invoke-interface {p1, v2}, Lcom/amazon/kindle/krx/library/ILibraryManager;->listContentsFromOriginType(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/ku/KuContentManager;->filterByContentType(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 160
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/content/IBook;

    .line 161
    iget-object v3, p0, Lcom/amazon/ku/KuContentManager;->cachedBooks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 163
    :cond_4
    new-instance p1, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest;

    new-instance v2, Lcom/amazon/ku/KuContentManager$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/amazon/ku/KuContentManager$1;-><init>(Lcom/amazon/ku/KuContentManager;J)V

    invoke-direct {p1, v2}, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest;-><init>(Lcom/amazon/ku/service/ResponseListener;)V

    .line 192
    iget-object v0, p0, Lcom/amazon/ku/KuContentManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    .line 155
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method persistCapturedBooks(Ljava/util/Collection;ZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;ZJ)V"
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_0

    .line 237
    new-instance p1, Lcom/amazon/ku/KuContentManager$2;

    invoke-direct {p1, p0}, Lcom/amazon/ku/KuContentManager$2;-><init>(Lcom/amazon/ku/KuContentManager;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 244
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/content/IBook;

    .line 246
    new-instance v1, Lcom/amazon/ku/data/CapturedBook;

    invoke-direct {v1, v0}, Lcom/amazon/ku/data/CapturedBook;-><init>(Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_1
    iget-object p2, p0, Lcom/amazon/ku/KuContentManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "CapturedBooksTimestamp"

    invoke-interface {p2, v0, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 249
    invoke-virtual {p0, p1}, Lcom/amazon/ku/KuContentManager;->persistCapturedBooksInJson(Ljava/util/List;)V

    return-void
.end method

.method persistCapturedBooksInJson(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/ku/data/CapturedBook;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 289
    :try_start_0
    new-instance v1, Lcom/amazon/ku/KuContentManager$CapturedBookList;

    invoke-direct {v1, p1}, Lcom/amazon/ku/KuContentManager$CapturedBookList;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/amazon/ku/KuContentManager;->persistedBookList:Lcom/amazon/ku/KuContentManager$CapturedBookList;

    .line 290
    iget-object v2, p0, Lcom/amazon/ku/KuContentManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/gson/JsonIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 292
    iput-object v0, p0, Lcom/amazon/ku/KuContentManager;->persistedBookList:Lcom/amazon/ku/KuContentManager$CapturedBookList;

    .line 293
    sget-object v2, Lcom/amazon/ku/KuContentManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to encode books into Json"

    invoke-static {v2, v3, v1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    :goto_0
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/amazon/ku/KuContentManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "CapturedBooks"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 300
    sget-object v0, Lcom/amazon/ku/KuContentManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " books"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/amazon/ku/KuConversionPlugin;->getKrxMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/ku/events/KuContentEvent;

    sget-object v2, Lcom/amazon/ku/events/KuContentEvent$EventType;->EXPIRED_CONTENT_CAPTURED:Lcom/amazon/ku/events/KuContentEvent$EventType;

    invoke-direct {v1, v2}, Lcom/amazon/ku/events/KuContentEvent;-><init>(Lcom/amazon/ku/events/KuContentEvent$EventType;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 305
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 306
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KuContentManagerNumberOfBooks"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v1, p0, Lcom/amazon/ku/KuContentManager;->rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const-string v2, "KuContentManager"

    const-string v3, "KuContentManagerCapturedClawedBackBooks"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 309
    new-instance v0, Lcom/amazon/ku/metrics/Metric;

    const-string v1, "KuContentManagerOperation"

    invoke-direct {v0, v1}, Lcom/amazon/ku/metrics/Metric;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v1, "CapturedKuBooksCount"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/ku/metrics/Metric;->setCount(Ljava/lang/String;I)V

    .line 311
    invoke-virtual {v0}, Lcom/amazon/ku/metrics/Metric;->close()V

    return-void
.end method
