.class public Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;
.super Ljava/lang/Object;
.source "ReversedLinesFileReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader$FilePart;
    }
.end annotation


# instance fields
.field private final avoidNewlineSplitBufferSize:I

.field private final blockSize:I

.field private final byteDecrement:I

.field private currentFilePart:Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader$FilePart;

.field private final encoding:Ljava/nio/charset/Charset;

.field private final newLineSequences:[[B

.field private final randomAccessFile:Ljava/io/RandomAccessFile;

.field private final totalBlockCount:J

.field private final totalByteLength:J

.field private trailingNewlineOfFileSkipped:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;-><init>(Ljava/io/File;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-static {p3}, Lcom/amazon/whispersync/org/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILjava/nio/charset/Charset;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    .line 52
    iput-boolean v7, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->trailingNewlineOfFileSkipped:Z

    .line 80
    iput p2, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->blockSize:I

    .line 81
    iput-object p3, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->encoding:Ljava/nio/charset/Charset;

    .line 83
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 84
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->totalByteLength:J

    int-to-long v3, p2

    .line 85
    rem-long v5, v1, v3

    long-to-int v6, v5

    if-lez v6, :cond_0

    .line 87
    div-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->totalBlockCount:J

    goto :goto_0

    .line 89
    :cond_0
    div-long v3, v1, v3

    iput-wide v3, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->totalBlockCount:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    move v4, p2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v6

    .line 94
    :goto_1
    new-instance v8, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    iget-wide v2, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->totalBlockCount:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader$FilePart;-><init>(Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;JI[BLcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader$1;)V

    iput-object v8, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    .line 97
    invoke-static {p3}, Lcom/amazon/whispersync/org/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 102
    iput v4, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I

    goto :goto_3

    :cond_2
    const-string v1, "UTF-8"

    .line 103
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 106
    iput v4, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I

    goto :goto_3

    :cond_3
    const-string v1, "Shift_JIS"

    .line 107
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 110
    iput v4, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I

    goto :goto_3

    :cond_4
    const-string v1, "UTF-16BE"

    .line 111
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-eq v0, v1, :cond_7

    const-string v1, "UTF-16LE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-ne v0, v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, "UTF-16"

    .line 115
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 116
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    const-string v1, "For UTF-16, you need to specify the byte order (use UTF-16BE or UTF-16LE)"

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_6
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not supported yet (feel free to submit a patch)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_7
    :goto_2
    iput v3, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I

    :goto_3
    const/4 v0, 0x3

    new-array v0, v0, [[B

    const-string v1, "\r\n"

    .line 123
    invoke-virtual {v1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "\n"

    invoke-virtual {v1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "\r"

    invoke-virtual {v1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->newLineSequences:[[B

    .line 125
    aget-object v0, v0, v7

    array-length v0, v0

    iput v0, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->avoidNewlineSplitBufferSize:I

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->blockSize:I

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;)Ljava/io/RandomAccessFile;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->encoding:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->avoidNewlineSplitBufferSize:I

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I

    return p0
.end method

.method static synthetic access$800(Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;)[[B
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->newLineSequences:[[B

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public readLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader$FilePart;->access$100(Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    .line 157
    iget-object v1, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    invoke-static {v1}, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader$FilePart;->access$200(Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    if-eqz v1, :cond_0

    .line 159
    invoke-static {v1}, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader$FilePart;->access$100(Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->trailingNewlineOfFileSkipped:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->trailingNewlineOfFileSkipped:Z

    .line 169
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/apache/commons/io/input/ReversedLinesFileReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
