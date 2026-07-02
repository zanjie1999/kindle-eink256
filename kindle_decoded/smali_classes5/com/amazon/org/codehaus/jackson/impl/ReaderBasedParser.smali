.class public final Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;
.super Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;
.source "ReaderBasedParser.java"


# instance fields
.field protected _inputBuffer:[C

.field protected _objectCodec:Lcom/amazon/org/codehaus/jackson/ObjectCodec;

.field protected _reader:Ljava/io/Reader;

.field protected final _symbols:Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

.field protected _tokenIncomplete:Z


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lcom/amazon/org/codehaus/jackson/ObjectCodec;Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;-><init>(Lcom/amazon/org/codehaus/jackson/io/IOContext;I)V

    const/4 p2, 0x0

    .line 58
    iput-boolean p2, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 70
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_reader:Ljava/io/Reader;

    .line 71
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/io/IOContext;->allocTokenBuffer()[C

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    .line 72
    iput-object p4, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_objectCodec:Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    .line 73
    iput-object p5, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    return-void
.end method

.method private final _nextAfterName()Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 4

    const/4 v0, 0x0

    .line 499
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    .line 500
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    const/4 v1, 0x0

    .line 501
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 503
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 505
    :cond_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    .line 508
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method private _parseFieldName2(III)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1014
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 1019
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->getCurrentSegment()[C

    move-result-object p1

    .line 1020
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    .line 1023
    :goto_0
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 1024
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": was expecting closing \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' for name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1028
    :cond_0
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v1, v1, v2

    const/16 v2, 0x5c

    if-gt v1, v2, :cond_3

    if-ne v1, v2, :cond_1

    .line 1036
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    move-result v2

    goto :goto_1

    :cond_1
    if-gt v1, p3, :cond_3

    if-ne v1, p3, :cond_2

    .line 1056
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1058
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    .line 1059
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object p3

    .line 1060
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v0

    .line 1061
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->size()I

    move-result p1

    .line 1063
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v1, p3, v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v2, 0x20

    if-ge v1, v2, :cond_3

    const-string v2, "name"

    .line 1042
    invoke-virtual {p0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    :cond_3
    move v2, v1

    :goto_1
    mul-int/lit8 p2, p2, 0x1f

    add-int/2addr p2, v1

    add-int/lit8 v1, v0, 0x1

    .line 1048
    aput-char v2, p1, v0

    .line 1051
    array-length v0, p1

    if-lt v1, v0, :cond_4

    .line 1052
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private _parseUnusualFieldName2(II[I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1253
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 1254
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->getCurrentSegment()[C

    move-result-object p1

    .line 1255
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    .line 1256
    array-length v1, p3

    .line 1259
    :goto_0
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1260
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1264
    :cond_0
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v2, v2, v3

    if-gt v2, v1, :cond_1

    .line 1267
    aget v3, p3, v2

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1270
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1284
    :goto_1
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1286
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    .line 1287
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object p3

    .line 1288
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v0

    .line 1289
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->size()I

    move-result p1

    .line 1291
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v1, p3, v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1273
    :cond_2
    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    mul-int/lit8 p2, p2, 0x1f

    add-int/2addr p2, v2

    add-int/lit8 v3, v0, 0x1

    .line 1276
    aput-char v2, p1, v0

    .line 1279
    array-length v0, p1

    if-lt v3, v0, :cond_3

    .line 1280
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method private final _skipCComment()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1525
    :cond_0
    :goto_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1526
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x2a

    if-gt v0, v1, :cond_0

    if-ne v0, v1, :cond_4

    .line 1529
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v2, v0, :cond_3

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, " in a comment"

    .line 1549
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    return-void

    .line 1532
    :cond_3
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 1533
    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    return-void

    :cond_4
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 1540
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    goto :goto_0

    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 1542
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    goto :goto_0

    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1544
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _skipComment()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1503
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    const/16 v1, 0x2f

    if-nez v0, :cond_0

    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    .line 1504
    invoke-virtual {p0, v1, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1507
    :cond_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " in a comment"

    .line 1508
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1510
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v0, v0, v2

    if-ne v0, v1, :cond_2

    .line 1512
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_skipCppComment()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 1514
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_skipCComment()V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "was expecting either \'*\' or \'/\' for a comment"

    .line 1516
    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final _skipCppComment()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1556
    :cond_0
    :goto_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1557
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 1560
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 1563
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1566
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _skipWS()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1453
    :cond_0
    :goto_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1470
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->_constructError(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0

    .line 1454
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-le v0, v1, :cond_4

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    return v0

    .line 1459
    :cond_3
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_skipComment()V

    goto :goto_0

    :cond_4
    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 1462
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    goto :goto_0

    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 1464
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    goto :goto_0

    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1466
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _skipWSOrEnd()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1476
    :cond_0
    :goto_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1496
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_handleEOF()V

    const/4 v0, -0x1

    return v0

    .line 1477
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-le v0, v1, :cond_4

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 1480
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_skipComment()V

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 1487
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    goto :goto_0

    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 1489
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    goto :goto_0

    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1491
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _verifyNoLeadingZeroes()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 905
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    const/16 v2, 0x30

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v0, v0, v1

    if-lt v0, v2, :cond_8

    const/16 v1, 0x39

    if-le v0, v1, :cond_1

    goto :goto_2

    .line 913
    :cond_1
    sget-object v3, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v3}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Leading zeroes not allowed"

    .line 914
    invoke-virtual {p0, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportInvalidNumber(Ljava/lang/String;)V

    .line 917
    :cond_2
    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    if-ne v0, v2, :cond_7

    .line 919
    :cond_3
    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 920
    :cond_4
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v0, v0, v3

    if-lt v0, v2, :cond_6

    if-le v0, v1, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 924
    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_6
    :goto_0
    return v2

    :cond_7
    :goto_1
    return v0

    :cond_8
    :goto_2
    return v2
.end method

.method private final parseNumberText2(Z)Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v0

    const/16 v1, 0x2d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 785
    aput-char v1, v0, v2

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 790
    :goto_0
    iget v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v6, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v5, v6, v5

    goto :goto_1

    :cond_1
    const-string v5, "No digit following minus sign"

    invoke-virtual {p0, v5}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->getNextChar(Ljava/lang/String;)C

    move-result v5

    :goto_1
    const/16 v6, 0x30

    if-ne v5, v6, :cond_2

    .line 792
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_verifyNoLeadingZeroes()C

    move-result v5

    :cond_2
    const/4 v7, 0x0

    :goto_2
    const/16 v8, 0x39

    if-lt v5, v6, :cond_5

    if-gt v5, v8, :cond_5

    add-int/lit8 v7, v7, 0x1

    .line 800
    array-length v9, v0

    if-lt v4, v9, :cond_3

    .line 801
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    const/4 v4, 0x0

    :cond_3
    add-int/lit8 v9, v4, 0x1

    .line 804
    aput-char v5, v0, v4

    .line 805
    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v4, v5, :cond_4

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v9

    const/4 v5, 0x0

    const/4 v9, 0x1

    goto :goto_3

    .line 811
    :cond_4
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v5, v4, v5

    move v4, v9

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_3
    if-nez v7, :cond_6

    .line 815
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Missing integer part (next char "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportInvalidNumber(Ljava/lang/String;)V

    :cond_6
    const/16 v10, 0x2e

    if-ne v5, v10, :cond_b

    add-int/lit8 v10, v4, 0x1

    .line 821
    aput-char v5, v0, v4

    move v4, v10

    const/4 v10, 0x0

    .line 825
    :goto_4
    iget v11, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v12, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v11, v12, :cond_7

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v11

    if-nez v11, :cond_7

    const/4 v9, 0x1

    goto :goto_5

    .line 829
    :cond_7
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v11, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v5, v5, v11

    if-lt v5, v6, :cond_a

    if-le v5, v8, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 834
    array-length v11, v0

    if-lt v4, v11, :cond_9

    .line 835
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    const/4 v4, 0x0

    :cond_9
    add-int/lit8 v11, v4, 0x1

    .line 838
    aput-char v5, v0, v4

    move v4, v11

    goto :goto_4

    :cond_a
    :goto_5
    if-nez v10, :cond_c

    const-string v11, "Decimal point not followed by a digit"

    .line 842
    invoke-virtual {p0, v5, v11}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    goto :goto_6

    :cond_b
    const/4 v10, 0x0

    :cond_c
    :goto_6
    const/16 v11, 0x65

    if-eq v5, v11, :cond_d

    const/16 v11, 0x45

    if-ne v5, v11, :cond_18

    .line 848
    :cond_d
    array-length v11, v0

    if-lt v4, v11, :cond_e

    .line 849
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    const/4 v4, 0x0

    :cond_e
    add-int/lit8 v11, v4, 0x1

    .line 852
    aput-char v5, v0, v4

    .line 854
    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    const-string v12, "expected a digit for number exponent"

    if-ge v4, v5, :cond_f

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v13, v4, 0x1

    iput v13, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v4, v5, v4

    goto :goto_7

    :cond_f
    invoke-virtual {p0, v12}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->getNextChar(Ljava/lang/String;)C

    move-result v4

    :goto_7
    if-eq v4, v1, :cond_11

    const/16 v1, 0x2b

    if-ne v4, v1, :cond_10

    goto :goto_9

    :cond_10
    :goto_8
    const/4 v1, 0x0

    goto :goto_b

    .line 858
    :cond_11
    :goto_9
    array-length v1, v0

    if-lt v11, v1, :cond_12

    .line 859
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    const/4 v11, 0x0

    :cond_12
    add-int/lit8 v1, v11, 0x1

    .line 862
    aput-char v4, v0, v11

    .line 864
    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-ge v4, v5, :cond_13

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v11, v4, 0x1

    iput v11, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v4, v5, v4

    goto :goto_a

    :cond_13
    invoke-virtual {p0, v12}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->getNextChar(Ljava/lang/String;)C

    move-result v4

    :goto_a
    move v11, v1

    goto :goto_8

    :goto_b
    if-gt v4, v8, :cond_16

    if-lt v4, v6, :cond_16

    add-int/lit8 v1, v1, 0x1

    .line 871
    array-length v5, v0

    if-lt v11, v5, :cond_14

    .line 872
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    const/4 v11, 0x0

    :cond_14
    add-int/lit8 v5, v11, 0x1

    .line 875
    aput-char v4, v0, v11

    .line 876
    iget v11, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v12, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v11, v12, :cond_15

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v11

    if-nez v11, :cond_15

    move v2, v1

    const/4 v9, 0x1

    goto :goto_c

    .line 880
    :cond_15
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v11, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v4, v4, v11

    move v11, v5

    goto :goto_b

    :cond_16
    move v2, v1

    move v5, v11

    :goto_c
    if-nez v2, :cond_17

    const-string v0, "Exponent indicator not followed by a digit"

    .line 884
    invoke-virtual {p0, v4, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_17
    move v4, v5

    :cond_18
    if-nez v9, :cond_19

    .line 890
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 892
    :cond_19
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, v4}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 894
    invoke-virtual {p0, p1, v7, v10, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reset(ZIII)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected _closeInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_reader:Ljava/io/Reader;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_reader:Ljava/io/Reader;

    :cond_2
    return-void
.end method

.method protected _decodeBase64(Lcom/amazon/org/codehaus/jackson/Base64Variant;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1679
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_getByteArrayBuilder()Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;

    move-result-object v0

    .line 1686
    :cond_0
    :goto_0
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v1, v2, :cond_1

    .line 1687
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 1689
    :cond_1
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v1, v1, v2

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    .line 1691
    invoke-virtual {p1, v1}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v2

    const/16 v3, 0x22

    if-gez v2, :cond_3

    if-ne v1, v3, :cond_2

    .line 1694
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v2, 0x0

    .line 1696
    invoke-virtual {p0, p1, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_decodeBase64Escape(Lcom/amazon/org/codehaus/jackson/Base64Variant;CI)I

    move-result v2

    if-gez v2, :cond_3

    goto :goto_0

    .line 1705
    :cond_3
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v1, v4, :cond_4

    .line 1706
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 1708
    :cond_4
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v1, v1, v4

    .line 1709
    invoke-virtual {p1, v1}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v4

    if-gez v4, :cond_5

    const/4 v4, 0x1

    .line 1711
    invoke-virtual {p0, p1, v1, v4}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_decodeBase64Escape(Lcom/amazon/org/codehaus/jackson/Base64Variant;CI)I

    move-result v4

    :cond_5
    shl-int/lit8 v1, v2, 0x6

    or-int/2addr v1, v4

    .line 1716
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v2, v4, :cond_6

    .line 1717
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 1719
    :cond_6
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v2, v2, v4

    .line 1720
    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x2

    if-gez v4, :cond_b

    if-eq v4, v7, :cond_8

    if-ne v2, v3, :cond_7

    .line 1726
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->usesPadding()Z

    move-result v4

    if-nez v4, :cond_7

    shr-int/lit8 p1, v1, 0x4

    .line 1728
    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 1729
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 1731
    :cond_7
    invoke-virtual {p0, p1, v2, v6}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_decodeBase64Escape(Lcom/amazon/org/codehaus/jackson/Base64Variant;CI)I

    move-result v2

    move v4, v2

    :cond_8
    if-ne v4, v7, :cond_b

    .line 1735
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v2, v3, :cond_9

    .line 1736
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 1738
    :cond_9
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v2, v2, v3

    .line 1739
    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->usesPaddingChar(C)Z

    move-result v3

    if-eqz v3, :cond_a

    shr-int/lit8 v1, v1, 0x4

    .line 1744
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_0

    .line 1740
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected padding character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->getPaddingChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v5, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lcom/amazon/org/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_b
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    .line 1752
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v2, v4, :cond_c

    .line 1753
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->loadMoreGuaranteed()V

    .line 1755
    :cond_c
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v8, v4, 0x1

    iput v8, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v2, v2, v4

    .line 1756
    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v4

    if-gez v4, :cond_f

    if-eq v4, v7, :cond_e

    if-ne v2, v3, :cond_d

    .line 1760
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->usesPadding()Z

    move-result v3

    if-nez v3, :cond_d

    shr-int/lit8 p1, v1, 0x2

    .line 1762
    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V

    .line 1763
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 1765
    :cond_d
    invoke-virtual {p0, p1, v2, v5}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_decodeBase64Escape(Lcom/amazon/org/codehaus/jackson/Base64Variant;CI)I

    move-result v2

    move v4, v2

    :cond_e
    if-ne v4, v7, :cond_f

    shr-int/lit8 v1, v1, 0x2

    .line 1774
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_0

    :cond_f
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    .line 1781
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->appendThreeBytes(I)V

    goto/16 :goto_0
.end method

.method protected final _decodeEscaped()C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1576
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    const-string v2, " in character escape sequence"

    if-lt v0, v1, :cond_0

    .line 1577
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1578
    invoke-virtual {p0, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1581
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_a

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_a

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_a

    const/16 v1, 0x62

    if-eq v0, v1, :cond_9

    const/16 v1, 0x66

    if-eq v0, v1, :cond_8

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_7

    const/16 v1, 0x72

    if-eq v0, v1, :cond_6

    const/16 v1, 0x74

    if-eq v0, v1, :cond_5

    const/16 v1, 0x75

    if-eq v0, v1, :cond_1

    .line 1606
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_handleUnrecognizedCharacterEscape(C)C

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_4

    .line 1612
    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v3, v4, :cond_2

    .line 1613
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1614
    invoke-virtual {p0, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1617
    :cond_2
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v3, v3, v4

    .line 1618
    invoke-static {v3}, Lcom/amazon/org/codehaus/jackson/util/CharTypes;->charToHex(I)I

    move-result v4

    if-gez v4, :cond_3

    const-string v5, "expected a hex-digit for character escape sequence"

    .line 1620
    invoke-virtual {p0, v3, v5}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_3
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    int-to-char v0, v1

    return v0

    :cond_5
    const/16 v0, 0x9

    return v0

    :cond_6
    const/16 v0, 0xd

    return v0

    :cond_7
    const/16 v0, 0xa

    return v0

    :cond_8
    const/16 v0, 0xc

    return v0

    :cond_9
    const/16 v0, 0x8

    :cond_a
    return v0
.end method

.method protected _finishString()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1303
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1304
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-ge v0, v1, :cond_2

    .line 1307
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v2

    .line 1308
    array-length v3, v2

    .line 1311
    :cond_0
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v5, v4, v0

    if-ge v5, v3, :cond_1

    .line 1312
    aget v6, v2, v5

    if-eqz v6, :cond_1

    const/16 v1, 0x22

    if-ne v5, v1, :cond_2

    .line 1314
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int v3, v0, v2

    invoke-virtual {v1, v4, v2, v3}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    add-int/lit8 v0, v0, 0x1

    .line 1315
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_0

    .line 1328
    :cond_2
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int v4, v0, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->resetWithCopy([CII)V

    .line 1329
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1330
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_finishString2()V

    return-void
.end method

.method protected _finishString2()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1336
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v0

    .line 1337
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v1

    .line 1340
    :goto_0
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1341
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ": was expecting closing quote for a string value"

    .line 1342
    invoke-virtual {p0, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1345
    :cond_0
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v2, v2, v3

    const/16 v3, 0x5c

    if-gt v2, v3, :cond_3

    if-ne v2, v3, :cond_1

    .line 1353
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    move-result v2

    goto :goto_1

    :cond_1
    const/16 v3, 0x22

    if-gt v2, v3, :cond_3

    if-ne v2, v3, :cond_2

    .line 1371
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    return-void

    :cond_2
    const/16 v3, 0x20

    if-ge v2, v3, :cond_3

    const-string/jumbo v3, "string value"

    .line 1359
    invoke-virtual {p0, v2, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 1364
    :cond_3
    :goto_1
    array-length v3, v0

    if-lt v1, v3, :cond_4

    .line 1365
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    const/4 v1, 0x0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 1369
    aput-char v2, v0, v1

    move v1, v3

    goto :goto_0
.end method

.method protected final _getText2(Lcom/amazon/org/codehaus/jackson/JsonToken;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 212
    :cond_0
    sget-object v0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 222
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 220
    :cond_1
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 214
    :cond_2
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final _handleApostropheValue()Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1208
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v0

    .line 1209
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v1

    .line 1212
    :goto_0
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1213
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ": was expecting closing quote for a string value"

    .line 1214
    invoke-virtual {p0, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1217
    :cond_0
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v2, v2, v3

    const/16 v3, 0x5c

    if-gt v2, v3, :cond_3

    if-ne v2, v3, :cond_1

    .line 1225
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    move-result v2

    goto :goto_1

    :cond_1
    const/16 v3, 0x27

    if-gt v2, v3, :cond_3

    if-ne v2, v3, :cond_2

    .line 1243
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1244
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object v0

    :cond_2
    const/16 v3, 0x20

    if-ge v2, v3, :cond_3

    const-string/jumbo v3, "string value"

    .line 1231
    invoke-virtual {p0, v2, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 1236
    :cond_3
    :goto_1
    array-length v3, v0

    if-lt v1, v3, :cond_4

    .line 1237
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    const/4 v1, 0x0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 1241
    aput-char v2, v0, v1

    move v1, v3

    goto :goto_0
.end method

.method protected _handleInvalidNumberStart(IZ)Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/16 v0, 0x49

    if-ne p1, v0, :cond_8

    .line 941
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt p1, v0, :cond_0

    .line 942
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result p1

    if-nez p1, :cond_0

    .line 943
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOFInValue()V

    .line 946
    :cond_0
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char p1, p1, v0

    const/16 v0, 0x4e

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-string v5, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    const-string v6, "Non-standard token \'"

    const/4 v7, 0x3

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_1

    const-string v0, "-INF"

    goto :goto_0

    :cond_1
    const-string v0, "+INF"

    .line 949
    :goto_0
    invoke-virtual {p0, v0, v7}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Ljava/lang/String;I)V

    .line 950
    sget-object v7, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v7}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v1, v3

    .line 951
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->resetAsNaN(Ljava/lang/String;D)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1

    .line 953
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_8

    if-eqz p2, :cond_5

    const-string v0, "-Infinity"

    goto :goto_2

    :cond_5
    const-string v0, "+Infinity"

    .line 956
    :goto_2
    invoke-virtual {p0, v0, v7}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Ljava/lang/String;I)V

    .line 957
    sget-object v7, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v7}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    move-wide v1, v3

    .line 958
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->resetAsNaN(Ljava/lang/String;D)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1

    .line 960
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    :cond_8
    :goto_4
    const-string p2, "expected digit (0-9) to follow minus sign, for valid numeric value"

    .line 963
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final _handleUnexpectedValue(I)Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/16 v0, 0x27

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4e

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const-string v1, "NaN"

    .line 1184
    invoke-virtual {p0, v1, v0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Ljava/lang/String;I)V

    .line 1185
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 1186
    invoke-virtual {p0, v1, v2, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->resetAsNaN(Ljava/lang/String;D)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    .line 1188
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 1191
    :cond_2
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt p1, v0, :cond_3

    .line 1192
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1193
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOFInValue()V

    .line 1196
    :cond_3
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_handleInvalidNumberStart(IZ)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1

    .line 1179
    :cond_4
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1180
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_handleApostropheValue()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    .line 1198
    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final _handleUnusualFieldName(I)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/16 v0, 0x27

    if-ne p1, v0, :cond_0

    .line 1079
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_parseApostropheFieldName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1083
    :cond_0
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "was expecting double-quote to start field name"

    .line 1084
    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1086
    :cond_1
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/util/CharTypes;->getInputCodeLatin1JsNames()[I

    move-result-object v0

    .line 1087
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p1, v1, :cond_4

    .line 1093
    aget v4, v0, p1

    if-nez v4, :cond_3

    const/16 v4, 0x30

    if-lt p1, v4, :cond_2

    const/16 v4, 0x39

    if-le p1, v4, :cond_3

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    int-to-char v4, p1

    .line 1095
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    :goto_0
    if-nez v4, :cond_5

    const-string/jumbo v4, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    .line 1098
    invoke-virtual {p0, p1, v4}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1100
    :cond_5
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1102
    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-ge p1, v4, :cond_9

    .line 1106
    :cond_6
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v6, v5, p1

    if-ge v6, v1, :cond_7

    .line 1108
    aget v7, v0, v6

    if-eqz v7, :cond_8

    .line 1109
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int/2addr v0, v3

    .line 1110
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1111
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    sub-int/2addr p1, v0

    invoke-virtual {v1, v5, v0, p1, v2}, Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    int-to-char v5, v6

    .line 1113
    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1114
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int/2addr v0, v3

    .line 1115
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1116
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    sub-int/2addr p1, v0

    invoke-virtual {v1, v3, v0, p1, v2}, Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v6

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v4, :cond_6

    .line 1122
    :cond_9
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int/2addr v1, v3

    .line 1123
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1124
    invoke-direct {p0, v1, v2, v0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_parseUnusualFieldName2(II[I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final _matchToken(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1635
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1638
    :cond_0
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v1, v2, :cond_1

    .line 1639
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1640
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOFInValue()V

    .line 1643
    :cond_1
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v3, "\'null\', \'true\', \'false\' or NaN"

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    .line 1644
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    :cond_2
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 1650
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v1, v0, :cond_3

    .line 1651
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 1655
    :cond_3
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x30

    if-lt v0, v1, :cond_5

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 1660
    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1661
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected final _parseApostropheFieldName()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1131
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1133
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    const/16 v2, 0x27

    const/4 v3, 0x0

    if-ge v0, v1, :cond_3

    .line 1136
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v4

    .line 1137
    array-length v5, v4

    .line 1140
    :cond_0
    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v7, v6, v0

    if-ne v7, v2, :cond_1

    .line 1142
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v0, 0x1

    .line 1143
    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1144
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v6, v1, v0, v3}, Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-ge v7, v5, :cond_2

    .line 1146
    aget v6, v4, v7

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v7

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_0

    .line 1154
    :cond_3
    :goto_0
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1155
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1157
    invoke-direct {p0, v1, v3, v2}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_parseFieldName2(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final _parseFieldName(I)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    .line 977
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_handleUnusualFieldName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 983
    :cond_0
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    const/4 v1, 0x0

    .line 985
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-ge p1, v2, :cond_3

    .line 988
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v3

    .line 989
    array-length v4, v3

    .line 992
    :cond_1
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v6, v5, p1

    if-ge v6, v4, :cond_2

    .line 993
    aget v7, v3, v6

    if-eqz v7, :cond_2

    if-ne v6, v0, :cond_3

    .line 995
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, p1, 0x1

    .line 996
    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 997
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    sub-int/2addr p1, v0

    invoke-virtual {v2, v5, v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v6

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v2, :cond_1

    .line 1006
    :cond_3
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1007
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1008
    invoke-direct {p0, v2, v1, v0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_parseFieldName2(III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected _releaseBuffers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-super {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    .line 173
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 175
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    .line 176
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/amazon/org/codehaus/jackson/io/IOContext;->releaseTokenBuffer([C)V

    :cond_0
    return-void
.end method

.method protected _reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 1794
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1800
    :goto_0
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt p1, v0, :cond_0

    .line 1801
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 1805
    :cond_0
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char p1, p1, v0

    .line 1806
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1812
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

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-void

    .line 1809
    :cond_1
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1810
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected final _skipCR()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1435
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1436
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 1437
    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1440
    :cond_1
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    .line 1441
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    return-void
.end method

.method protected final _skipLF()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1446
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    .line 1447
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    return-void
.end method

.method protected _skipString()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1382
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 1384
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1385
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    .line 1386
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    :goto_0
    if-lt v0, v1, :cond_1

    .line 1390
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1391
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ": was expecting closing quote for a string value"

    .line 1392
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1394
    :cond_0
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1395
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    :cond_1
    add-int/lit8 v3, v0, 0x1

    .line 1397
    aget-char v0, v2, v0

    const/16 v4, 0x5c

    if-gt v0, v4, :cond_4

    if-ne v0, v4, :cond_2

    .line 1405
    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1406
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    .line 1407
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 1408
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    goto :goto_0

    :cond_2
    const/16 v4, 0x22

    if-gt v0, v4, :cond_4

    if-ne v0, v4, :cond_3

    .line 1411
    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    return-void

    :cond_3
    const/16 v4, 0x20

    if-ge v0, v4, :cond_4

    .line 1415
    iput v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    const-string/jumbo v4, "string value"

    .line 1416
    invoke-virtual {p0, v0, v4}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    invoke-super {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->close()V

    .line 629
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->release()V

    return-void
.end method

.method public getBinaryValue(Lcom/amazon/org/codehaus/jackson/Base64Variant;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_binaryValue:[B

    if-nez v0, :cond_1

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportError(Ljava/lang/String;)V

    .line 322
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_2

    .line 324
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_decodeBase64(Lcom/amazon/org/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_binaryValue:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 331
    iput-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    goto :goto_0

    :catch_0
    move-exception v0

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->_constructError(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/JsonParseException;

    move-result-object p1

    throw p1

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_binaryValue:[B

    if-nez v0, :cond_3

    .line 334
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_getByteArrayBuilder()Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;

    move-result-object v0

    .line 335
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_decodeBase64(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;Lcom/amazon/org/codehaus/jackson/Base64Variant;)V

    .line 336
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_binaryValue:[B

    .line 339
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_binaryValue:[B

    return-object p1
.end method

.method public getCodec()Lcom/amazon/org/codehaus/jackson/ObjectCodec;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_objectCodec:Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_reader:Ljava/io/Reader;

    return-object v0
.end method

.method protected getNextChar(Ljava/lang/String;)C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 136
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    aget-char p1, p1, v0

    return p1
.end method

.method public final getText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 197
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 198
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 200
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_finishString()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 204
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_getText2(Lcom/amazon/org/codehaus/jackson/JsonToken;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters()[C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_6

    .line 230
    sget-object v1, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 257
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v0

    return-object v0

    .line 247
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1

    .line 248
    iput-boolean v2, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 249
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_finishString()V

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    return-object v0

    .line 233
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    if-nez v0, :cond_5

    .line 234
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 236
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    if-nez v4, :cond_3

    .line 237
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v4, v3}, Lcom/amazon/org/codehaus/jackson/io/IOContext;->allocNameCopyBuffer(I)[C

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    goto :goto_0

    .line 238
    :cond_3
    array-length v4, v4

    if-ge v4, v3, :cond_4

    .line 239
    new-array v4, v3, [C

    iput-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 241
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    invoke-virtual {v0, v2, v3, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 242
    iput-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 268
    sget-object v2, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 283
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    return v0

    .line 273
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1

    .line 274
    iput-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 275
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_finishString()V

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->size()I

    move-result v0

    return v0

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method public getTextOffset()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 294
    sget-object v2, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 298
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1

    .line 299
    iput-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 300
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_finishString()V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method protected final loadMore()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    .line 114
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    .line 116
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_reader:Ljava/io/Reader;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 117
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-lez v0, :cond_0

    .line 119
    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 120
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    const/4 v0, 0x1

    return v0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_closeInput()V

    if-eqz v0, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reader returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return v1
.end method

.method public nextBooleanValue()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 599
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    .line 600
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 601
    iput-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 602
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 603
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 604
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 606
    :cond_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 607
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 609
    :cond_1
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 610
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v0, v1, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 611
    :cond_2
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 612
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v0, v1, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    :cond_3
    :goto_0
    return-object v2

    .line 616
    :cond_4
    sget-object v0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    return-object v2

    .line 620
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 618
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public nextIntValue(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 551
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    .line 552
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    const/4 v1, 0x0

    .line 553
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 554
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 555
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->getIntValue()I

    move-result p1

    return p1

    .line 558
    :cond_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 559
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 560
    :cond_1
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 561
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    :cond_2
    :goto_0
    return p1

    .line 566
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->getIntValue()I

    move-result p1

    :cond_4
    return p1
.end method

.method public nextLongValue(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 575
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    .line 576
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    const/4 v1, 0x0

    .line 577
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 578
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 579
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->getLongValue()J

    move-result-wide p1

    return-wide p1

    .line 582
    :cond_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 583
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 584
    :cond_1
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 585
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    :cond_2
    :goto_0
    return-wide p1

    .line 590
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->getLongValue()J

    move-result-wide p1

    :cond_4
    return-wide p1
.end method

.method public nextTextValue()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 523
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    .line 524
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 525
    iput-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 526
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 527
    sget-object v3, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v1, v3, :cond_1

    .line 528
    iget-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_0

    .line 529
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 530
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_finishString()V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 534
    :cond_1
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v1, v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v0, v1, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0

    .line 536
    :cond_2
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v1, v0, :cond_3

    .line 537
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v0, v1, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    :cond_3
    :goto_0
    return-object v2

    .line 542
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->getText()Ljava/lang/String;

    move-result-object v2

    :cond_5
    return-object v2
.end method

.method public nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 356
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 362
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_nextAfterName()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0

    .line 365
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_skipString()V

    .line 368
    :cond_1
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_skipWSOrEnd()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 373
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->close()V

    .line 374
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object v1

    .line 380
    :cond_2
    iget-wide v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    int-to-long v5, v4

    add-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputTotal:J

    .line 381
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    iput v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    .line 382
    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    sub-int/2addr v4, v2

    const/4 v2, 0x1

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    .line 385
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_binaryValue:[B

    const/16 v1, 0x7d

    const/16 v3, 0x5d

    if-ne v0, v3, :cond_4

    .line 389
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->inArray()Z

    move-result v2

    if-nez v2, :cond_3

    .line 390
    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_reportMismatchedEndMarker(IC)V

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    .line 393
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object v0

    :cond_4
    if-ne v0, v1, :cond_6

    .line 396
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result v1

    if-nez v1, :cond_5

    .line 397
    invoke-virtual {p0, v0, v3}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_reportMismatchedEndMarker(IC)V

    .line 399
    :cond_5
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    .line 400
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object v0

    .line 404
    :cond_6
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->expectComma()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x2c

    if-eq v0, v4, :cond_7

    .line 406
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "was expecting comma to separate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v5}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " entries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 408
    :cond_7
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_skipWS()I

    move-result v0

    .line 415
    :cond_8
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 418
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_parseFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v5, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 420
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 421
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_skipWS()I

    move-result v0

    const/16 v5, 0x3a

    if-eq v0, v5, :cond_9

    const-string/jumbo v5, "was expecting a colon to separate field name and value"

    .line 423
    invoke-virtual {p0, v0, v5}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 425
    :cond_9
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_skipWS()I

    move-result v0

    :cond_a
    const/16 v5, 0x22

    if-eq v0, v5, :cond_14

    const/16 v5, 0x2d

    if-eq v0, v5, :cond_13

    const/16 v5, 0x5b

    if-eq v0, v5, :cond_11

    if-eq v0, v3, :cond_f

    const/16 v3, 0x66

    if-eq v0, v3, :cond_e

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_d

    const/16 v3, 0x74

    if-eq v0, v3, :cond_10

    const/16 v3, 0x7b

    if-eq v0, v3, :cond_b

    if-eq v0, v1, :cond_f

    packed-switch v0, :pswitch_data_0

    .line 485
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_handleUnexpectedValue(I)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_b
    if-nez v4, :cond_c

    .line 445
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    .line 447
    :cond_c
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_0

    :cond_d
    const-string v0, "null"

    .line 463
    invoke-virtual {p0, v0, v2}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Ljava/lang/String;I)V

    .line 464
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_0

    :cond_e
    const-string v0, "false"

    .line 459
    invoke-virtual {p0, v0, v2}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Ljava/lang/String;I)V

    .line 460
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_0

    :cond_f
    const-string v1, "expected a value"

    .line 453
    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_10
    const-string/jumbo v0, "true"

    .line 455
    invoke-virtual {p0, v0, v2}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Ljava/lang/String;I)V

    .line 456
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_0

    :cond_11
    if-nez v4, :cond_12

    .line 439
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/amazon/org/codehaus/jackson/impl/JsonReadContext;

    .line 441
    :cond_12
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 482
    :cond_13
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->parseNumberText(I)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 434
    :cond_14
    iput-boolean v2, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 435
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    :goto_0
    if-eqz v4, :cond_15

    .line 490
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_nextToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 491
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object v0

    .line 493
    :cond_15
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonParser;->_currToken:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final parseNumberText(I)Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/16 v0, 0x2d

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 663
    :goto_0
    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    add-int/lit8 v5, v4, -0x1

    .line 665
    iget v6, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    const/16 v7, 0x39

    const/16 v8, 0x30

    if-eqz v3, :cond_4

    if-lt v4, v6, :cond_1

    goto/16 :goto_b

    .line 673
    :cond_1
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v9, v4, 0x1

    aget-char p1, p1, v4

    if-gt p1, v7, :cond_3

    if-ge p1, v8, :cond_2

    goto :goto_1

    :cond_2
    move v4, v9

    goto :goto_2

    .line 676
    :cond_3
    :goto_1
    iput v9, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 677
    invoke-virtual {p0, p1, v2}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_handleInvalidNumberStart(IZ)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    if-ne p1, v8, :cond_5

    goto/16 :goto_b

    .line 701
    :cond_5
    :goto_3
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    if-lt v4, p1, :cond_6

    goto/16 :goto_b

    .line 704
    :cond_6
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v9, v4, 0x1

    aget-char p1, p1, v4

    if-lt p1, v8, :cond_8

    if-le p1, v7, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    move v4, v9

    goto :goto_3

    :cond_8
    :goto_4
    const/16 v4, 0x2e

    if-ne p1, v4, :cond_d

    const/4 p1, 0x0

    :goto_5
    if-lt v9, v6, :cond_9

    goto :goto_b

    .line 720
    :cond_9
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v10, v9, 0x1

    aget-char v4, v4, v9

    if-lt v4, v8, :cond_b

    if-le v4, v7, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 p1, p1, 0x1

    move v9, v10

    goto :goto_5

    :cond_b
    :goto_6
    if-nez p1, :cond_c

    const-string v9, "Decimal point not followed by a digit"

    .line 728
    invoke-virtual {p0, v4, v9}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_c
    move v9, v10

    move v11, v4

    move v4, p1

    move p1, v11

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    :goto_7
    const/16 v10, 0x65

    if-eq p1, v10, :cond_e

    const/16 v10, 0x45

    if-ne p1, v10, :cond_16

    :cond_e
    if-lt v9, v6, :cond_f

    goto :goto_b

    .line 738
    :cond_f
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v10, v9, 0x1

    aget-char p1, p1, v9

    if-eq p1, v0, :cond_11

    const/16 v0, 0x2b

    if-ne p1, v0, :cond_10

    goto :goto_8

    :cond_10
    move v9, v10

    goto :goto_a

    :cond_11
    :goto_8
    if-lt v10, v6, :cond_12

    goto :goto_b

    .line 743
    :cond_12
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v0, v10, 0x1

    aget-char p1, p1, v10

    :goto_9
    move v9, v0

    :goto_a
    if-gt p1, v7, :cond_15

    if-lt p1, v8, :cond_15

    add-int/lit8 v1, v1, 0x1

    if-lt v9, v6, :cond_14

    :goto_b
    if-eqz v3, :cond_13

    add-int/lit8 v5, v5, 0x1

    .line 766
    :cond_13
    iput v5, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 767
    invoke-direct {p0, v3}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->parseNumberText2(Z)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1

    .line 750
    :cond_14
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    add-int/lit8 v0, v9, 0x1

    aget-char p1, p1, v9

    goto :goto_9

    :cond_15
    if-nez v1, :cond_16

    const-string v0, "Exponent indicator not followed by a digit"

    .line 754
    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_16
    add-int/lit8 v9, v9, -0x1

    .line 760
    iput v9, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int/2addr v9, v5

    .line 762
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    invoke-virtual {p1, v0, v5, v9}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 763
    invoke-virtual {p0, v3, v2, v4, v1}, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->reset(ZIII)Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method public releaseBuffered(Ljava/io/Writer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/Writer;->write([CII)V

    return v0
.end method

.method public setCodec(Lcom/amazon/org/codehaus/jackson/ObjectCodec;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;->_objectCodec:Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    return-void
.end method
