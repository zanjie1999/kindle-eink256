.class public Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;
.super Ljava/lang/Object;
.source "TICRModel.java"


# static fields
.field private static final MIN_SCREEN_PERCENT_OVERLAP_FOR_DUPLICATION:I = 0x4b

.field private static final MIN_WORDS_FOR_VALID_ESTIMATE:I = 0x1


# instance fields
.field private bookTriggeredLearningModeActive:Z

.field private dataStore:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

.field private lastRecordedScreen:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

.field private lastRecordedWPM:D

.field private final logger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

.field private final observable:Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRObservable;

.field private serializer:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/store/serializer/ITICRStoreSerializer;

.field private start:J


# direct methods
.method public constructor <init>(Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRObservable;

    invoke-direct {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRObservable;-><init>()V

    iput-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->observable:Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRObservable;

    const-wide/16 v0, 0x0

    .line 76
    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->start:J

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->lastRecordedScreen:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    const-wide/16 v0, 0x0

    .line 78
    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->lastRecordedWPM:D

    if-nez p1, :cond_0

    .line 81
    new-instance p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    invoke-direct {p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;-><init>()V

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->dataStore:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    .line 85
    iput-object p2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->logger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    .line 87
    iget-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->observable:Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRObservable;

    invoke-virtual {p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRObservable;->allowNotifications()V

    return-void
.end method

.method private getPercentRead(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)D
    .locals 5

    .line 169
    invoke-virtual {p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->getPositionDifference()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 171
    invoke-virtual {p1, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->getDistanceFrom(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)D

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private getTimeForCurrentPageInMillis(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;D)J
    .locals 3

    .line 279
    invoke-virtual {p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->getNumWords()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->getNumWords()I

    move-result p1

    int-to-double v0, p1

    div-double/2addr v0, p2

    const-wide/high16 p1, 0x404e000000000000L    # 60.0

    mul-double v0, v0, p1

    double-to-long p1, v0

    return-wide p1

    :cond_1
    :goto_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public static getWordsPerMinute(JJ)D
    .locals 2

    long-to-double p0, p0

    long-to-double p2, p2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p2, v0

    div-double/2addr p0, p2

    const-wide/high16 p2, 0x404e000000000000L    # 60.0

    mul-double p0, p0, p2

    return-wide p0
.end method

.method private isDataStoreInvalid()Z
    .locals 5

    .line 286
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->dataStore:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    invoke-virtual {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->getPercentRead()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->dataStore:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    invoke-virtual {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->getTotalTimeRead()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->dataStore:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    invoke-virtual {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->getNumWordsRead()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public addObserver(Ljava/util/Observer;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->observable:Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRObservable;

    invoke-virtual {v0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public getDataStore()Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->dataStore:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    return-object v0
.end method

.method public logInterval(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;)Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 104
    iget-wide v3, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->start:J

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->start:J

    .line 108
    invoke-static/range {p1 .. p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->isWellFormed(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 109
    sget-object v1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_INVALID_SCREEN_READ:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    return-object v1

    .line 111
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->isWellFormed(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 112
    sget-object v1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_INVALID_CURRENT_SCREEN:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    return-object v1

    .line 114
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->isValid(Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 115
    sget-object v1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_INVALID_TRANSITION_TYPE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    return-object v1

    .line 118
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->getPercentRead(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)D

    move-result-wide v11

    .line 119
    iget-object v5, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->logger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Percent_Read"

    invoke-virtual {v5, v7, v6}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    cmpg-double v7, v11, v5

    if-gtz v7, :cond_3

    .line 121
    sget-object v1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_INVALID_PERCENT_READ:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    return-object v1

    .line 124
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->getNumWords()I

    move-result v5

    int-to-long v13, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v13, v5

    if-gtz v7, :cond_4

    .line 126
    sget-object v1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_INVALID_WORDS:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    return-object v1

    .line 129
    :cond_4
    iget-object v7, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->dataStore:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    invoke-virtual {v7, v13, v14, v11, v12}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->updateBookInfo(JD)J

    cmp-long v7, v3, v5

    if-gtz v7, :cond_5

    .line 132
    sget-object v1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_FIRST_INTERVAL:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    return-object v1

    .line 134
    :cond_5
    sget-object v7, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->GOTO_POSITION:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;

    invoke-virtual {v7, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 135
    sget-object v1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_GOTO_JUMP:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    return-object v1

    .line 137
    :cond_6
    sget-object v7, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->PREVIOUS_PAGE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;

    invoke-virtual {v7, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 138
    sget-object v1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_PREV_PAGE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    return-object v1

    .line 141
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v9, v7, v3

    .line 142
    iget-object v2, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->logger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Interval_Time"

    invoke-virtual {v2, v4, v3}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v2, v9, v5

    if-gtz v2, :cond_8

    .line 144
    sget-object v1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_INVALID_INTERVAL:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    return-object v1

    .line 147
    :cond_8
    invoke-static {v13, v14, v9, v10}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->getWordsPerMinute(JJ)D

    move-result-wide v7

    .line 148
    iget-object v2, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->logger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Interval_WPM"

    invoke-virtual {v2, v4, v3}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v2, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->lastRecordedScreen:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    if-eqz v2, :cond_9

    .line 150
    invoke-virtual {v1, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->getPercentOverlap(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)I

    move-result v2

    const/16 v3, 0x4b

    if-le v2, v3, :cond_9

    .line 151
    iget-wide v2, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->lastRecordedWPM:D

    cmpg-double v4, v2, v7

    if-gez v4, :cond_9

    .line 152
    sget-object v1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_REREAD_PAGE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    return-object v1

    .line 157
    :cond_9
    iget-object v2, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->dataStore:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    move-wide v3, v9

    move-wide v5, v13

    move-wide/from16 p2, v7

    move-wide v7, v11

    move-wide v15, v9

    move-wide/from16 v9, p2

    invoke-virtual/range {v2 .. v10}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->updateStore(JJDD)J

    .line 159
    iput-wide v9, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->lastRecordedWPM:D

    .line 160
    iput-object v1, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->lastRecordedScreen:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    .line 162
    iget-object v1, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->observable:Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRObservable;

    invoke-virtual {v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRObservable;->allowNotifications()V

    .line 163
    iget-object v1, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->observable:Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRObservable;

    new-instance v7, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalInfo;

    move-object v2, v7

    move-wide v3, v15

    move-object v13, v7

    move-wide v7, v11

    invoke-direct/range {v2 .. v10}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalInfo;-><init>(JJDD)V

    invoke-virtual {v1, v13}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 165
    sget-object v1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_LOGGED:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    return-object v1
.end method

.method public removeObserver(Ljava/util/Observer;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->observable:Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRObservable;

    invoke-virtual {v0, p1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public resetTimer()V
    .locals 2

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->start:J

    return-void
.end method

.method public saveState(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 383
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->dataStore:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public timeLeftFromPositionInSeconds(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;D)J
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    if-nez v1, :cond_0

    const-wide/16 v1, -0x2

    return-wide v1

    .line 190
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->isWellFormed(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)Z

    move-result v5

    if-nez v5, :cond_1

    const-wide/16 v1, -0x3

    return-wide v1

    :cond_1
    const/4 v5, 0x0

    .line 194
    iput-boolean v5, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->bookTriggeredLearningModeActive:Z

    .line 195
    invoke-virtual {v2, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->getDistanceFrom(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;)D

    move-result-wide v5

    .line 197
    iget-object v7, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->logger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    iget-object v8, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->dataStore:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Data_Store"

    invoke-virtual {v7, v9, v8}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v7, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->logger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Percent_Left"

    invoke-virtual {v7, v9, v8}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v2, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->isPositionAfterScreen(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;)Z

    move-result v1

    .line 209
    iget-object v7, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->logger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Percent_Passed"

    invoke-virtual {v7, v9, v8}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x0

    return-wide v1

    .line 216
    :cond_2
    iget-object v7, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->dataStore:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    invoke-virtual {v7}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->getPercentRead()D

    move-result-wide v7

    .line 217
    iget-object v9, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->dataStore:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    invoke-virtual {v9}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->getNumWordsRead()J

    move-result-wide v9

    .line 221
    invoke-direct/range {p0 .. p0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->isDataStoreInvalid()Z

    move-result v11

    const-wide/16 v13, 0x3c

    const-wide/16 v17, 0x0

    if-eqz v11, :cond_6

    .line 222
    iget-object v7, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->dataStore:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    invoke-virtual {v7}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->getBookInfo()Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;->getPercentOfBookForKnownWords()D

    move-result-wide v7

    .line 223
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->getPositionDifference()D

    move-result-wide v9

    .line 224
    iget-object v11, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->logger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    const-string v15, "Percent_In_Screen"

    invoke-virtual {v11, v15, v12}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-double v11, v7, v17

    if-eqz v11, :cond_3

    cmpl-double v11, v3, v17

    if-eqz v11, :cond_3

    .line 227
    iget-object v2, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->dataStore:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    invoke-virtual {v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->getBookInfo()Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;->getNumWordsKnown()J

    move-result-wide v9

    long-to-double v9, v9

    mul-double v9, v9, v5

    mul-double v7, v7, v3

    div-double/2addr v9, v7

    double-to-long v2, v9

    goto :goto_1

    :cond_3
    cmpl-double v7, v9, v17

    if-lez v7, :cond_5

    .line 230
    invoke-direct {v0, v2, v3, v4}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->getTimeForCurrentPageInMillis(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;D)J

    move-result-wide v2

    const-wide/16 v7, -0x1

    cmp-long v4, v2, v7

    if-nez v4, :cond_4

    const/4 v4, 0x1

    .line 234
    iput-boolean v4, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->bookTriggeredLearningModeActive:Z

    return-wide v7

    :cond_4
    long-to-double v2, v2

    mul-double v5, v5, v2

    div-double/2addr v5, v9

    double-to-long v2, v5

    move-wide v15, v2

    goto :goto_2

    :cond_5
    const-wide/16 v15, -0x1

    goto :goto_2

    .line 242
    :cond_6
    iget-object v2, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->dataStore:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    invoke-virtual {v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->isTraining()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 247
    iget-object v2, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->logger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    const-string v12, "BookWPM.training.override.GlobalWPM"

    invoke-virtual {v2, v12, v11}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_7
    iget-object v2, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->dataStore:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    invoke-virtual {v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->getWordsPerMinute()D

    move-result-wide v11

    cmpl-double v2, v3, v17

    if-eqz v2, :cond_8

    div-double v15, v11, v3

    const-wide/high16 v19, 0x4008000000000000L    # 3.0

    cmpl-double v2, v15, v19

    if-lez v2, :cond_8

    .line 251
    iget-object v2, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->logger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    const-string v12, "BookWPM.dominance.override.GlobalWPM"

    invoke-virtual {v2, v12, v11}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-wide v11, v3

    .line 256
    :cond_8
    iget-object v2, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->logger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Using_WPM"

    invoke-virtual {v2, v4, v3}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-double v2, v11, v17

    if-nez v2, :cond_9

    const/4 v2, 0x1

    .line 263
    iput-boolean v2, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->bookTriggeredLearningModeActive:Z

    const-wide/16 v1, -0x1

    return-wide v1

    :cond_9
    long-to-double v2, v9

    mul-double v2, v2, v5

    mul-double v7, v7, v11

    div-double/2addr v2, v7

    double-to-long v2, v2

    :goto_1
    mul-long v15, v2, v13

    .line 270
    :goto_2
    iget-object v2, v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRModel;->logger:Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Raw_Time_Left"

    invoke-virtual {v2, v4, v3}, Lcom/amazon/ebook/booklet/reader/plugin/timer/util/BufferedLogger;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v2, v15, v13

    if-gez v2, :cond_a

    if-nez v1, :cond_a

    return-wide v13

    :cond_a
    return-wide v15
.end method
