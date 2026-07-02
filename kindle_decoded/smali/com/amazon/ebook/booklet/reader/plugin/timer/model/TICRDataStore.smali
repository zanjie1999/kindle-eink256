.class public Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;
.super Ljava/lang/Object;
.source "TICRDataStore.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final transient DEFAULT_TRAINING_LENGTH_IN_WORDS:I = 0x258

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private avgCalculator:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;

.field private bookInfo:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;

.field private dataVersion:J

.field private numWordsRead:J

.field private percentRead:D

.field private totalTimeRead:J

.field private trainingLengthInWords:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x258

    .line 30
    iput v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->trainingLengthInWords:I

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->totalTimeRead:J

    .line 51
    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->numWordsRead:J

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->percentRead:D

    .line 54
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;

    invoke-direct {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;-><init>()V

    iput-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->avgCalculator:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;

    .line 55
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;

    invoke-direct {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;-><init>()V

    iput-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->bookInfo:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;

    return-void
.end method


# virtual methods
.method public addNumWordsRead(J)V
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->numWordsRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->numWordsRead:J

    return-void
.end method

.method public addPercentRead(D)V
    .locals 2

    .line 119
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->percentRead:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->percentRead:D

    return-void
.end method

.method public addToTotalTimeRead(J)V
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->totalTimeRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->totalTimeRead:J

    return-void
.end method

.method public getBookInfo()Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->bookInfo:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;

    return-object v0
.end method

.method public getDataVersion()J
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->dataVersion:J

    return-wide v0
.end method

.method public getNumWordsRead()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->numWordsRead:J

    return-wide v0
.end method

.method public getPercentRead()D
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->percentRead:D

    return-wide v0
.end method

.method public getTotalTimeRead()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->totalTimeRead:J

    return-wide v0
.end method

.method public getWordsPerMinute()D
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->avgCalculator:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;

    invoke-virtual {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->getAverage()D

    move-result-wide v0

    return-wide v0
.end method

.method public isTraining()Z
    .locals 5

    .line 151
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->numWordsRead:J

    iget v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->trainingLengthInWords:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDataVersion(J)V
    .locals 0

    .line 133
    iput-wide p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->dataVersion:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TICRDataStore. DataVersion:"

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    iget-wide v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->dataVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ". Time:"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    iget-wide v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->totalTimeRead:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ". NumWords:"

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    iget-wide v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->numWordsRead:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ". Percent:"

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    iget-wide v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->percentRead:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, ". BookInfo:"

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->bookInfo:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "Training Length:"

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    iget v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->trainingLengthInWords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ". WPM:"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    invoke-virtual {p0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->getWordsPerMinute()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, ". "

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateBookInfo(JD)J
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->bookInfo:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;->update(JD)V

    return-wide p1
.end method

.method public updateStore(JJDD)J
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->avgCalculator:Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;

    invoke-virtual {v0, p7, p8}, Lcom/amazon/ebook/booklet/reader/plugin/timer/calculator/AverageCalculator;->addToAverage(D)D

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->addToTotalTimeRead(J)V

    .line 81
    invoke-virtual {p0, p3, p4}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->addNumWordsRead(J)V

    .line 82
    invoke-virtual {p0, p5, p6}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TICRDataStore;->addPercentRead(D)V

    return-wide p3
.end method
