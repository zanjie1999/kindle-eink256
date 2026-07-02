.class public Lcom/amazon/kcp/wordwise/gloss/GlossFactory;
.super Ljava/lang/Object;
.source "GlossFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static sInstance:Lcom/amazon/kcp/wordwise/gloss/GlossFactory;


# instance fields
.field private currentBook:Lcom/amazon/kindle/krx/content/IBook;

.field private currentModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

.field private currentOverride:Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;

.field private currentSidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

.field private dictionaries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private glossKnownSense:Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;

.field private hasAttemptedOpenGlossModel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private hasAttemptedOpenPinyinModel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private hasAttemptedOpenSidecar:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private pinyinModel:Lcom/amazon/kcp/wordwise/gloss/PinyinModel;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sInstance:Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->hasAttemptedOpenSidecar:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->hasAttemptedOpenGlossModel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->hasAttemptedOpenPinyinModel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 58
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 59
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentSidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    .line 60
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentOverride:Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;

    .line 61
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->glossKnownSense:Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;

    .line 62
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->dictionaries:Ljava/util/HashMap;

    .line 66
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;
    .locals 1

    .line 74
    sget-object v0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sInstance:Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    invoke-direct {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;-><init>()V

    sput-object v0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sInstance:Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    .line 78
    :cond_0
    sget-object v0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sInstance:Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cleanUp()V
    .locals 3

    monitor-enter p0

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->cleanUp()V

    .line 396
    iput-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentSidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentSidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;->close()V

    .line 401
    iput-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentSidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->glossKnownSense:Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->glossKnownSense:Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;->close()V

    .line 406
    iput-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->glossKnownSense:Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->dictionaries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    .line 410
    invoke-interface {v2}, Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;->close()V

    goto :goto_0

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->dictionaries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 414
    iput-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 415
    iput-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentOverride:Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;

    .line 417
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->hasAttemptedOpenSidecar:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 418
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->hasAttemptedOpenGlossModel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasAttemptedOpenGlossModel()Z
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->hasAttemptedOpenGlossModel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public hasAttemptedOpenPinyinModel()Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->hasAttemptedOpenPinyinModel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public hasAttemptedOpenSidecar()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->hasAttemptedOpenSidecar:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method public declared-synchronized isGlossModelLoaded()Z
    .locals 3

    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    if-nez v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    invoke-interface {v2}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    .line 256
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBookCloseEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 427
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getType()Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_CLOSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->cleanUp()V

    :cond_0
    return-void
.end method

.method public declared-synchronized openDictionary(Ljava/lang/String;)Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;
    .locals 5

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->dictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->dictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    .line 103
    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;->open()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 104
    monitor-exit p0

    return-object v0

    .line 108
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;->createGlossDictionary()Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;

    move-result-object v0

    .line 109
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;->withContext(Landroid/content/Context;)Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;->withId(Ljava/lang/String;)Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :try_start_2
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;->build()Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper;

    move-result-object v1

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->dictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 115
    :catch_0
    :try_start_3
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v2, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dictionary with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    :goto_0
    monitor-exit p0

    return-object v1

    .line 98
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized openGlossModelForCurrentBook()Lcom/amazon/kcp/wordwise/gloss/IGlossModel;
    .locals 6

    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 271
    monitor-exit p0

    return-object v1

    .line 274
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 276
    monitor-exit p0

    return-object v1

    .line 279
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    if-eqz v2, :cond_3

    .line 280
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    invoke-interface {v2}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 283
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    invoke-interface {v2}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->cleanUp()V

    .line 284
    iput-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    .line 285
    iput-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 288
    :cond_3
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->openSidecarForBook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_4

    .line 290
    monitor-exit p0

    return-object v1

    .line 293
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->openKnownSense()Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v3, :cond_5

    .line 295
    monitor-exit p0

    return-object v1

    .line 298
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->openOverrideForCurrentBook()Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v4, :cond_6

    .line 300
    monitor-exit p0

    return-object v1

    .line 304
    :cond_6
    :try_start_6
    new-instance v5, Lcom/amazon/kcp/wordwise/gloss/GlossModel;

    invoke-direct {v5, v1, v2, v4, v3}, Lcom/amazon/kcp/wordwise/gloss/GlossModel;-><init>(Lcom/amazon/kcp/wordwise/language/ILanguageSettings;Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;)V

    .line 305
    invoke-interface {v5}, Lcom/amazon/kcp/wordwise/gloss/IGlossModel;->isValid()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 306
    iput-object v5, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    .line 307
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 309
    :cond_7
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->hasAttemptedOpenGlossModel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 310
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentModel:Lcom/amazon/kcp/wordwise/gloss/IGlossModel;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public openGlossModelForCurrentBookAsync(Ljava/lang/Runnable;)V
    .locals 2

    .line 335
    new-instance v0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory$2;-><init>(Lcom/amazon/kcp/wordwise/gloss/GlossFactory;Ljava/lang/Runnable;)V

    .line 349
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected openKnownSense()Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->glossKnownSense:Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;

    if-eqz v0, :cond_1

    .line 200
    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->glossKnownSense:Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;

    return-object v0

    .line 205
    :cond_1
    new-instance v0, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper$Builder;

    invoke-direct {v0}, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper$Builder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper$Builder;->withSdk(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper$Builder;

    .line 206
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper$Builder;->build()Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->glossKnownSense:Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;

    return-object v0
.end method

.method protected openOverrideForCurrentBook()Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;
    .locals 5

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 221
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 226
    :cond_1
    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentOverride:Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;

    if-eqz v2, :cond_3

    .line 228
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentOverride:Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;

    invoke-interface {v2}, Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;->open()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentOverride:Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;

    monitor-exit p0

    return-object v0

    .line 231
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentOverride:Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;

    invoke-interface {v2}, Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;->close()V

    .line 232
    iput-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentOverride:Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;

    .line 233
    iput-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 235
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-static {}, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;->createGlossOverride()Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;

    move-result-object v1

    .line 238
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;->withBook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;->withSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;

    .line 240
    :try_start_1
    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;->build()Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentOverride:Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;

    .line 241
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentBook:Lcom/amazon/kindle/krx/content/IBook;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    iget-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Override db for book "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentOverride:Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;

    return-object v0

    :catchall_0
    move-exception v0

    .line 235
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public openPinyinModel()Lcom/amazon/kcp/wordwise/gloss/PinyinModel;
    .locals 2

    .line 319
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->pinyinExists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 324
    :cond_0
    new-instance v0, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->pinyinModel:Lcom/amazon/kcp/wordwise/gloss/PinyinModel;

    .line 325
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->hasAttemptedOpenPinyinModel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 327
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->pinyinModel:Lcom/amazon/kcp/wordwise/gloss/PinyinModel;

    return-object v0
.end method

.method public openPinyinModelForCurrentBookAsync(Ljava/lang/Runnable;)V
    .locals 2

    .line 357
    new-instance v0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory$3;-><init>(Lcom/amazon/kcp/wordwise/gloss/GlossFactory;Ljava/lang/Runnable;)V

    .line 371
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public declared-synchronized openSidecarForBook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;
    .locals 4

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 130
    monitor-exit p0

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    .line 134
    monitor-exit p0

    return-object v1

    .line 137
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentSidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentSidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;->open()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentSidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 141
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentSidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;->close()V

    .line 142
    iput-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentSidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    .line 143
    iput-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 146
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->createGlossSidecar()Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->withContext(Landroid/content/Context;)Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->withBook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    :try_start_3
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;->build()Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentSidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    .line 150
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 151
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->hasAttemptedOpenSidecar:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 153
    :catch_0
    :try_start_4
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sidecar for book "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->currentSidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public openSidecarForCurrentBookAsync(Ljava/lang/Runnable;)V
    .locals 2

    .line 164
    new-instance v0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory$1;-><init>(Lcom/amazon/kcp/wordwise/gloss/GlossFactory;Ljava/lang/Runnable;)V

    .line 178
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
