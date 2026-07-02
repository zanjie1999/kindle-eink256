.class public final Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;
.super Ljava/lang/Object;
.source "TextBuffer.java"


# static fields
.field static final MAX_SEGMENT_LEN:I = 0x40000

.field static final MIN_SEGMENT_LEN:I = 0x3e8

.field static final NO_CHARS:[C


# instance fields
.field private final _allocator:Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;

.field private _currentSegment:[C

.field private _currentSize:I

.field private _hasSegments:Z

.field private _inputBuffer:[C

.field private _inputLen:I

.field private _inputStart:I

.field private _resultArray:[C

.field private _resultString:Ljava/lang/String;

.field private _segmentSize:I

.field private _segments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    .line 28
    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->NO_CHARS:[C

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 122
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_allocator:Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;

    return-void
.end method

.method private final _charArray(I)[C
    .locals 0

    .line 718
    new-array p1, p1, [C

    return-object p1
.end method

.method private buildResultArray()[C
    .locals 7

    .line 684
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    .line 690
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 691
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    if-ge v0, v1, :cond_1

    .line 692
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->NO_CHARS:[C

    return-object v0

    .line 694
    :cond_1
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v0

    .line 695
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iget v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 698
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->size()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 700
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->NO_CHARS:[C

    return-object v0

    .line 703
    :cond_3
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v0

    .line 704
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 705
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    .line 706
    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    .line 707
    array-length v6, v5

    .line 708
    invoke-static {v5, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 712
    :cond_5
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    return-object v0
.end method

.method private final clearSegments()V
    .locals 2

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 250
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 251
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    return-void
.end method

.method private expand(I)V
    .locals 3

    .line 664
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v1, 0x1

    .line 668
    iput-boolean v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 669
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    .line 671
    array-length v0, v0

    shr-int/lit8 v1, v0, 0x1

    if-ge v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    const/high16 v1, 0x40000

    add-int/2addr v0, p1

    .line 677
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object p1

    const/4 v0, 0x0

    .line 678
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 679
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    return-void
.end method

.method private final findBuffer(I)[C
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_allocator:Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;

    if-eqz v0, :cond_0

    .line 235
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x3e8

    .line 237
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [C

    return-object p1
.end method

.method private unshare(I)V
    .locals 5

    .line 638
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    const/4 v1, 0x0

    .line 639
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 640
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    const/4 v3, 0x0

    .line 641
    iput-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 642
    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    const/4 v4, -0x1

    .line 643
    iput v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    add-int/2addr p1, v0

    .line 647
    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-eqz v4, :cond_0

    array-length v4, v4

    if-le p1, v4, :cond_1

    .line 648
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    :cond_1
    if-lez v0, :cond_2

    .line 651
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-static {v2, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 653
    :cond_2
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    .line 654
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 3

    .line 430
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    const/16 v0, 0x10

    .line 431
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->unshare(I)V

    :cond_0
    const/4 v0, 0x0

    .line 433
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 434
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 436
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 437
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 438
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->expand(I)V

    .line 439
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 441
    :cond_1
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    aput-char p1, v0, v1

    return-void
.end method

.method public append(Ljava/lang/String;II)V
    .locals 4

    .line 485
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    .line 486
    invoke-direct {p0, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->unshare(I)V

    :cond_0
    const/4 v0, 0x0

    .line 488
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 489
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 492
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 493
    array-length v1, v0

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    sub-int/2addr v1, v2

    if-lt v1, p3, :cond_1

    add-int v1, p2, p3

    .line 495
    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 496
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    return-void

    :cond_1
    if-lez v1, :cond_2

    add-int v3, p2, v1

    .line 501
    invoke-virtual {p1, p2, v3, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    sub-int/2addr p3, v1

    move p2, v3

    .line 510
    :cond_2
    :goto_0
    invoke-direct {p0, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->expand(I)V

    .line 511
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    array-length v0, v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v1, p2, v0

    .line 512
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 513
    iget p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    sub-int/2addr p3, v0

    if-gtz p3, :cond_3

    return-void

    :cond_3
    move p2, v1

    goto :goto_0
.end method

.method public append([CII)V
    .locals 3

    .line 447
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    .line 448
    invoke-direct {p0, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->unshare(I)V

    :cond_0
    const/4 v0, 0x0

    .line 450
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 451
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 454
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 455
    array-length v1, v0

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    sub-int/2addr v1, v2

    if-lt v1, p3, :cond_1

    .line 458
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    iget p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    return-void

    :cond_1
    if-lez v1, :cond_2

    .line 464
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 473
    :cond_2
    invoke-direct {p0, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->expand(I)V

    .line 474
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    array-length v0, v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 475
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    if-gtz p3, :cond_2

    return-void
.end method

.method public contentsAsArray()[C
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-nez v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->buildResultArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    :cond_0
    return-object v0
.end method

.method public contentsAsDecimal()Ljava/math/BigDecimal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    return-object v0

    .line 391
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_1

    .line 392
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v0

    .line 395
    :cond_1
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    if-nez v0, :cond_2

    .line 396
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v0

    .line 399
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->contentsAsArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    return-object v0
.end method

.method public contentsAsDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/io/NumberInput;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public contentsAsString()Ljava/lang/String;
    .locals 6

    .line 333
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 335
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_2

    .line 339
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    const-string v1, ""

    if-ltz v0, :cond_2

    .line 340
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 341
    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    return-object v1

    .line 343
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_2

    .line 346
    :cond_2
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    .line 347
    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    const/4 v3, 0x0

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_0

    .line 350
    :cond_3
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_2

    .line 352
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/2addr v0, v2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 354
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 355
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    .line 356
    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    .line 357
    array-length v5, v4

    invoke-virtual {v1, v4, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 361
    :cond_5
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 367
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    return-object v0
.end method

.method public final emptyAndGetCurrentSegment()[C
    .locals 2

    const/4 v0, -0x1

    .line 548
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    const/4 v0, 0x0

    .line 549
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 550
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    const/4 v1, 0x0

    .line 552
    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 553
    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 554
    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 557
    iget-boolean v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v1, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->clearSegments()V

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-nez v1, :cond_1

    .line 562
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    :cond_1
    return-object v1
.end method

.method public ensureNotShared()V
    .locals 1

    .line 423
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    const/16 v0, 0x10

    .line 424
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->unshare(I)V

    :cond_0
    return-void
.end method

.method public expandCurrentSegment()[C
    .locals 4

    .line 599
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 601
    array-length v1, v0

    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_0

    const v2, 0x40001

    goto :goto_0

    :cond_0
    shr-int/lit8 v3, v1, 0x1

    add-int/2addr v3, v1

    .line 603
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 605
    :goto_0
    invoke-direct {p0, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v3, 0x0

    .line 606
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 607
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    return-object v0
.end method

.method public finishCurrentSegment()[C
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x1

    .line 580
    iput-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 581
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    array-length v0, v0

    .line 583
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    const/high16 v1, 0x40000

    .line 585
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 586
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v0

    const/4 v1, 0x0

    .line 587
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 588
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    return-object v0
.end method

.method public getCurrentSegment()[C
    .locals 3

    .line 531
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 532
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->unshare(I)V

    goto :goto_0

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 536
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    goto :goto_0

    .line 537
    :cond_1
    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    array-length v0, v0

    if-lt v2, v0, :cond_2

    .line 539
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->expand(I)V

    .line 542
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    return-object v0
.end method

.method public getCurrentSegmentSize()I
    .locals 1

    .line 568
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    return v0
.end method

.method public getTextBuffer()[C
    .locals 1

    .line 308
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    return-object v0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_1

    return-object v0

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    return-object v0

    .line 318
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-nez v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    return-object v0

    .line 322
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->contentsAsArray()[C

    move-result-object v0

    return-object v0
.end method

.method public getTextOffset()I
    .locals 1

    .line 283
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTextAsCharacters()Z
    .locals 2

    .line 295
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    const/4 v1, 0x1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public releaseBuffers()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_allocator:Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->resetWithEmpty()V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->resetWithEmpty()V

    .line 143
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v1, 0x0

    .line 144
    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 145
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_allocator:Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;

    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resetWithCopy([CII)V
    .locals 2

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    const/4 v1, -0x1

    .line 196
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    const/4 v1, 0x0

    .line 197
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 199
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 200
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 203
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->clearSegments()V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-nez v0, :cond_1

    .line 206
    invoke-direct {p0, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 208
    :cond_1
    :goto_0
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 209
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->append([CII)V

    return-void
.end method

.method public resetWithEmpty()V
    .locals 1

    const/4 v0, -0x1

    .line 156
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 158
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 161
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 165
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->clearSegments()V

    :cond_0
    return-void
.end method

.method public resetWithShared([CII)V
    .locals 1

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 183
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 184
    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 185
    iput p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 188
    iget-boolean p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz p1, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->clearSegments()V

    :cond_0
    return-void
.end method

.method public resetWithString(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    const/4 v1, -0x1

    .line 215
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    const/4 v1, 0x0

    .line 216
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 218
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 219
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 221
    iget-boolean p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz p1, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->clearSegments()V

    .line 224
    :cond_0
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    return-void
.end method

.method public setCurrentLength(I)V
    .locals 0

    .line 572
    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    return-void
.end method

.method public size()I
    .locals 2

    .line 264
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    .line 265
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    return v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_1

    .line 268
    array-length v0, v0

    return v0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 274
    :cond_2
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 623
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
