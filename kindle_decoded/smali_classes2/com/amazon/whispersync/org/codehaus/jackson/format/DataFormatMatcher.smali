.class public Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;
.super Ljava/lang/Object;
.source "DataFormatMatcher.java"


# instance fields
.field protected final _bufferedData:[B

.field protected final _bufferedLength:I

.field protected final _match:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

.field protected final _matchStrength:Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;

.field protected final _originalStream:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;[BILcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->_originalStream:Ljava/io/InputStream;

    .line 41
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->_bufferedData:[B

    .line 42
    iput p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->_bufferedLength:I

    .line 43
    iput-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->_match:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    .line 44
    iput-object p5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->_matchStrength:Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;

    return-void
.end method


# virtual methods
.method public createParserWithMatch()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->_match:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->_originalStream:Ljava/io/InputStream;

    if-nez v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->_bufferedData:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->_bufferedLength:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser([BII)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->getDataStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public getDataStream()Ljava/io/InputStream;
    .locals 10

    .line 112
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->_originalStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->_bufferedData:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->_bufferedLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0

    .line 115
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/io/MergedStream;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->_originalStream:Ljava/io/InputStream;

    iget-object v7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->_bufferedData:[B

    const/4 v8, 0x0

    iget v9, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->_bufferedLength:I

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/amazon/whispersync/org/codehaus/jackson/io/MergedStream;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V

    return-object v0
.end method

.method public getMatch()Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->_match:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    return-object v0
.end method

.method public getMatchStrength()Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->_matchStrength:Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/amazon/whispersync/org/codehaus/jackson/format/MatchStrength;

    :cond_0
    return-object v0
.end method

.method public getMatchedFormatName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->_match:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMatch()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/format/DataFormatMatcher;->_match:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
