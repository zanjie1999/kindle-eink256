.class public Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;
.super Lcom/amazon/whispersync/org/apache/commons/codec/net/RFC1522Codec;
.source "QCodec.java"

# interfaces
.implements Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoder;
.implements Lcom/amazon/whispersync/org/apache/commons/codec/StringDecoder;


# static fields
.field private static final BLANK:B = 0x20t

.field private static final PRINTABLE_CHARS:Ljava/util/BitSet;

.field private static final UNDERSCORE:B = 0x5ft


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private encodeBlanks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x20

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 66
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 67
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 68
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 69
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 70
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 71
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 72
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 73
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 74
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 75
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 76
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 77
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 78
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 79
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 80
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v0, 0x30

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 82
    sget-object v1, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 85
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 86
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 87
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 88
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 90
    sget-object v1, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_1
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 93
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 94
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 95
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 96
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    .line 98
    sget-object v1, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 100
    :cond_2
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 101
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 102
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 103
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 116
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 144
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/net/RFC1522Codec;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    .line 130
    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/apache/commons/codec/DecoderException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 312
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 313
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 315
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Objects of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be decoded using Q codec"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/apache/commons/codec/DecoderException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 269
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/net/RFC1522Codec;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 271
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/DecoderException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected doDecoding([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/apache/commons/codec/DecoderException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 174
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x5f

    if-ge v2, v0, :cond_2

    aget-byte v4, p1, v2

    if-ne v4, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 181
    array-length v0, p1

    new-array v0, v0, [B

    .line 182
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 183
    aget-byte v2, p1, v1

    if-eq v2, v3, :cond_3

    .line 185
    aput-byte v2, v0, v1

    goto :goto_3

    :cond_3
    const/16 v2, 0x20

    .line 187
    aput-byte v2, v0, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 190
    :cond_4
    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/codec/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

    move-result-object p1

    return-object p1

    .line 192
    :cond_5
    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/codec/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

    move-result-object p1

    return-object p1
.end method

.method protected doEncoding([B)[B
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 157
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-static {v0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(Ljava/util/BitSet;[B)[B

    move-result-object p1

    .line 158
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 159
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 160
    aget-byte v1, p1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    const/16 v1, 0x5f

    .line 161
    aput-byte v1, p1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 288
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 289
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 291
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Objects of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be encoded using Q codec"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 230
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/net/RFC1522Codec;->encodeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 232
    new-instance p2, Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 211
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/net/RFC1522Codec;->encodeText(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "Q"

    return-object v0
.end method

.method public isEncodeBlanks()Z
    .locals 1

    .line 346
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    return v0
.end method

.method public setEncodeBlanks(Z)V
    .locals 0

    .line 356
    iput-boolean p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    return-void
.end method
