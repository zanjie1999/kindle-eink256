.class public Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;
.super Ljava/lang/Object;
.source "DoubletimeStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.speedreading.doubletime.DoubletimeStatistics"

.field private static instance:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;


# instance fields
.field private clutchStartTime:J

.field private clutchStartWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

.field private logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field private looperStartTime:J

.field private looperStartWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

.field private sessionStatistics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->sessionStatistics:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 85
    iput-wide v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->looperStartTime:J

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->looperStartWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;
    .locals 1

    .line 107
    sget-object v0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->instance:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;

    invoke-direct {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;-><init>()V

    sput-object v0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->instance:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;

    .line 110
    :cond_0
    sget-object v0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->instance:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;

    return-object v0
.end method


# virtual methods
.method public clearSession()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->sessionStatistics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onClutchEvent(Lcom/amazon/kindle/speedreading/clutch/ClutchEvent;)V
    .locals 11
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 164
    monitor-enter p0

    .line 166
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/clutch/ClutchEvent;->getType()Lcom/amazon/kindle/speedreading/clutch/ClutchEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/speedreading/clutch/ClutchEvent$EventType;->RESUME:Lcom/amazon/kindle/speedreading/clutch/ClutchEvent$EventType;

    if-ne v0, v1, :cond_0

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->clutchStartTime:J

    .line 169
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/clutch/ClutchEvent;->getWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->clutchStartWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    goto :goto_2

    .line 171
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/clutch/ClutchEvent;->getType()Lcom/amazon/kindle/speedreading/clutch/ClutchEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/speedreading/clutch/ClutchEvent$EventType;->PAUSE:Lcom/amazon/kindle/speedreading/clutch/ClutchEvent$EventType;

    if-ne v0, v1, :cond_3

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->clutchStartWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    if-eqz v0, :cond_3

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->clutchStartTime:J

    sub-long/2addr v0, v2

    .line 179
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/clutch/ClutchEvent;->getWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->clutchStartWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    invoke-virtual {v3}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->clutchStartWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/clutch/ClutchEvent;->getWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v3

    :goto_0
    move-object v6, v3

    if-eqz v2, :cond_2

    .line 183
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/clutch/ClutchEvent;->getWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->clutchStartWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    :goto_1
    move-object v7, p1

    .line 186
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->sessionStatistics:Ljava/util/List;

    new-instance v2, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;

    const/4 v10, 0x0

    move-object v4, v2

    move-object v5, p0

    move-wide v8, v0

    invoke-direct/range {v4 .. v10}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;JI)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v2, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User spent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " seconds in the clutch"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 192
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->clutchStartWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    .line 195
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onLooperEvent(Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;)V
    .locals 11
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 133
    monitor-enter p0

    .line 135
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;->getType()Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;->RESUME:Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;

    if-ne v0, v1, :cond_0

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->looperStartTime:J

    .line 139
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;->getWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->looperStartWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;->getType()Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;->PAUSE:Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;

    if-ne v0, v1, :cond_1

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->looperStartTime:J

    sub-long v8, v0, v2

    .line 145
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->looperStartWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-lez v2, :cond_1

    .line 147
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;->getWordCount()I

    move-result v0

    const v1, 0xea60

    mul-int v0, v0, v1

    int-to-long v0, v0

    div-long/2addr v0, v8

    long-to-int v1, v0

    .line 149
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v2, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;->getWordCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " words in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3e8

    div-long v4, v8, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " seconds. ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " wpm )"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->sessionStatistics:Ljava/util/List;

    new-instance v1, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;

    iget-object v6, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->looperStartWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    .line 152
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;->getWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v7

    .line 153
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;->getWordCount()I

    move-result v10

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;JI)V

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 155
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->looperStartWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    .line 158
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onStartDoubletime(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 115
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 116
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method

.method public onStopDoubletime(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 121
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->clearSession()V

    return-void
.end method

.method public summarizeStatisticsBetween(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;
    .locals 11

    .line 209
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->sessionStatistics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v8, v2

    const/4 v10, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;

    .line 211
    invoke-virtual {v1, p1, p2}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;->isBetween(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;->getWordCount()I

    move-result v2

    add-int/2addr v10, v2

    .line 214
    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;->getTimeSpent()J

    move-result-wide v1

    add-long/2addr v8, v1

    goto :goto_0

    .line 218
    :cond_1
    new-instance p1, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;JI)V

    return-object p1
.end method
