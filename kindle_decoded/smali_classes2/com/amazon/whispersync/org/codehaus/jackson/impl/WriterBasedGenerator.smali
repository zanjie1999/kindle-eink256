.class public final Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;
.super Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;
.source "WriterBasedGenerator.java"


# static fields
.field protected static final HEX_CHARS:[C

.field protected static final SHORT_WRITE:I = 0x20

.field protected static final sOutputEscapes:[I


# instance fields
.field protected _characterEscapes:Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;

.field protected _currentEscape:Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;

.field protected _entityBuffer:[C

.field protected final _ioContext:Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;

.field protected _maximumNonEscapedChar:I

.field protected _outputBuffer:[C

.field protected _outputEnd:I

.field protected _outputEscapes:[I

.field protected _outputHead:I

.field protected _outputTail:I

.field protected final _writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/util/CharTypes;->copyHexChars()[C

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    .line 26
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/util/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->sOutputEscapes:[I

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;ILcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;Ljava/io/Writer;)V
    .locals 0

    .line 124
    invoke-direct {p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;-><init>(ILcom/amazon/whispersync/org/codehaus/jackson/ObjectCodec;)V

    .line 50
    sget-object p2, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->sOutputEscapes:[I

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    const/4 p2, 0x0

    .line 95
    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 101
    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 125
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_ioContext:Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;

    .line 126
    iput-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    .line 127
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;->allocConcatBuffer()[C

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 128
    array-length p1, p1

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    .line 130
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x7f

    .line 131
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->setHighestNonEscapedChar(I)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    :cond_0
    return-void
.end method

.method private _allocateEntityBuffer()[C
    .locals 5

    const/16 v0, 0xe

    new-array v0, v0, [C

    const/16 v1, 0x5c

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/4 v2, 0x2

    aput-char v1, v0, v2

    const/16 v2, 0x75

    const/4 v3, 0x3

    aput-char v2, v0, v3

    const/16 v3, 0x30

    const/4 v4, 0x4

    aput-char v3, v0, v4

    const/4 v4, 0x5

    aput-char v3, v0, v4

    const/16 v3, 0x8

    aput-char v1, v0, v3

    const/16 v1, 0x9

    aput-char v2, v0, v1

    .line 1802
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_entityBuffer:[C

    return-object v0
.end method

.method private final _appendCharacterEscape(CI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v0, 0x5c

    if-ltz p2, :cond_1

    .line 1740
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 p1, p1, 0x2

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le p1, v1, :cond_0

    .line 1741
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1743
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v0, p1, v1

    add-int/lit8 v0, v2, 0x1

    .line 1744
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    int-to-char p2, p2

    aput-char p2, p1, v2

    return-void

    :cond_1
    const/4 v1, -0x2

    if-eq p2, v1, :cond_4

    .line 1748
    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 p2, p2, 0x2

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le p2, v1, :cond_2

    .line 1749
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1751
    :cond_2
    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1752
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    add-int/lit8 v2, p2, 0x1

    .line 1753
    aput-char v0, v1, p2

    add-int/lit8 p2, v2, 0x1

    const/16 v0, 0x75

    .line 1754
    aput-char v0, v1, v2

    const/16 v0, 0xff

    if-le p1, v0, :cond_3

    shr-int/lit8 v2, p1, 0x8

    and-int/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    .line 1758
    sget-object v3, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v4, v0, 0x4

    aget-char v4, v3, v4

    aput-char v4, v1, p2

    add-int/lit8 p2, v2, 0x1

    and-int/lit8 v0, v0, 0xf

    .line 1759
    aget-char v0, v3, v0

    aput-char v0, v1, v2

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x30

    .line 1762
    aput-char v2, v1, p2

    add-int/lit8 p2, v0, 0x1

    .line 1763
    aput-char v2, v1, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 1765
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v3, p1, 0x4

    aget-char v3, v2, v3

    aput-char v3, v1, p2

    and-int/lit8 p1, p1, 0xf

    .line 1766
    aget-char p1, v2, p1

    aput-char p1, v1, v0

    .line 1767
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    return-void

    .line 1771
    :cond_4
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;

    if-nez p2, :cond_5

    .line 1772
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1774
    :cond_5
    invoke-interface {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 1775
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;

    .line 1777
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    .line 1778
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v0, v1, :cond_6

    .line 1779
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1780
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le p2, v0, :cond_6

    .line 1781
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 1785
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v0, p2, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1786
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    return-void
.end method

.method private final _prependOrWriteCharacterEscape([CIICI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v0, 0x5c

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ltz p5, :cond_2

    const/4 p4, 0x1

    if-le p2, p4, :cond_0

    if-ge p2, p3, :cond_0

    add-int/lit8 p2, p2, -0x2

    .line 1662
    aput-char v0, p1, p2

    add-int/lit8 p3, p2, 0x1

    int-to-char p4, p5

    .line 1663
    aput-char p4, p1, p3

    goto :goto_0

    .line 1665
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_entityBuffer:[C

    if-nez p1, :cond_1

    .line 1667
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_allocateEntityBuffer()[C

    move-result-object p1

    :cond_1
    int-to-char p3, p5

    .line 1669
    aput-char p3, p1, p4

    .line 1670
    iget-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {p3, p1, v2, v1}, Ljava/io/Writer;->write([CII)V

    :goto_0
    return p2

    :cond_2
    const/4 v3, -0x2

    if-eq p5, v3, :cond_7

    const/4 p5, 0x5

    const/16 v2, 0xff

    if-le p2, p5, :cond_4

    if-ge p2, p3, :cond_4

    add-int/lit8 p2, p2, -0x6

    add-int/lit8 p3, p2, 0x1

    .line 1677
    aput-char v0, p1, p2

    add-int/lit8 p2, p3, 0x1

    const/16 p5, 0x75

    .line 1678
    aput-char p5, p1, p3

    if-le p4, v2, :cond_3

    shr-int/lit8 p3, p4, 0x8

    and-int/2addr p3, v2

    add-int/lit8 p5, p2, 0x1

    .line 1682
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v1, p3, 0x4

    aget-char v1, v0, v1

    aput-char v1, p1, p2

    add-int/lit8 p2, p5, 0x1

    and-int/lit8 p3, p3, 0xf

    .line 1683
    aget-char p3, v0, p3

    aput-char p3, p1, p5

    and-int/lit16 p3, p4, 0xff

    int-to-char p4, p3

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p2, 0x1

    const/16 p5, 0x30

    .line 1686
    aput-char p5, p1, p2

    add-int/lit8 p2, p3, 0x1

    .line 1687
    aput-char p5, p1, p3

    :goto_1
    add-int/lit8 p3, p2, 0x1

    .line 1689
    sget-object p5, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v0, p4, 0x4

    aget-char v0, p5, v0

    aput-char v0, p1, p2

    and-int/lit8 p2, p4, 0xf

    .line 1690
    aget-char p2, p5, p2

    aput-char p2, p1, p3

    add-int/lit8 p2, p3, -0x5

    goto :goto_2

    .line 1694
    :cond_4
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_entityBuffer:[C

    if-nez p1, :cond_5

    .line 1696
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_allocateEntityBuffer()[C

    move-result-object p1

    .line 1698
    :cond_5
    iget p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iput p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    const/4 p3, 0x6

    if-le p4, v2, :cond_6

    shr-int/lit8 p5, p4, 0x8

    and-int/2addr p5, v2

    and-int/2addr p4, v2

    const/16 v0, 0xa

    .line 1702
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v2, p5, 0x4

    aget-char v2, v1, v2

    aput-char v2, p1, v0

    const/16 v0, 0xb

    and-int/lit8 p5, p5, 0xf

    .line 1703
    aget-char p5, v1, p5

    aput-char p5, p1, v0

    const/16 p5, 0xc

    shr-int/lit8 v0, p4, 0x4

    .line 1704
    aget-char v0, v1, v0

    aput-char v0, p1, p5

    const/16 p5, 0xd

    and-int/lit8 p4, p4, 0xf

    .line 1705
    aget-char p4, v1, p4

    aput-char p4, p1, p5

    .line 1706
    iget-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    const/16 p5, 0x8

    invoke-virtual {p4, p1, p5, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_2

    .line 1708
    :cond_6
    sget-object p5, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v0, p4, 0x4

    aget-char v0, p5, v0

    aput-char v0, p1, p3

    const/4 v0, 0x7

    and-int/lit8 p4, p4, 0xf

    .line 1709
    aget-char p4, p5, p4

    aput-char p4, p1, v0

    .line 1710
    iget-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {p4, p1, v1, p3}, Ljava/io/Writer;->write([CII)V

    :goto_2
    return p2

    .line 1716
    :cond_7
    iget-object p5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;

    if-nez p5, :cond_8

    .line 1717
    iget-object p5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;

    invoke-virtual {p5, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;

    move-result-object p4

    invoke-interface {p4}, Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    .line 1719
    :cond_8
    invoke-interface {p5}, Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    .line 1720
    iput-object p5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;

    .line 1722
    :goto_3
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    if-lt p2, p5, :cond_9

    if-ge p2, p3, :cond_9

    sub-int/2addr p2, p5

    .line 1725
    invoke-virtual {p4, v2, p5, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_4

    .line 1727
    :cond_9
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {p1, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_4
    return p2
.end method

.method private final _prependOrWriteCharacterEscape(CI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x5c

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ltz p2, :cond_2

    .line 1569
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt p1, v2, :cond_0

    sub-int/2addr p1, v2

    .line 1571
    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1572
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    add-int/lit8 v2, p1, 0x1

    aput-char v1, v0, p1

    int-to-char p1, p2

    .line 1573
    aput-char p1, v0, v2

    return-void

    .line 1577
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_entityBuffer:[C

    if-nez p1, :cond_1

    .line 1579
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_allocateEntityBuffer()[C

    move-result-object p1

    .line 1581
    :cond_1
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    int-to-char p2, p2

    .line 1582
    aput-char p2, p1, v3

    .line 1583
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {p2, p1, v0, v2}, Ljava/io/Writer;->write([CII)V

    return-void

    :cond_2
    const/4 v4, -0x2

    if-eq p2, v4, :cond_7

    .line 1587
    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/4 v0, 0x6

    const/16 v4, 0xff

    if-lt p2, v0, :cond_4

    .line 1588
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    sub-int/2addr p2, v0

    .line 1590
    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1591
    aput-char v1, v2, p2

    add-int/2addr p2, v3

    const/16 v0, 0x75

    .line 1592
    aput-char v0, v2, p2

    if-le p1, v4, :cond_3

    shr-int/lit8 v0, p1, 0x8

    and-int/2addr v0, v4

    add-int/2addr p2, v3

    .line 1596
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v4, v0, 0x4

    aget-char v4, v1, v4

    aput-char v4, v2, p2

    add-int/2addr p2, v3

    and-int/lit8 v0, v0, 0xf

    .line 1597
    aget-char v0, v1, v0

    aput-char v0, v2, p2

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    goto :goto_0

    :cond_3
    add-int/2addr p2, v3

    const/16 v0, 0x30

    .line 1600
    aput-char v0, v2, p2

    add-int/2addr p2, v3

    .line 1601
    aput-char v0, v2, p2

    :goto_0
    add-int/2addr p2, v3

    .line 1603
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v1, p1, 0x4

    aget-char v1, v0, v1

    aput-char v1, v2, p2

    add-int/2addr p2, v3

    and-int/lit8 p1, p1, 0xf

    .line 1604
    aget-char p1, v0, p1

    aput-char p1, v2, p2

    return-void

    .line 1608
    :cond_4
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_entityBuffer:[C

    if-nez p2, :cond_5

    .line 1610
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_allocateEntityBuffer()[C

    move-result-object p2

    .line 1612
    :cond_5
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    if-le p1, v4, :cond_6

    shr-int/lit8 v1, p1, 0x8

    and-int/2addr v1, v4

    and-int/2addr p1, v4

    const/16 v2, 0xa

    .line 1616
    sget-object v3, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v4, v1, 0x4

    aget-char v4, v3, v4

    aput-char v4, p2, v2

    const/16 v2, 0xb

    and-int/lit8 v1, v1, 0xf

    .line 1617
    aget-char v1, v3, v1

    aput-char v1, p2, v2

    const/16 v1, 0xc

    shr-int/lit8 v2, p1, 0x4

    .line 1618
    aget-char v2, v3, v2

    aput-char v2, p2, v1

    const/16 v1, 0xd

    and-int/lit8 p1, p1, 0xf

    .line 1619
    aget-char p1, v3, p1

    aput-char p1, p2, v1

    .line 1620
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    const/16 v1, 0x8

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/Writer;->write([CII)V

    goto :goto_1

    .line 1622
    :cond_6
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v3, p1, 0x4

    aget-char v3, v1, v3

    aput-char v3, p2, v0

    const/4 v3, 0x7

    and-int/lit8 p1, p1, 0xf

    .line 1623
    aget-char p1, v1, p1

    aput-char p1, p2, v3

    .line 1624
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {p1, p2, v2, v0}, Ljava/io/Writer;->write([CII)V

    :goto_1
    return-void

    .line 1630
    :cond_7
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;

    if-nez p2, :cond_8

    .line 1631
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1633
    :cond_8
    invoke-interface {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 1634
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;

    .line 1636
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    .line 1637
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt v1, p2, :cond_9

    sub-int/2addr v1, p2

    .line 1639
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1640
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {p1, v0, p2, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    return-void

    .line 1644
    :cond_9
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1645
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private _writeLongString(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1046
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1049
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1052
    :goto_0
    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    add-int v4, v2, v3

    if-le v4, v0, :cond_0

    sub-int v3, v0, v2

    :cond_0
    add-int v4, v2, v3

    .line 1055
    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {p1, v2, v4, v5, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1056
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;

    if-eqz v2, :cond_1

    .line 1057
    invoke-direct {p0, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeSegmentCustom(I)V

    goto :goto_1

    .line 1058
    :cond_1
    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    if-eqz v2, :cond_2

    .line 1059
    invoke-direct {p0, v3, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeSegmentASCII(II)V

    goto :goto_1

    .line 1061
    :cond_2
    invoke-direct {p0, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeSegment(I)V

    :goto_1
    if-lt v4, v0, :cond_3

    return-void

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method private final _writeNull()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1542
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1543
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1545
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1546
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    const/16 v2, 0x6e

    .line 1547
    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    .line 1548
    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x6c

    .line 1549
    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1550
    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1551
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    return-void
.end method

.method private final _writeQuotedInt(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 669
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v3, 0x22

    aput-char v3, v0, v1

    .line 673
    invoke-static {p1, v0, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/io/NumberOutput;->outputInt(I[CI)I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 674
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, p1

    return-void
.end method

.method private final _writeQuotedLong(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v3, 0x22

    aput-char v3, v0, v1

    .line 698
    invoke-static {p1, p2, v0, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/io/NumberOutput;->outputLong(J[CI)I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 699
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, p2, p1

    return-void
.end method

.method private final _writeQuotedRaw(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 780
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 781
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 784
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    .line 785
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt p1, v0, :cond_1

    .line 786
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 788
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v2, p1, v0

    return-void
.end method

.method private final _writeSegment(I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1079
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1080
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    .line 1090
    :cond_0
    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    aget-char v9, v4, v2

    if-ge v9, v1, :cond_1

    .line 1091
    aget v4, v0, v9

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_0

    :goto_1
    sub-int v4, v2, v3

    if-lez v4, :cond_2

    .line 1105
    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v5, v6, v3, v4}, Ljava/io/Writer;->write([CII)V

    if-lt v2, p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1112
    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    aget v10, v0, v9

    move-object v5, p0

    move v7, v2

    move v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_prependOrWriteCharacterEscape([CIICI)I

    move-result v3

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private final _writeSegmentASCII(II)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1229
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1230
    array-length v1, v0

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, p1, :cond_4

    .line 1241
    :cond_0
    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    aget-char v10, v5, v2

    if-ge v10, v1, :cond_1

    .line 1243
    aget v4, v0, v10

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_1
    if-le v10, p2, :cond_2

    const/4 v4, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_0

    :goto_1
    sub-int v5, v2, v3

    if-lez v5, :cond_3

    .line 1257
    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v6, v7, v3, v5}, Ljava/io/Writer;->write([CII)V

    if-lt v2, p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 1263
    iget-object v7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    move-object v6, p0

    move v8, v2

    move v9, p1

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_prependOrWriteCharacterEscape([CIICI)I

    move-result v3

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private final _writeSegmentCustom(I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1381
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1382
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const v1, 0xffff

    .line 1383
    :cond_0
    array-length v2, v0

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1384
    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, p1, :cond_6

    .line 1395
    :cond_1
    iget-object v7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    aget-char v12, v7, v4

    if-ge v12, v2, :cond_2

    .line 1397
    aget v6, v0, v12

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_2
    if-le v12, v1, :cond_3

    const/4 v6, -0x1

    goto :goto_1

    .line 1405
    :cond_3
    invoke-virtual {v3, v12}, Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;

    move-result-object v7

    iput-object v7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;

    if-eqz v7, :cond_4

    const/4 v6, -0x2

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    if-lt v4, p1, :cond_1

    :goto_1
    sub-int v7, v4, v5

    if-lez v7, :cond_5

    .line 1416
    iget-object v8, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v9, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v8, v9, v5, v7}, Ljava/io/Writer;->write([CII)V

    if-lt v4, p1, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 1422
    iget-object v9, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    move-object v8, p0

    move v10, v4

    move v11, p1

    move v13, v6

    invoke-direct/range {v8 .. v13}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_prependOrWriteCharacterEscape([CIICI)I

    move-result v5

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method private _writeString(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 978
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 979
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v0, v1, :cond_0

    .line 980
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeLongString(Ljava/lang/String;)V

    return-void

    .line 986
    :cond_0
    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v2, v0

    if-le v2, v1, :cond_1

    .line 987
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_1
    const/4 v1, 0x0

    .line 989
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 991
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;

    if-eqz p1, :cond_2

    .line 992
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeStringCustom(I)V

    goto :goto_0

    .line 993
    :cond_2
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    if-eqz p1, :cond_3

    .line 994
    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeStringASCII(II)V

    goto :goto_0

    .line 996
    :cond_3
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString2(I)V

    :goto_0
    return-void
.end method

.method private final _writeString([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1123
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;

    if-eqz v0, :cond_0

    .line 1124
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeStringCustom([CII)V

    return-void

    .line 1127
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    if-eqz v0, :cond_1

    .line 1128
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeStringASCII([CIII)V

    return-void

    :cond_1
    add-int/2addr p3, p2

    .line 1137
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1138
    array-length v1, v0

    :goto_0
    if-ge p2, p3, :cond_8

    move v2, p2

    .line 1143
    :cond_2
    aget-char v3, p1, v2

    if-ge v3, v1, :cond_3

    .line 1144
    aget v3, v0, v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p3, :cond_2

    :goto_1
    sub-int v3, v2, p2

    const/16 v4, 0x20

    if-ge v3, v4, :cond_5

    .line 1156
    iget v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v4, v5, :cond_4

    .line 1157
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_4
    if-lez v3, :cond_6

    .line 1160
    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, p2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1161
    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_2

    .line 1164
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1165
    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v4, p1, p2, v3}, Ljava/io/Writer;->write([CII)V

    :cond_6
    :goto_2
    if-lt v2, p3, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 p2, v2, 0x1

    .line 1172
    aget-char v2, p1, v2

    .line 1173
    aget v3, v0, v2

    invoke-direct {p0, v2, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_appendCharacterEscape(CI)V

    goto :goto_0

    :cond_8
    :goto_3
    return-void
.end method

.method private _writeString2(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1004
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v0, p1

    .line 1005
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1006
    array-length v1, p1

    .line 1009
    :goto_0
    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-ge v2, v0, :cond_3

    .line 1013
    :cond_0
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aget-char v4, v2, v3

    if-ge v4, v1, :cond_2

    .line 1014
    aget v4, p1, v4

    if-eqz v4, :cond_2

    .line 1026
    iget v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_1

    .line 1028
    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v5, v2, v4, v3}, Ljava/io/Writer;->write([CII)V

    .line 1033
    :cond_1
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aget-char v2, v2, v3

    .line 1034
    aget v3, p1, v2

    invoke-direct {p0, v2, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_prependOrWriteCharacterEscape(CI)V

    goto :goto_0

    .line 1017
    :cond_2
    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt v2, v0, :cond_0

    :cond_3
    return-void
.end method

.method private _writeStringASCII(II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1192
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v0, p1

    .line 1193
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1194
    array-length v1, p1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1198
    :goto_0
    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-ge v2, v0, :cond_4

    .line 1203
    :cond_0
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aget-char v2, v2, v3

    if-ge v2, v1, :cond_1

    .line 1205
    aget v3, p1, v2

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_1
    if-le v2, p2, :cond_3

    const/4 v3, -0x1

    .line 1217
    :goto_1
    iget v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_2

    .line 1219
    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v6, v7, v5, v4}, Ljava/io/Writer;->write([CII)V

    .line 1221
    :cond_2
    iget v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1222
    invoke-direct {p0, v2, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_prependOrWriteCharacterEscape(CI)V

    goto :goto_0

    .line 1213
    :cond_3
    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt v2, v0, :cond_0

    :cond_4
    return-void
.end method

.method private final _writeStringASCII([CIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    add-int/2addr p3, p2

    .line 1272
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1273
    array-length v1, v0

    add-int/lit8 v2, p4, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge p2, p3, :cond_7

    move v3, p2

    .line 1282
    :cond_0
    aget-char v4, p1, v3

    if-ge v4, v1, :cond_1

    .line 1284
    aget v2, v0, v4

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_1
    if-le v4, p4, :cond_2

    const/4 v2, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    if-lt v3, p3, :cond_0

    :goto_1
    sub-int v5, v3, p2

    const/16 v6, 0x20

    if-ge v5, v6, :cond_4

    .line 1301
    iget v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v6, v7, :cond_3

    .line 1302
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_3
    if-lez v5, :cond_5

    .line 1305
    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, p2, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1306
    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr p2, v5

    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_2

    .line 1309
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1310
    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, p1, p2, v5}, Ljava/io/Writer;->write([CII)V

    :cond_5
    :goto_2
    if-lt v3, p3, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 p2, v3, 0x1

    .line 1318
    invoke-direct {p0, v4, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_appendCharacterEscape(CI)V

    goto :goto_0

    :cond_7
    :goto_3
    return-void
.end method

.method private _writeStringCustom(I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 1337
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v0, p1

    .line 1338
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1339
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const v1, 0xffff

    .line 1340
    :cond_0
    array-length v3, p1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1342
    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;

    .line 1345
    :goto_0
    iget v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-ge v5, v0, :cond_6

    .line 1350
    :cond_1
    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aget-char v5, v5, v6

    if-ge v5, v3, :cond_2

    .line 1352
    aget v6, p1, v5

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_2
    if-le v5, v1, :cond_3

    const/4 v6, -0x1

    goto :goto_1

    .line 1360
    :cond_3
    invoke-virtual {v4, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;

    move-result-object v6

    iput-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;

    if-eqz v6, :cond_5

    const/4 v6, -0x2

    .line 1369
    :goto_1
    iget v7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v8, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    sub-int/2addr v7, v8

    if-lez v7, :cond_4

    .line 1371
    iget-object v9, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v10, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v9, v10, v8, v7}, Ljava/io/Writer;->write([CII)V

    .line 1373
    :cond_4
    iget v7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1374
    invoke-direct {p0, v5, v6}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_prependOrWriteCharacterEscape(CI)V

    goto :goto_0

    .line 1365
    :cond_5
    iget v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt v5, v0, :cond_1

    :cond_6
    return-void
.end method

.method private final _writeStringCustom([CII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    add-int/2addr p3, p2

    .line 1430
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1431
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const v1, 0xffff

    .line 1432
    :cond_0
    array-length v2, v0

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1433
    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;

    const/4 v4, 0x0

    :goto_0
    if-ge p2, p3, :cond_9

    move v5, p2

    .line 1442
    :cond_1
    aget-char v6, p1, v5

    if-ge v6, v2, :cond_2

    .line 1444
    aget v4, v0, v6

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_2
    if-le v6, v1, :cond_3

    const/4 v4, -0x1

    goto :goto_1

    .line 1452
    :cond_3
    invoke-virtual {v3, v6}, Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;

    move-result-object v7

    iput-object v7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;

    if-eqz v7, :cond_4

    const/4 v4, -0x2

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    if-lt v5, p3, :cond_1

    :goto_1
    sub-int v7, v5, p2

    const/16 v8, 0x20

    if-ge v7, v8, :cond_6

    .line 1466
    iget v8, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v8, v7

    iget v9, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v8, v9, :cond_5

    .line 1467
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_5
    if-lez v7, :cond_7

    .line 1470
    iget-object v8, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v9, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, p2, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1471
    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr p2, v7

    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_2

    .line 1474
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1475
    iget-object v8, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v8, p1, p2, v7}, Ljava/io/Writer;->write([CII)V

    :cond_7
    :goto_2
    if-lt v5, p3, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 p2, v5, 0x1

    .line 1483
    invoke-direct {p0, v6, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_appendCharacterEscape(CI)V

    goto :goto_0

    :cond_9
    :goto_3
    return-void
.end method

.method private writeRawLong(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 599
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int/2addr v0, v1

    .line 601
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 602
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 603
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 605
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    .line 607
    :goto_0
    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v1, v2, :cond_0

    add-int v4, v0, v2

    .line 609
    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {p1, v0, v4, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 610
    iput v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 611
    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 612
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    sub-int/2addr v1, v2

    move v0, v4

    goto :goto_0

    :cond_0
    add-int v2, v0, v1

    .line 617
    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {p1, v0, v2, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 618
    iput v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 619
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    return-void
.end method


# virtual methods
.method protected final _flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1808
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v2, 0x0

    .line 1811
    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1812
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    :cond_0
    return-void
.end method

.method protected _releaseBuffers()V
    .locals 2

    .line 957
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 959
    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 960
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_ioContext:Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;->releaseConcatBuffer([C)V

    :cond_0
    return-void
.end method

.method protected final _verifyPrettyValueWrite(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    .line 888
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_cantHappen()V

    goto :goto_0

    .line 877
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->writeRootValueSeparator(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 874
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->writeObjectFieldValueSeparator(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 871
    :cond_2
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->writeArrayValueSeparator(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 881
    :cond_3
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->inArray()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 882
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->beforeArrayValues(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 883
    :cond_4
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 884
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected final _verifyValueWrite(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 834
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;->writeValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expecting field name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 838
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    if-nez v1, :cond_5

    const/4 p1, 0x1

    if-eq v0, p1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x20

    goto :goto_0

    :cond_2
    const/16 v0, 0x3a

    goto :goto_0

    :cond_3
    const/16 v0, 0x2c

    .line 854
    :goto_0
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_4

    .line 855
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 857
    :cond_4
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v0, v1, v2

    add-int/2addr v2, p1

    .line 858
    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    return-void

    .line 862
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyPrettyValueWrite(Ljava/lang/String;I)V

    return-void
.end method

.method protected _writeBinary(Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;[BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    add-int/lit8 v0, p4, -0x3

    .line 1499
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    add-int/lit8 v1, v1, -0x6

    .line 1500
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result v2

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    :goto_0
    if-gt p3, v0, :cond_2

    .line 1504
    iget v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-le v4, v1, :cond_0

    .line 1505
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_0
    add-int/lit8 v4, p3, 0x1

    .line 1508
    aget-byte p3, p2, p3

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v5, v4, 0x1

    .line 1509
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v4, v5, 0x1

    .line 1510
    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr p3, v5

    .line 1511
    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, p3, v5, v6}, Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;->encodeBase64Chunk(I[CI)I

    move-result p3

    iput p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_1

    .line 1514
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    add-int/lit8 v5, p3, 0x1

    iput v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v6, 0x5c

    aput-char v6, v2, p3

    add-int/lit8 p3, v5, 0x1

    .line 1515
    iput p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 p3, 0x6e

    aput-char p3, v2, v5

    .line 1516
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result p3

    shr-int/2addr p3, v3

    move v2, p3

    :cond_1
    move p3, v4

    goto :goto_0

    :cond_2
    sub-int/2addr p4, p3

    if-lez p4, :cond_5

    .line 1523
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-le v0, v1, :cond_3

    .line 1524
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_3
    add-int/lit8 v0, p3, 0x1

    .line 1526
    aget-byte p3, p2, p3

    shl-int/lit8 p3, p3, 0x10

    if-ne p4, v3, :cond_4

    .line 1528
    aget-byte p2, p2, v0

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p3, p2

    .line 1530
    :cond_4
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, p3, p4, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;->encodeBase64Partial(II[CI)I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    :cond_5
    return-void
.end method

.method public _writeFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writePPFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;Z)V

    return-void

    .line 344
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_1
    if-eqz p2, :cond_2

    .line 348
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v1, 0x2c

    aput-char v1, p2, v0

    .line 353
    :cond_2
    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;->asQuotedChars()[C

    move-result-object p1

    .line 354
    sget-object p2, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_3

    .line 355
    array-length p2, p1

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw([CII)V

    return-void

    .line 359
    :cond_3
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v3, 0x22

    aput-char v3, p2, v1

    .line 361
    array-length v1, p1

    add-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    .line 362
    iget v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_5

    .line 363
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw([CII)V

    .line 365
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt p1, p2, :cond_4

    .line 366
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 368
    :cond_4
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, p1, p2

    goto :goto_0

    .line 370
    :cond_5
    invoke-static {p1, v0, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 372
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, p2, p1

    :goto_0
    return-void
.end method

.method protected _writeFieldName(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writePPFieldName(Ljava/lang/String;Z)V

    return-void

    .line 310
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    :cond_1
    if-eqz p2, :cond_2

    .line 314
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v1, 0x2c

    aput-char v1, p2, v0

    .line 320
    :cond_2
    sget-object p2, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 321
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    return-void

    .line 326
    :cond_3
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v1, 0x22

    aput-char v1, p2, v0

    .line 328
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    .line 330
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt p1, p2, :cond_4

    .line 331
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 333
    :cond_4
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v1, p1, p2

    return-void
.end method

.method protected final _writePPFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 408
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {p2, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->writeObjectEntrySeparator(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 410
    :cond_0
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {p2, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    .line 413
    :goto_0
    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;->asQuotedChars()[C

    move-result-object p1

    .line 414
    sget-object p2, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 415
    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt p2, v1, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 418
    :cond_1
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x22

    aput-char v2, p2, v1

    .line 419
    array-length p2, p1

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw([CII)V

    .line 420
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt p1, p2, :cond_2

    .line 421
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 423
    :cond_2
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v2, p1, p2

    goto :goto_1

    .line 425
    :cond_3
    array-length p2, p1

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw([CII)V

    :goto_1
    return-void
.end method

.method protected final _writePPFieldName(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 384
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {p2, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->writeObjectEntrySeparator(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 386
    :cond_0
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {p2, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    .line 389
    :goto_0
    sget-object p2, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 390
    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt p2, v0, :cond_1

    .line 391
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 393
    :cond_1
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v1, 0x22

    aput-char v1, p2, v0

    .line 394
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    .line 395
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt p1, p2, :cond_2

    .line 396
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 398
    :cond_2
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v1, p1, p2

    goto :goto_1

    .line 400
    :cond_3
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 915
    invoke-super {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->close()V

    .line 921
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->getOutputContext()Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 925
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->inArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->writeEndArray()V

    goto :goto_0

    .line 927
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->writeEndObject()V

    goto :goto_0

    .line 934
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 942
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    if-eqz v0, :cond_4

    .line 943
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_ioContext:Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 945
    :cond_2
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 947
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_2

    .line 944
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 951
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_releaseBuffers()V

    return-void
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 903
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 904
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 905
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    :cond_0
    return-void
.end method

.method public getCharacterEscapes()Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;

    return-object v0
.end method

.method public getHighestEscapedChar()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    return v0
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    return-object v0
.end method

.method public setCharacterEscapes(Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;

    if-nez p1, :cond_0

    .line 157
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->sOutputEscapes:[I

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;->getEscapeCodesForAscii()[I

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    :goto_0
    return-object p0
.end method

.method public setHighestNonEscapedChar(I)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 143
    :cond_0
    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    return-object p0
.end method

.method public writeBinary(Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write binary value"

    .line 632
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 634
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x22

    aput-char v2, v0, v1

    add-int/2addr p4, p3

    .line 638
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeBinary(Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;[BII)V

    .line 640
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt p1, p2, :cond_1

    .line 641
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 643
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v2, p1, p2

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write boolean value"

    .line 795
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 796
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 799
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 800
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    const/16 v2, 0x65

    if-eqz p1, :cond_1

    const/16 p1, 0x74

    .line 802
    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 p1, 0x72

    .line 803
    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 p1, 0x75

    .line 804
    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 805
    aput-char v2, v1, v0

    goto :goto_0

    :cond_1
    const/16 p1, 0x66

    .line 807
    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 p1, 0x61

    .line 808
    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 p1, 0x6c

    .line 809
    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 p1, 0x73

    .line 810
    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 811
    aput-char v2, v1, v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 813
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    return-void
.end method

.method public final writeEndArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 260
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->writeEndArray(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;I)V

    goto :goto_0

    .line 262
    :cond_1
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;->getParent()Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    return-void
.end method

.method public final writeEndObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 292
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonStreamContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->writeEndObject(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;I)V

    goto :goto_0

    .line 294
    :cond_1
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;->getParent()Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    return-void
.end method

.method public final writeFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v1, "Can not write a field name, expecting a value"

    .line 227
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 229
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;Z)V

    return-void
.end method

.method public final writeFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v1, "Can not write a field name, expecting a value"

    .line 215
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 217
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeFieldName(Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;Z)V

    return-void
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v1, "Can not write a field name, expecting a value"

    .line 195
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 197
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeFieldName(Ljava/lang/String;Z)V

    return-void
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write null value"

    .line 820
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 821
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    return-void
.end method

.method public writeNumber(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 723
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "write number"

    .line 731
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 732
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    return-void

    .line 727
    :cond_2
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeNumber(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 739
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "write number"

    .line 747
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 748
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    return-void

    .line 743
    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeNumber(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write number"

    .line 656
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 657
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 658
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedInt(I)V

    return-void

    .line 662
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 663
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/NumberOutput;->outputInt(I[CI)I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    return-void
.end method

.method public writeNumber(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write number"

    .line 681
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 682
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 683
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedLong(J)V

    return-void

    .line 686
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 688
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/NumberOutput;->outputLong(J[CI)I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    return-void
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write number"

    .line 770
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 771
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 772
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_0

    .line 774
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write number"

    .line 756
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 758
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    goto :goto_0

    .line 759
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 760
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_0

    .line 762
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write number"

    .line 708
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 710
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    goto :goto_0

    .line 711
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 712
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_0

    .line 714
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeRaw(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 590
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char p1, v0, v1

    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 531
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 532
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 536
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int/2addr v1, v2

    :cond_0
    if-lt v1, v0, :cond_1

    const/4 v1, 0x0

    .line 540
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 541
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_0

    .line 543
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRawLong(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 552
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 556
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int/2addr v0, v1

    :cond_0
    if-lt v0, p3, :cond_1

    add-int v0, p2, p3

    .line 560
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 561
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_0

    :cond_1
    add-int/2addr p3, p2

    .line 563
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRawLong(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeRaw([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v0, 0x20

    if-ge p3, v0, :cond_1

    .line 573
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    return-void

    .line 582
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 583
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

.method public writeRawUTF8String([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 509
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportUnsupportedOperation()V

    return-void
.end method

.method public final writeStartArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string v0, "start an array"

    .line 241
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;->createChildArrayContext()Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    .line 243
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->writeStartArray(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 246
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    :goto_0
    return-void
.end method

.method public final writeStartObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string v0, "start an object"

    .line 273
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;->createChildObjectContext()Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonWriteContext;

    .line 275
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 276
    invoke-interface {v0, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;->writeStartObject(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 278
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    :goto_0
    return-void
.end method

.method public final writeString(Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write text value"

    .line 477
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 478
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 483
    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;->asQuotedChars()[C

    move-result-object p1

    .line 484
    array-length v0, p1

    const/16 v1, 0x20

    const/4 v3, 0x0

    if-ge v0, v1, :cond_2

    .line 487
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int/2addr v1, v4

    if-le v0, v1, :cond_1

    .line 489
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 491
    :cond_1
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_0

    .line 495
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 496
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1, p1, v3, v0}, Ljava/io/Writer;->write([CII)V

    .line 498
    :goto_0
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt p1, v0, :cond_3

    .line 499
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 501
    :cond_3
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v2, p1, v0

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write text value"

    .line 439
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    return-void

    .line 444
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 448
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    .line 450
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt p1, v0, :cond_2

    .line 451
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 453
    :cond_2
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v2, p1, v0

    return-void
.end method

.method public writeString([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const-string/jumbo v0, "write text value"

    .line 460
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 461
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 465
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString([CII)V

    .line 467
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt p1, p2, :cond_1

    .line 468
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 470
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v2, p1, p2

    return-void
.end method

.method public final writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 204
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/WriterBasedGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeUTF8String([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 517
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportUnsupportedOperation()V

    return-void
.end method
