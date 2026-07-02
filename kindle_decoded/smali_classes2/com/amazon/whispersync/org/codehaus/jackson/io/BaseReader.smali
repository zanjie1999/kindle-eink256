.class abstract Lcom/amazon/whispersync/org/codehaus/jackson/io/BaseReader;
.super Ljava/io/Reader;
.source "BaseReader.java"


# static fields
.field protected static final LAST_VALID_UNICODE_CHAR:I = 0x10ffff

.field protected static final NULL_BYTE:C

.field protected static final NULL_CHAR:C


# instance fields
.field protected _buffer:[B

.field protected final _context:Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;

.field protected _in:Ljava/io/InputStream;

.field protected _length:I

.field protected _ptr:I

.field protected _tmpBuf:[C


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/BaseReader;->_tmpBuf:[C

    .line 42
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/BaseReader;->_context:Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;

    .line 43
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/BaseReader;->_in:Ljava/io/InputStream;

    .line 44
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/BaseReader;->_buffer:[B

    .line 45
    iput p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/BaseReader;->_ptr:I

    .line 46
    iput p5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/BaseReader;->_length:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/BaseReader;->_in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/BaseReader;->_in:Ljava/io/InputStream;

    .line 62
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/io/BaseReader;->freeBuffers()V

    .line 63
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public final freeBuffers()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/BaseReader;->_buffer:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 101
    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/BaseReader;->_buffer:[B

    .line 102
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/BaseReader;->_context:Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;->releaseReadIOBuffer([B)V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/BaseReader;->_tmpBuf:[C

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [C

    .line 78
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/BaseReader;->_tmpBuf:[C

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/BaseReader;->_tmpBuf:[C

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/io/BaseReader;->_tmpBuf:[C

    aget-char v0, v0, v2

    return v0
.end method

.method protected reportBounds([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read(buf,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "), cbuf["

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected reportStrangeStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Strange I/O stream, returned 0 bytes on read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
