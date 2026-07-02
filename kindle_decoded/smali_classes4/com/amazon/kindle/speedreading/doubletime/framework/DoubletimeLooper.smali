.class public Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;
.super Ljava/lang/Thread;
.source "DoubletimeLooper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DoubletimeLooper"


# instance fields
.field private final MESSAGE_PROCESSED_WAIT_TIME:I

.field private alive:Z

.field private atChapterEnd:Z

.field private chapterEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private chapterStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

.field private listener:Landroid/os/Handler;

.field private final logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private paused:Z

.field private sessionWordCount:I

.field private tocList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/speedreading/toc/ChapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;Lcom/amazon/kindle/krx/logging/ILogger;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->atChapterEnd:Z

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->paused:Z

    .line 70
    iput-boolean v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->alive:Z

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    .line 76
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->listener:Landroid/os/Handler;

    const/16 v1, 0x3e8

    .line 80
    iput v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->MESSAGE_PROCESSED_WAIT_TIME:I

    .line 83
    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->sessionWordCount:I

    .line 89
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    .line 90
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    .line 92
    invoke-static {}, Lcom/amazon/kindle/speedreading/toc/TOCUtil;->getInstance()Lcom/amazon/kindle/speedreading/toc/TOCUtil;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/toc/TOCUtil;->hasTOC()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/toc/TOCUtil;->getAllChapters()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->tocList:Ljava/util/List;

    .line 98
    :cond_0
    const-class p1, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    invoke-interface {p3, p1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method private moveToNextWord()V
    .locals 5

    .line 258
    iget-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->atChapterEnd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->atChapterEnd:Z

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    .line 265
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;->getNextWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    .line 266
    iget v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->sessionWordCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->sessionWordCount:I

    if-nez v1, :cond_1

    .line 270
    iput-boolean v3, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->paused:Z

    .line 271
    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    .line 273
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->listener:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 274
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;

    sget-object v2, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;->PAUSE:Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;

    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v3

    iget v4, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->sessionWordCount:I

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;-><init>(Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;I)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized notifyListenerAndWaitForResponse()V
    .locals 4

    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    const-string v1, "DoubletimeLooper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Informing handlers of word - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    invoke-virtual {v3}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->chapterStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->chapterEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->chapterStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->chapterEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 292
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->isBetween(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "chapter_start_position"

    .line 297
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->chapterStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->toSerializableString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "chapter_end_position"

    .line 298
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->chapterEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->toSerializableString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->updateChapterPositions()V

    const-string v1, "next_chapter_start_position"

    .line 302
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->chapterStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->toSerializableString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "next_chapter_end_position"

    .line 303
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->chapterEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->toSerializableString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    .line 306
    iput v2, v1, Landroid/os/Message;->what:I

    .line 307
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 309
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->listener:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->atChapterEnd:Z

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->listener:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-wide/16 v0, 0x3e8

    .line 319
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateChapterPositions()V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->tocList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 180
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/speedreading/toc/ChapterItem;

    .line 182
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/toc/ChapterItem;->getChapterStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/toc/ChapterItem;->getChapterEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->isBetween(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/toc/ChapterItem;->getChapterStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->chapterStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 185
    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/toc/ChapterItem;->getChapterEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->chapterEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    return-object v0
.end method

.method public isDoubletimePaused()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->paused:Z

    return v0
.end method

.method public declared-synchronized messageProcessed()V
    .locals 1

    monitor-enter p0

    .line 196
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pauseDoubletime()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    .line 108
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->paused:Z

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;

    sget-object v2, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;->PAUSE:Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;

    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v3

    iget v4, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->sessionWordCount:I

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;-><init>(Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;I)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerListener(Landroid/os/Handler;)V
    .locals 0

    monitor-enter p0

    .line 148
    :try_start_0
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->listener:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resumeDoubletime(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V
    .locals 3

    monitor-enter p0

    .line 118
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->alive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->paused:Z

    .line 124
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 128
    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->sessionWordCount:I

    .line 129
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;

    sget-object v1, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;->RESUME:Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;

    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;-><init>(Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "The thread cannot be restarted because it has finished execution."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 5

    .line 203
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->alive:Z

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->paused:Z

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->notifyListenerAndWaitForResponse()V

    .line 212
    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    const-string v1, "DoubletimeLooper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    iget-boolean v4, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->atChapterEnd:Z

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getDelay(Z)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    iget-boolean v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->atChapterEnd:Z

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getDelay(Z)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 221
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    const-string v2, "DoubletimeLooper"

    const-string v3, "Interrupted while waiting for next word"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 227
    :cond_0
    :goto_3
    monitor-enter p0

    .line 229
    :try_start_2
    iget-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->paused:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 233
    :try_start_3
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    const-string v1, "DoubletimeLooper"

    const-string v2, "Thread has been paused. Waiting"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 238
    :try_start_4
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    const-string v2, "DoubletimeLooper"

    const-string v3, "Interrupted while paused"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 243
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->moveToNextWord()V

    .line 245
    :goto_4
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_2
    return-void
.end method

.method public declared-synchronized setCurrentWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 156
    :try_start_0
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    .line 158
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->chapterStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->chapterEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->chapterStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->chapterEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->chapterStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->chapterEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 160
    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->isBetween(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->updateChapterPositions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 165
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stopDoubletime()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 138
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->alive:Z

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
