.class public Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;
.super Ljava/lang/Object;
.source "BookInfoStore.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private numWordsKnown:J

.field private percentOfBookForKnownWords:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;->numWordsKnown:J

    const-wide/16 v2, 0x0

    .line 36
    iput-wide v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;->percentOfBookForKnownWords:D

    .line 39
    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;->numWordsKnown:J

    .line 40
    iput-wide v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;->percentOfBookForKnownWords:D

    return-void
.end method


# virtual methods
.method public getNumWordsKnown()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;->numWordsKnown:J

    return-wide v0
.end method

.method public getPercentOfBookForKnownWords()D
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;->percentOfBookForKnownWords:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "BookInfo:Num_Words:"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    iget-wide v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;->numWordsKnown:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ". Percent_Known:"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    iget-wide v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;->percentOfBookForKnownWords:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, ". "

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(JD)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v2, p3, v0

    if-gtz v2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;->numWordsKnown:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;->numWordsKnown:J

    .line 74
    iget-wide p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;->percentOfBookForKnownWords:D

    add-double/2addr p1, p3

    iput-wide p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/BookInfoStore;->percentOfBookForKnownWords:D

    :cond_1
    :goto_0
    return-void
.end method
