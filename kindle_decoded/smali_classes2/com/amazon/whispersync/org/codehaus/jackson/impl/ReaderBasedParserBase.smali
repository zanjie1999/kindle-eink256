.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;
.super Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;
.source "ReaderBasedParserBase.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected _inputBuffer:[C

.field protected _reader:Ljava/io/Reader;


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;I)V

    .line 58
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    .line 59
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;->allocTokenBuffer()[C

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    return-void
.end method


# virtual methods
.method protected _closeInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    :cond_2
    return-void
.end method

.method protected final _matchToken(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 179
    :cond_0
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v1, v2, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOFInValue()V

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v3, "\'null\', \'true\', \'false\' or NaN"

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    .line 185
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_2
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 191
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v1, v0, :cond_3

    .line 192
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->loadMore()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v0, v0, v1

    .line 198
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 200
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v2
.end method

.method protected _releaseBuffers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-super {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    .line 155
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 157
    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    .line 158
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;->releaseTokenBuffer([C)V

    :cond_0
    return-void
.end method

.method protected _reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 208
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    :goto_0
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt p1, v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->loadMore()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char p1, p1, v0

    .line 220
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized token \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\': was expecting "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-void

    .line 223
    :cond_1
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 224
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    return-object v0
.end method

.method protected getNextChar(Ljava/lang/String;)C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 118
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char p1, p1, v0

    return p1
.end method

.method protected final loadMore()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    .line 96
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    .line 98
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 99
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 102
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    const/4 v0, 0x1

    return v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->_closeInput()V

    if-eqz v0, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reader returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return v1
.end method

.method public releaseBuffered(Ljava/io/Writer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/Writer;->write([CII)V

    return v0
.end method
