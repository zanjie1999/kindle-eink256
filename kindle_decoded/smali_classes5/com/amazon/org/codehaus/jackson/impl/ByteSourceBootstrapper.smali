.class public final Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;
.super Ljava/lang/Object;
.source "ByteSourceBootstrapper.java"


# static fields
.field static final UTF8_BOM_1:B = -0x11t

.field static final UTF8_BOM_2:B = -0x45t

.field static final UTF8_BOM_3:B = -0x41t


# instance fields
.field protected _bigEndian:Z

.field private final _bufferRecyclable:Z

.field protected _bytesPerChar:I

.field protected final _context:Lcom/amazon/org/codehaus/jackson/io/IOContext;

.field protected final _in:Ljava/io/InputStream;

.field protected final _inputBuffer:[B

.field private _inputEnd:I

.field protected _inputProcessed:I

.field private _inputPtr:I


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    const/4 v1, 0x0

    .line 76
    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 86
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    .line 87
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    .line 88
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/io/IOContext;->allocReadIOBuffer()[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    .line 89
    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    .line 90
    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputProcessed:I

    .line 91
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bufferRecyclable:Z

    return-void
.end method

.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/io/IOContext;[BII)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 96
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    .line 98
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    .line 99
    iput p3, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/2addr p4, p3

    .line 100
    iput p4, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    neg-int p1, p3

    .line 102
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputProcessed:I

    .line 103
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bufferRecyclable:Z

    return-void
.end method

.method private checkUTF16(I)Z
    .locals 2

    const v0, 0xff00

    and-int/2addr v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 464
    iput-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_0

    :cond_0
    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 466
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    :goto_0
    const/4 p1, 0x2

    .line 472
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    return v1

    :cond_1
    return v0
.end method

.method private checkUTF32(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x8

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 444
    iput-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_0

    :cond_0
    const v0, 0xffffff

    and-int/2addr v0, p1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 446
    iput-boolean v2, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_0

    :cond_1
    const v0, -0xff0001

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    const-string p1, "3412"

    .line 448
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const v0, -0xff01

    and-int/2addr p1, v0

    if-nez p1, :cond_3

    const-string p1, "2143"

    .line 450
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x4

    .line 457
    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    return v1

    :cond_3
    return v2
.end method

.method private handleBOM(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, -0x1010000

    const v1, 0xfffe

    const v2, 0xfeff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v0, :cond_3

    const/high16 v0, -0x20000

    const/4 v5, 0x4

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "2143"

    .line 409
    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_1
    iput-boolean v4, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 400
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 401
    iput v5, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    return v4

    .line 404
    :cond_2
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 405
    iput v5, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 406
    iput-boolean v3, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    return v4

    :cond_3
    :goto_0
    const-string v0, "3412"

    .line 411
    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    :goto_1
    ushr-int/lit8 v0, p1, 0x10

    const/4 v5, 0x2

    if-ne v0, v2, :cond_4

    .line 416
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 417
    iput v5, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 418
    iput-boolean v4, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    return v4

    :cond_4
    if-ne v0, v1, :cond_5

    .line 422
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 423
    iput v5, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 424
    iput-boolean v3, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    return v4

    :cond_5
    ushr-int/lit8 p1, p1, 0x8

    const v0, 0xefbbbf

    if-ne p1, v0, :cond_6

    .line 429
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 430
    iput v4, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 431
    iput-boolean v4, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    return v4

    :cond_6
    return v3
.end method

.method public static hasJSONFormat(Lcom/amazon/org/codehaus/jackson/format/InputAccessor;)Lcom/amazon/org/codehaus/jackson/format/MatchStrength;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-interface {p0}, Lcom/amazon/org/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    sget-object p0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-object p0

    .line 263
    :cond_0
    invoke-interface {p0}, Lcom/amazon/org/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v0

    const/16 v1, -0x11

    if-ne v0, v1, :cond_6

    .line 266
    invoke-interface {p0}, Lcom/amazon/org/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    sget-object p0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-object p0

    .line 269
    :cond_1
    invoke-interface {p0}, Lcom/amazon/org/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v0

    const/16 v1, -0x45

    if-eq v0, v1, :cond_2

    .line 270
    sget-object p0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-object p0

    .line 272
    :cond_2
    invoke-interface {p0}, Lcom/amazon/org/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v0

    if-nez v0, :cond_3

    .line 273
    sget-object p0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-object p0

    .line 275
    :cond_3
    invoke-interface {p0}, Lcom/amazon/org/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v0

    const/16 v1, -0x41

    if-eq v0, v1, :cond_4

    .line 276
    sget-object p0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-object p0

    .line 278
    :cond_4
    invoke-interface {p0}, Lcom/amazon/org/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v0

    if-nez v0, :cond_5

    .line 279
    sget-object p0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-object p0

    .line 281
    :cond_5
    invoke-interface {p0}, Lcom/amazon/org/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v0

    .line 284
    :cond_6
    invoke-static {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->skipSpace(Lcom/amazon/org/codehaus/jackson/format/InputAccessor;B)I

    move-result v0

    if-gez v0, :cond_7

    .line 286
    sget-object p0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-object p0

    :cond_7
    const/16 v1, 0x7b

    const/16 v2, 0x22

    if-ne v0, v1, :cond_b

    .line 291
    invoke-static {p0}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->skipSpace(Lcom/amazon/org/codehaus/jackson/format/InputAccessor;)I

    move-result p0

    if-gez p0, :cond_8

    .line 293
    sget-object p0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-object p0

    :cond_8
    if-eq p0, v2, :cond_a

    const/16 v0, 0x7d

    if-ne p0, v0, :cond_9

    goto :goto_0

    .line 299
    :cond_9
    sget-object p0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-object p0

    .line 296
    :cond_a
    :goto_0
    sget-object p0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-object p0

    :cond_b
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_f

    .line 304
    invoke-static {p0}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->skipSpace(Lcom/amazon/org/codehaus/jackson/format/InputAccessor;)I

    move-result p0

    if-gez p0, :cond_c

    .line 306
    sget-object p0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-object p0

    :cond_c
    const/16 v0, 0x5d

    if-eq p0, v0, :cond_e

    if-ne p0, v1, :cond_d

    goto :goto_1

    .line 312
    :cond_d
    sget-object p0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-object p0

    .line 310
    :cond_e
    :goto_1
    sget-object p0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-object p0

    .line 315
    :cond_f
    sget-object v1, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->WEAK_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    if-ne v0, v2, :cond_10

    return-object v1

    :cond_10
    const/16 v2, 0x30

    const/16 v3, 0x39

    if-gt v0, v3, :cond_11

    if-lt v0, v2, :cond_11

    return-object v1

    :cond_11
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_14

    .line 325
    invoke-static {p0}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->skipSpace(Lcom/amazon/org/codehaus/jackson/format/InputAccessor;)I

    move-result p0

    if-gez p0, :cond_12

    .line 327
    sget-object p0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-object p0

    :cond_12
    if-gt p0, v3, :cond_13

    if-lt p0, v2, :cond_13

    goto :goto_2

    .line 329
    :cond_13
    sget-object v1, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    :goto_2
    return-object v1

    :cond_14
    const/16 v2, 0x6e

    if-ne v0, v2, :cond_15

    const-string/jumbo v0, "ull"

    .line 333
    invoke-static {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->tryMatch(Lcom/amazon/org/codehaus/jackson/format/InputAccessor;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/format/MatchStrength;)Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    move-result-object p0

    return-object p0

    :cond_15
    const/16 v2, 0x74

    if-ne v0, v2, :cond_16

    const-string/jumbo v0, "rue"

    .line 336
    invoke-static {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->tryMatch(Lcom/amazon/org/codehaus/jackson/format/InputAccessor;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/format/MatchStrength;)Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    move-result-object p0

    return-object p0

    :cond_16
    const/16 v2, 0x66

    if-ne v0, v2, :cond_17

    const-string v0, "alse"

    .line 339
    invoke-static {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->tryMatch(Lcom/amazon/org/codehaus/jackson/format/InputAccessor;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/format/MatchStrength;)Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    move-result-object p0

    return-object p0

    .line 341
    :cond_17
    sget-object p0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-object p0
.end method

.method private reportWeirdUCS4(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    new-instance v0, Ljava/io/CharConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported UCS-4 endianness ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") detected"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final skipSpace(Lcom/amazon/org/codehaus/jackson/format/InputAccessor;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    invoke-interface {p0}, Lcom/amazon/org/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 363
    :cond_0
    invoke-interface {p0}, Lcom/amazon/org/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v0

    invoke-static {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->skipSpace(Lcom/amazon/org/codehaus/jackson/format/InputAccessor;B)I

    move-result p0

    return p0
.end method

.method private static final skipSpace(Lcom/amazon/org/codehaus/jackson/format/InputAccessor;B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    return p1

    .line 373
    :cond_0
    invoke-interface {p0}, Lcom/amazon/org/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, -0x1

    return p0

    .line 376
    :cond_1
    invoke-interface {p0}, Lcom/amazon/org/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result p1

    goto :goto_0
.end method

.method private static final tryMatch(Lcom/amazon/org/codehaus/jackson/format/InputAccessor;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/format/MatchStrength;)Lcom/amazon/org/codehaus/jackson/format/MatchStrength;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 348
    invoke-interface {p0}, Lcom/amazon/org/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    sget-object p0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-object p0

    .line 351
    :cond_0
    invoke-interface {p0}, Lcom/amazon/org/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    .line 352
    sget-object p0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method


# virtual methods
.method public constructParser(ILcom/amazon/org/codehaus/jackson/ObjectCodec;Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;)Lcom/amazon/org/codehaus/jackson/JsonParser;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    move-object v0, p0

    move v3, p1

    .line 224
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->detectEncoding()Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    move-result-object v1

    .line 227
    sget-object v2, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v2, p1}, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v2

    .line 228
    sget-object v4, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->INTERN_FIELD_NAMES:Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v4, p1}, Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v4

    .line 229
    sget-object v5, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    if-ne v1, v5, :cond_0

    if-eqz v2, :cond_0

    move-object v1, p3

    .line 234
    invoke-virtual {p3, v2, v4}, Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->makeChild(ZZ)Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    move-result-object v6

    .line 235
    new-instance v11, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;

    iget-object v2, v0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    iget-object v4, v0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v7, v0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v8, v0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v9, v0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    iget-boolean v10, v0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bufferRecyclable:Z

    move-object v1, v11

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v10}, Lcom/amazon/org/codehaus/jackson/impl/Utf8StreamParser;-><init>(Lcom/amazon/org/codehaus/jackson/io/IOContext;ILjava/io/InputStream;Lcom/amazon/org/codehaus/jackson/ObjectCodec;Lcom/amazon/org/codehaus/jackson/sym/BytesToNameCanonicalizer;[BIIZ)V

    return-object v11

    .line 238
    :cond_0
    new-instance v7, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;

    iget-object v5, v0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->constructReader()Ljava/io/Reader;

    move-result-object v6

    move-object/from16 v1, p4

    invoke-virtual {v1, v2, v4}, Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->makeChild(ZZ)Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v8

    move-object v1, v7

    move-object v2, v5

    move v3, p1

    move-object v4, v6

    move-object v5, p2

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/amazon/org/codehaus/jackson/impl/ReaderBasedParser;-><init>(Lcom/amazon/org/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lcom/amazon/org/codehaus/jackson/ObjectCodec;Lcom/amazon/org/codehaus/jackson/sym/CharsToNameCanonicalizer;)V

    return-object v7
.end method

.method public constructReader()Ljava/io/Reader;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/io/IOContext;->getEncoding()Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    move-result-object v0

    .line 192
    sget-object v1, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper$1;->$SwitchMap$org$codehaus$jackson$JsonEncoding:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    if-nez v4, :cond_2

    .line 206
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v3, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    invoke-direct {v4, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    goto :goto_1

    .line 211
    :cond_2
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v2, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    if-ge v1, v2, :cond_3

    .line 212
    new-instance v1, Lcom/amazon/org/codehaus/jackson/io/MergedStream;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v7, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/org/codehaus/jackson/io/MergedStream;-><init>(Lcom/amazon/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V

    move-object v4, v1

    .line 215
    :cond_3
    :goto_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v1

    .line 195
    :cond_4
    new-instance v0, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;

    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    iget-object v7, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v8, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v9, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v10, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    invoke-virtual {v6}, Lcom/amazon/org/codehaus/jackson/io/IOContext;->getEncoding()Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->isBigEndian()Z

    move-result v11

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/amazon/org/codehaus/jackson/io/UTF32Reader;-><init>(Lcom/amazon/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BIIZ)V

    return-object v0
.end method

.method public detectEncoding()Lcom/amazon/org/codehaus/jackson/JsonEncoding;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 129
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->ensureLoaded(I)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v6, v1, v5

    shl-int/lit8 v6, v6, 0x18

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v7, v5, 0x2

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x3

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v6

    .line 135
    invoke-direct {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->handleBOM(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-direct {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->checkUTF32(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    ushr-int/lit8 v1, v1, 0x10

    .line 146
    invoke-direct {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->checkUTF16(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0, v2}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->ensureLoaded(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v3

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v6

    .line 153
    invoke-direct {p0, v1}, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->checkUTF16(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    const/4 v4, 0x1

    :cond_3
    if-nez v4, :cond_4

    .line 162
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    goto :goto_1

    .line 164
    :cond_4
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    if-eq v1, v3, :cond_9

    if-eq v1, v2, :cond_7

    if-ne v1, v0, :cond_6

    .line 172
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->UTF32_BE:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->UTF32_LE:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    goto :goto_1

    .line 175
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_7
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->UTF16_BE:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->UTF16_LE:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    goto :goto_1

    .line 166
    :cond_9
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    .line 178
    :goto_1
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/amazon/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/amazon/org/codehaus/jackson/io/IOContext;->setEncoding(Lcom/amazon/org/codehaus/jackson/JsonEncoding;)V

    return-object v0
.end method

.method protected ensureLoaded(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    sub-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p1, :cond_2

    .line 504
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_1

    .line 507
    :cond_0
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    array-length v5, v3

    sub-int/2addr v5, v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    :goto_1
    if-ge v2, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 512
    :cond_1
    iget v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/amazon/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    return v1
.end method
