.class public Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;
.super Ljava/lang/Object;
.source "TICRGlobalStore.java"

# interfaces
.implements Ljava/util/Observer;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private allBooksData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

.field private currentVersion:J

.field private isOn:Z

.field private lastSelectedDisplayOption:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;->isOn:Z

    .line 55
    new-instance v1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    invoke-direct {v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;-><init>()V

    iput-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;->allBooksData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    const-wide/16 v1, 0x0

    .line 56
    iput-wide v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;->currentVersion:J

    .line 57
    iput v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;->lastSelectedDisplayOption:I

    return-void
.end method


# virtual methods
.method public getCurrentVersion()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;->currentVersion:J

    return-wide v0
.end method

.method public getGlobalWPM()D
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;->allBooksData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->getWordsPerMinute()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isOn()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;->isOn:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 142
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TICRGlobalStore. Version :"

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    iget-wide v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;->currentVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ". Is_ON :"

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    iget-boolean v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;->isOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ". GlobalData :"

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;->allBooksData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ". LastSelectedDisplayOption :"

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    iget v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;->lastSelectedDisplayOption:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ". "

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 9

    .line 169
    instance-of p1, p2, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalInfo;

    if-nez p1, :cond_0

    return-void

    .line 172
    :cond_0
    check-cast p2, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalInfo;

    .line 173
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRGlobalStore;->allBooksData:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;

    invoke-virtual {p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalInfo;->getTimeInterval()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalInfo;->getWordsRead()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalInfo;->getPercentRead()D

    move-result-wide v5

    invoke-virtual {p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalInfo;->getIntervalWPM()D

    move-result-wide v7

    invoke-virtual/range {v0 .. v8}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->updateStore(JJDD)J

    return-void
.end method
