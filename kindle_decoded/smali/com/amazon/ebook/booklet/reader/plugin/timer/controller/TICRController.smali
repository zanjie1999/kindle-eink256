.class public Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;
.super Ljava/lang/Object;
.source "TICRController.java"


# static fields
.field static synthetic class$com$amazon$ebook$booklet$reader$plugin$timer$model$TICRDataStore:Ljava/lang/Class;

.field static synthetic class$com$amazon$ebook$booklet$reader$plugin$timer$model$TICRGlobalStore:Ljava/lang/Class;


# instance fields
.field private final bufferedLogger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

.field private currentBookData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;

.field private final observable:Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRObservable;

.field private timerData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-direct {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;-><init>()V

    iput-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->bufferedLogger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    .line 58
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRObservable;

    invoke-direct {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRObservable;-><init>()V

    iput-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->observable:Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRObservable;

    .line 64
    invoke-virtual {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRObservable;->allowNotifications()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 449
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private getBookStore(Ljava/io/ObjectInputStream;)Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 467
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 469
    instance-of v0, p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    if-nez v0, :cond_1

    .line 470
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Expected type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->class$com$amazon$ebook$booklet$reader$plugin$timer$model$TICRDataStore:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "com.amazon.ebook.booklet.reader.plugin.timer.model.TICRDataStore"

    invoke-static {v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->class$com$amazon$ebook$booklet$reader$plugin$timer$model$TICRDataStore:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ". Read type is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_1
    check-cast p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 479
    new-instance p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    invoke-direct {p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;-><init>()V

    :cond_3
    return-object p1
.end method

.method private getGlobalStore(Ljava/io/ObjectInputStream;)Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 446
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 448
    instance-of v0, p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;

    if-nez v0, :cond_1

    .line 449
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Expected type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->class$com$amazon$ebook$booklet$reader$plugin$timer$model$TICRGlobalStore:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "com.amazon.ebook.booklet.reader.plugin.timer.model.TICRGlobalStore"

    invoke-static {v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->class$com$amazon$ebook$booklet$reader$plugin$timer$model$TICRGlobalStore:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ". Read type is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_1
    check-cast p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 457
    new-instance p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;

    invoke-direct {p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;-><init>()V

    :cond_3
    return-object p1
.end method

.method private tearDown()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->currentBookData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;

    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->timerData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;

    invoke-virtual {v0, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->removeObserver(Ljava/util/Observer;)V

    const/4 v0, 0x0

    .line 487
    iput-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->currentBookData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;

    return-void
.end method


# virtual methods
.method public logInterval(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;)Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->timerData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;

    if-nez v0, :cond_0

    .line 326
    sget-object p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_INVALID_STATE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    return-object p1

    .line 329
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;->isOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    sget-object p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_CONTROLLER_OFF:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    return-object p1

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->bufferedLogger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    const-string v1, "LogInterval"

    invoke-virtual {v0, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->startTopic(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->bufferedLogger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Current_Screen"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->bufferedLogger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Screen_Viewed"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->bufferedLogger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation_Type"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->currentBookData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;

    if-eqz v0, :cond_2

    .line 340
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->logInterval(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;)Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    move-result-object p1

    return-object p1

    .line 342
    :cond_2
    sget-object p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_INVALID_STATE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    return-object p1
.end method

.method public resetTimer()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->currentBookData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->resetTimer()V

    :cond_0
    return-void
.end method

.method public saveStates(Ljava/io/ObjectOutputStream;Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->timerData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->currentBookData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;

    if-eqz p1, :cond_1

    .line 169
    invoke-virtual {p1, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->saveState(Ljava/io/ObjectOutputStream;)V

    :cond_1
    return-void
.end method

.method public setUp(Ljava/io/ObjectInputStream;Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->bufferedLogger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    const-string/jumbo v1, "setUp"

    invoke-virtual {v0, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->startTopic(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->getGlobalStore(Ljava/io/ObjectInputStream;)Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->timerData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;

    .line 103
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->bufferedLogger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Global_Data"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->getBookStore(Ljava/io/ObjectInputStream;)Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    move-result-object p1

    .line 106
    iget-object p2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->bufferedLogger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Book_Data"

    invoke-virtual {p2, v1, v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->getDataVersion()J

    move-result-wide v0

    iget-object p2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->timerData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;

    invoke-virtual {p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;->getCurrentVersion()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    .line 109
    new-instance p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    invoke-direct {p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;-><init>()V

    .line 110
    iget-object p2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->timerData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;

    invoke-virtual {p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;->getCurrentVersion()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->setDataVersion(J)V

    .line 112
    :cond_0
    new-instance p2, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;

    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->bufferedLogger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-direct {p2, p1, v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;-><init>(Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;)V

    iput-object p2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->currentBookData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;

    .line 114
    iget-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->timerData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;

    invoke-virtual {p2, p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public tearDown(Ljava/io/ObjectOutputStream;Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->saveStates(Ljava/io/ObjectOutputStream;Ljava/io/ObjectOutputStream;)V

    .line 193
    invoke-direct {p0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->tearDown()V

    return-void
.end method

.method public timeLeftFromPositionInSeconds(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)J
    .locals 5

    .line 370
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->timerData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;

    if-nez v0, :cond_0

    const-wide/16 p1, -0x5

    return-wide p1

    .line 374
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;->isOn()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 p1, -0x6

    return-wide p1

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->bufferedLogger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    const-string v1, "GetTimeLeft"

    invoke-virtual {v0, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->startTopic(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->bufferedLogger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "End_Position"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->bufferedLogger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Current_Screen"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->timerData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;

    invoke-virtual {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;->getGlobalWPM()D

    move-result-wide v0

    .line 384
    iget-object v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->bufferedLogger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Global_WPM"

    invoke-virtual {v2, v4, v3}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->currentBookData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;

    if-eqz v2, :cond_2

    .line 387
    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->timeLeftFromPositionInSeconds(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;D)J

    move-result-wide p1

    return-wide p1

    :cond_2
    const-wide/16 p1, -0x4

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 439
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TICRController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->timerData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->currentBookData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;

    invoke-virtual {v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->getDataStore()Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
