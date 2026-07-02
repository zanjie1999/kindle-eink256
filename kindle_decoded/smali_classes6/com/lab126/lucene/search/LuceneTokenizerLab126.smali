.class public Lcom/lab126/lucene/search/LuceneTokenizerLab126;
.super Lorg/apache/lucene/analysis/Tokenizer;
.source "LuceneTokenizerLab126.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lab126/lucene/search/LuceneTokenizerLab126$WordIteratorReader;
    }
.end annotation


# static fields
.field private static final PROGRESS_UPDATE_THRESHOLD:I = 0x40

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

.field private byteCount:I

.field private cancel:Z

.field private final charTermAttr:Lorg/apache/lucene/analysis/tokenattributes/CharTermAttribute;

.field private dataOutputStream:Ljava/io/DataOutputStream;

.field private intCount:I

.field private lastProgressUpdate:J

.field private lbsIndexer:Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;

.field private final payloadAttr:Lorg/apache/lucene/analysis/tokenattributes/PayloadAttribute;

.field private final posIncrAttr:Lorg/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute;

.field private shortCount:I

.field private threeByteCount:I

.field private tracker:Lcom/amazon/kindle/services/download/IStatusTracker;

.field private wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

.field private wordIteratorTokenStream:Lorg/apache/lucene/analysis/TokenStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/lucene/analysis/Analyzer;Lcom/amazon/kindle/search/IKindleWordTokenIterator;Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;Lcom/amazon/kindle/services/download/IStatusTracker;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0}, Lorg/apache/lucene/analysis/Tokenizer;-><init>(Ljava/io/Reader;)V

    .line 42
    const-class v0, Lorg/apache/lucene/analysis/tokenattributes/CharTermAttribute;

    invoke-virtual {p0, v0}, Lorg/apache/lucene/analysis/Tokenizer;->addAttribute(Ljava/lang/Class;)Lorg/apache/lucene/util/Attribute;

    move-result-object v0

    check-cast v0, Lorg/apache/lucene/analysis/tokenattributes/CharTermAttribute;

    iput-object v0, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->charTermAttr:Lorg/apache/lucene/analysis/tokenattributes/CharTermAttribute;

    .line 43
    const-class v0, Lorg/apache/lucene/analysis/tokenattributes/PayloadAttribute;

    invoke-virtual {p0, v0}, Lorg/apache/lucene/analysis/Tokenizer;->addAttribute(Ljava/lang/Class;)Lorg/apache/lucene/util/Attribute;

    move-result-object v0

    check-cast v0, Lorg/apache/lucene/analysis/tokenattributes/PayloadAttribute;

    iput-object v0, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->payloadAttr:Lorg/apache/lucene/analysis/tokenattributes/PayloadAttribute;

    .line 44
    const-class v0, Lorg/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute;

    invoke-virtual {p0, v0}, Lorg/apache/lucene/analysis/Tokenizer;->addAttribute(Ljava/lang/Class;)Lorg/apache/lucene/util/Attribute;

    move-result-object v0

    check-cast v0, Lorg/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute;

    iput-object v0, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->posIncrAttr:Lorg/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute;

    .line 50
    iput-object p4, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->tracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    .line 51
    iput-object p2, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    .line 52
    iput-object p3, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->lbsIndexer:Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;

    .line 53
    new-instance p3, Lcom/lab126/lucene/search/LuceneTokenizerLab126$WordIteratorReader;

    invoke-direct {p3, p2}, Lcom/lab126/lucene/search/LuceneTokenizerLab126$WordIteratorReader;-><init>(Lcom/amazon/kindle/search/IKindleWordTokenIterator;)V

    const-string p2, "CONTENT"

    invoke-virtual {p1, p2, p3}, Lorg/apache/lucene/analysis/Analyzer;->tokenStream(Ljava/lang/String;Ljava/io/Reader;)Lorg/apache/lucene/analysis/TokenStream;

    move-result-object p1

    iput-object p1, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->wordIteratorTokenStream:Lorg/apache/lucene/analysis/TokenStream;

    .line 54
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 55
    new-instance p1, Ljava/io/DataOutputStream;

    iget-object p2, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->dataOutputStream:Ljava/io/DataOutputStream;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-super {p0}, Lorg/apache/lucene/analysis/Tokenizer;->close()V

    return-void
.end method

.method public end()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-super {p0}, Lorg/apache/lucene/analysis/Tokenizer;->end()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->tracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    .line 67
    iput-object v0, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    return-void
.end method

.method public incrementToken()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lorg/apache/lucene/analysis/Tokenizer;->clearAttributes()V

    .line 78
    iget-object v0, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->wordIteratorTokenStream:Lorg/apache/lucene/analysis/TokenStream;

    invoke-virtual {v0}, Lorg/apache/lucene/analysis/TokenStream;->incrementToken()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->wordIteratorTokenStream:Lorg/apache/lucene/analysis/TokenStream;

    const-class v2, Lorg/apache/lucene/analysis/tokenattributes/CharTermAttribute;

    invoke-virtual {v0, v2}, Lorg/apache/lucene/analysis/TokenStream;->getAttribute(Ljava/lang/Class;)Lorg/apache/lucene/util/Attribute;

    move-result-object v0

    check-cast v0, Lorg/apache/lucene/analysis/tokenattributes/CharTermAttribute;

    .line 84
    iget-object v2, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->charTermAttr:Lorg/apache/lucene/analysis/tokenattributes/CharTermAttribute;

    invoke-interface {v2, v0}, Lorg/apache/lucene/analysis/tokenattributes/CharTermAttribute;->append(Lorg/apache/lucene/analysis/tokenattributes/CharTermAttribute;)Lorg/apache/lucene/analysis/tokenattributes/CharTermAttribute;

    .line 86
    iget-object v0, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v0

    if-nez v0, :cond_1

    .line 91
    sget-object v0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->TAG:Ljava/lang/String;

    const-string v2, "Word iterator token is null"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 94
    :cond_1
    iget v0, v0, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    .line 96
    iget-boolean v2, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->cancel:Z

    if-eqz v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->lbsIndexer:Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;

    invoke-virtual {v2, v0}, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;->updatePositionInformation(I)V

    .line 98
    sget-object v2, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Indexing is cancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    int-to-long v2, v0

    .line 102
    iget-wide v4, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->lastProgressUpdate:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x40

    cmp-long v8, v4, v6

    if-ltz v8, :cond_3

    .line 103
    iget-object v4, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->lbsIndexer:Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;

    invoke-virtual {v4, v0}, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;->updatePositionInformation(I)V

    .line 104
    iput-wide v2, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->lastProgressUpdate:J

    .line 105
    iget-object v4, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->tracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    if-eqz v4, :cond_3

    .line 106
    invoke-interface {v4, v2, v3}, Lcom/amazon/kindle/services/download/IStatusTracker;->reportCurrentProgress(J)V

    .line 110
    :cond_3
    iget-object v2, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 111
    iget-object v2, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 114
    iget-object v0, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 115
    aget-byte v2, v0, v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v2, :cond_6

    .line 117
    aget-byte v2, v0, v5

    if-nez v2, :cond_5

    .line 119
    aget-byte v2, v0, v4

    if-nez v2, :cond_4

    const/4 v2, 0x3

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_a

    if-eq v2, v5, :cond_9

    if-eq v2, v4, :cond_8

    if-eq v2, v3, :cond_7

    .line 139
    sget-object v3, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detected invalid offset "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_7
    iget v3, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->byteCount:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->byteCount:I

    goto :goto_1

    .line 133
    :cond_8
    iget v3, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->shortCount:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->shortCount:I

    goto :goto_1

    .line 130
    :cond_9
    iget v3, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->threeByteCount:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->threeByteCount:I

    goto :goto_1

    .line 127
    :cond_a
    iget v3, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->intCount:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->intCount:I

    .line 142
    :goto_1
    new-instance v3, Lorg/apache/lucene/index/Payload;

    rsub-int/lit8 v4, v2, 0x4

    invoke-direct {v3, v0, v2, v4}, Lorg/apache/lucene/index/Payload;-><init>([BII)V

    .line 143
    iget-object v0, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->payloadAttr:Lorg/apache/lucene/analysis/tokenattributes/PayloadAttribute;

    invoke-interface {v0, v3}, Lorg/apache/lucene/analysis/tokenattributes/PayloadAttribute;->setPayload(Lorg/apache/lucene/index/Payload;)V

    .line 145
    iget-object v0, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->posIncrAttr:Lorg/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute;

    invoke-interface {v0, v1}, Lorg/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute;->setPositionIncrement(I)V

    return v5
.end method

.method public reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-super {p0}, Lorg/apache/lucene/analysis/Tokenizer;->reset()V

    return-void
.end method

.method public setCancel(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->cancel:Z

    return-void
.end method
