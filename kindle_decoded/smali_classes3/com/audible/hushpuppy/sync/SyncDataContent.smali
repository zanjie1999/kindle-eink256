.class final Lcom/audible/hushpuppy/sync/SyncDataContent;
.super Ljava/lang/Object;
.source "SyncDataContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/sync/SyncDataContent$Block;,
        Lcom/audible/hushpuppy/sync/SyncDataContent$EncryptedRandomAccessFileReader;,
        Lcom/audible/hushpuppy/sync/SyncDataContent$UnencryptedRandomAccessFileReader;,
        Lcom/audible/hushpuppy/sync/SyncDataContent$AbstractRandomAccessFileReader;,
        Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;,
        Lcom/audible/hushpuppy/sync/SyncDataContent$IErrorHandler;
    }
.end annotation


# static fields
.field private static final ABOOK_END_POS_BYTE_OFFSET:I = 0xc

.field private static final ABOOK_START_POS_BYTE_OFFSET:I = 0x8

.field private static final EBOOK_END_POS_BYTE_OFFSET:I = 0x4

.field private static final EBOOK_START_POS_BYTE_OFFSET:I = 0x0

.field private static final LOGGER:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

.field private static final NUM_BYTES_IN_A_RECORD:I = 0x10

.field private static final PREDEFINED_SYNC_AUDIO_GAP:I = 0x3e8


# instance fields
.field private asinId:Ljava/lang/String;

.field private final block:[B

.field private final blockSize:I

.field private blocks:[Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

.field private volatile bp:I

.field private volatile curBlockIndex:I

.field private errorHandler:Lcom/audible/hushpuppy/sync/SyncDataContent$IErrorHandler;

.field private hiAbookEndPos:J

.field private hiAbookPos:J

.field private hiEbookPos:J

.field private loAbookPos:J

.field private loEbookPos:J

.field private final numSearchesBeforeBinarySearch:I

.field private final reader:Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;

.field private final source:Ljava/lang/String;

.field private final syncDataOffset:J

.field private trace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    invoke-static {}, Lcom/audible/hushpuppy/sync/SyncIntegration;->getDelegate()Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/sync/SyncDataContent;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/sync/SyncDataContent;->LOGGER:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/sync/IFile;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 255
    new-instance v5, Lcom/audible/hushpuppy/sync/SyncDataContent$UnencryptedRandomAccessFileReader;

    invoke-direct {v5, p1}, Lcom/audible/hushpuppy/sync/SyncDataContent$UnencryptedRandomAccessFileReader;-><init>(Lcom/audible/hushpuppy/sync/IFile;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/sync/SyncDataContent;-><init>(Lcom/audible/hushpuppy/sync/IFile;IIILcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/sync/IFile;IIILcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->trace:Z

    int-to-long v1, p2

    .line 267
    iput-wide v1, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->syncDataOffset:J

    .line 268
    iput p4, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->numSearchesBeforeBinarySearch:I

    .line 269
    iput-object p5, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->reader:Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;

    .line 270
    iput v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    .line 272
    rem-int/lit8 p2, p3, 0x10

    if-nez p2, :cond_1

    int-to-long v0, p3

    .line 278
    :try_start_0
    invoke-interface {p5}, Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;->length()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    .line 279
    invoke-interface {p5}, Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;->length()J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p3, p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 282
    invoke-direct {p0, p2}, Lcom/audible/hushpuppy/sync/SyncDataContent;->handle(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    and-int/lit8 p2, p3, -0x10

    .line 285
    iput p2, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->blockSize:I

    .line 286
    new-array p2, p3, [B

    iput-object p2, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    .line 287
    invoke-interface {p1}, Lcom/audible/hushpuppy/sync/IFile;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->source:Ljava/lang/String;

    return-void

    .line 273
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "blockSize must be a multiple of 16"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/sync/IFile;IIILjavax/crypto/Cipher;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 260
    new-instance v5, Lcom/audible/hushpuppy/sync/SyncDataContent$EncryptedRandomAccessFileReader;

    invoke-direct {v5, p5, p1}, Lcom/audible/hushpuppy/sync/SyncDataContent$EncryptedRandomAccessFileReader;-><init>(Ljavax/crypto/Cipher;Lcom/audible/hushpuppy/sync/IFile;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/sync/SyncDataContent;-><init>(Lcom/audible/hushpuppy/sync/IFile;IIILcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;)V

    return-void
.end method

.method private binarySearch([BIIJI)I
    .locals 5

    add-int/lit8 p3, p3, -0x10

    move v0, p2

    :goto_0
    if-gt v0, p3, :cond_2

    add-int v1, v0, p3

    ushr-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, -0x10

    add-int v2, v1, p6

    .line 884
    invoke-static {p1, v2}, Lcom/audible/hushpuppy/sync/SyncDataContent;->value([BI)J

    move-result-wide v2

    cmp-long v4, p4, v2

    if-lez v4, :cond_0

    add-int/lit8 v0, v1, 0x10

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, -0x10

    move p3, v1

    goto :goto_0

    :cond_2
    if-gt v0, p2, :cond_3

    return p2

    :cond_3
    add-int/lit8 v0, v0, -0x10

    return v0
.end method

.method private createBlocks(I)[Lcom/audible/hushpuppy/sync/SyncDataContent$Block;
    .locals 25

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v2, :cond_0

    new-array v0, v3, [Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    .line 543
    new-instance v2, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v17}, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;-><init>(JJJJJJ)V

    aput-object v2, v0, v4

    return-object v0

    :cond_0
    const-wide/16 v5, 0x0

    .line 551
    :try_start_0
    iget-object v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->reader:Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;

    invoke-interface {v0}, Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;->length()J

    move-result-wide v7

    int-to-long v9, v2

    div-long/2addr v7, v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    long-to-int v8, v7

    .line 552
    :try_start_1
    iget-object v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->reader:Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;

    invoke-interface {v0}, Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;->length()J

    move-result-wide v11

    rem-long/2addr v11, v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    cmp-long v0, v11, v5

    if-eqz v0, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v8, 0x0

    .line 556
    :goto_0
    invoke-direct {v1, v0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->handle(Ljava/lang/Exception;)V

    .line 558
    :cond_1
    :goto_1
    new-array v7, v8, [Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    const/16 v0, 0x10

    new-array v9, v0, [B

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v8, :cond_3

    mul-int v0, v10, v2

    int-to-long v14, v0

    .line 564
    :try_start_2
    iget-wide v11, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->syncDataOffset:J

    add-long/2addr v11, v14

    int-to-long v5, v2

    add-long/2addr v11, v5

    iget-object v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->reader:Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;

    invoke-interface {v0}, Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;->length()J

    move-result-wide v5

    cmp-long v0, v11, v5

    if-lez v0, :cond_2

    .line 565
    iget-object v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->reader:Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;

    invoke-interface {v0}, Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;->length()J

    move-result-wide v5

    iget-wide v11, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->syncDataOffset:J

    add-long/2addr v11, v14

    sub-long/2addr v5, v11

    long-to-int v0, v5

    and-int/lit8 v0, v0, -0x10

    goto :goto_3

    :cond_2
    move v0, v2

    .line 573
    :goto_3
    sget-object v5, Lcom/audible/hushpuppy/sync/SyncDataContent;->LOGGER:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createblocks len: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;->debug(Ljava/lang/String;)V

    .line 574
    sget-object v5, Lcom/audible/hushpuppy/sync/SyncDataContent;->LOGGER:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createblocks fp: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;->debug(Ljava/lang/String;)V

    .line 575
    sget-object v5, Lcom/audible/hushpuppy/sync/SyncDataContent;->LOGGER:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createblocks reader length: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->reader:Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;

    invoke-interface {v11}, Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;->length()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;->debug(Ljava/lang/String;)V

    .line 577
    invoke-direct {v1, v14, v15}, Lcom/audible/hushpuppy/sync/SyncDataContent;->seek(J)V

    .line 578
    iget-object v5, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->reader:Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;

    invoke-interface {v5, v9}, Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;->read([B)I

    .line 579
    sget-object v5, Lcom/audible/hushpuppy/sync/SyncDataContent;->LOGGER:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createblocks ebookbuf: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;->debug(Ljava/lang/String;)V

    .line 580
    invoke-static {v9, v4}, Lcom/audible/hushpuppy/sync/SyncDataContent;->value([BI)J

    move-result-wide v12

    const/16 v5, 0x8

    .line 581
    invoke-static {v9, v5}, Lcom/audible/hushpuppy/sync/SyncDataContent;->value([BI)J

    move-result-wide v16

    add-int/lit8 v6, v0, -0x10

    int-to-long v5, v6

    add-long/2addr v5, v14

    .line 583
    invoke-direct {v1, v5, v6}, Lcom/audible/hushpuppy/sync/SyncDataContent;->seek(J)V

    .line 584
    iget-object v5, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->reader:Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;

    invoke-interface {v5, v9}, Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;->read([B)I

    .line 585
    sget-object v5, Lcom/audible/hushpuppy/sync/SyncDataContent;->LOGGER:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createblocks abookbuf: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;->debug(Ljava/lang/String;)V

    .line 586
    invoke-static {v9, v4}, Lcom/audible/hushpuppy/sync/SyncDataContent;->value([BI)J

    move-result-wide v5

    const/16 v11, 0x8

    .line 587
    invoke-static {v9, v11}, Lcom/audible/hushpuppy/sync/SyncDataContent;->value([BI)J

    move-result-wide v18

    const/16 v11, 0xc

    .line 589
    invoke-static {v9, v11}, Lcom/audible/hushpuppy/sync/SyncDataContent;->value([BI)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->hiAbookEndPos:J

    .line 591
    new-instance v3, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move v4, v8

    move-object/from16 v24, v9

    int-to-long v8, v0

    move-object v11, v3

    move-wide/from16 v20, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v5

    move-wide/from16 v22, v8

    :try_start_3
    invoke-direct/range {v11 .. v23}, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;-><init>(JJJJJJ)V

    aput-object v3, v7, v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move v4, v8

    move-object/from16 v24, v9

    .line 593
    :goto_4
    invoke-direct {v1, v0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->handle(Ljava/lang/Exception;)V

    :goto_5
    add-int/lit8 v10, v10, 0x1

    move v8, v4

    move-object/from16 v9, v24

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    goto/16 :goto_2

    :cond_3
    move v4, v8

    const/4 v3, 0x0

    .line 596
    iput v3, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlockIndex:I

    .line 597
    iput v3, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    const-wide/16 v2, 0x0

    .line 599
    :try_start_4
    invoke-direct {v1, v2, v3}, Lcom/audible/hushpuppy/sync/SyncDataContent;->seek(J)V

    .line 600
    iget-object v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->reader:Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;

    iget-object v2, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;->read([B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 602
    invoke-direct {v1, v0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->handle(Ljava/lang/Exception;)V

    :goto_6
    const/4 v2, 0x0

    .line 606
    aget-object v0, v7, v2

    iget-wide v5, v0, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->loEbookPos:J

    iput-wide v5, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->loEbookPos:J

    const/4 v3, 0x1

    add-int/lit8 v8, v4, -0x1

    .line 607
    aget-object v0, v7, v8

    iget-wide v3, v0, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->hiEbookPos:J

    iput-wide v3, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->hiEbookPos:J

    .line 608
    aget-object v0, v7, v2

    iget-wide v2, v0, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->loAbookPos:J

    iput-wide v2, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->loAbookPos:J

    .line 609
    aget-object v0, v7, v8

    iget-wide v2, v0, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->hiAbookPos:J

    iput-wide v2, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->hiAbookPos:J

    return-object v7
.end method

.method private curBlock()Lcom/audible/hushpuppy/sync/SyncDataContent$Block;
    .locals 5

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->blocks:[Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    iget v1, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlockIndex:I

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 632
    sget-object v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->LOGGER:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    const-string v2, "You have to call init() before doing anything"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;->error(Ljava/lang/String;)V

    .line 633
    throw v0

    :catch_1
    move-exception v0

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": curBlockIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlockIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", blocks.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->blocks:[Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 629
    sget-object v2, Lcom/audible/hushpuppy/sync/SyncDataContent;->LOGGER:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/audible/hushpuppy/sync/SyncDataContent;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;->error(Ljava/lang/String;)V

    .line 630
    throw v0
.end method

.method private findClosestAbookPos(J)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v14, p0

    .line 620
    invoke-direct/range {p0 .. p0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlock()Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    move-result-object v0

    iget-wide v3, v0, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->loAbookPos:J

    invoke-direct/range {p0 .. p0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlock()Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    move-result-object v0

    iget-wide v5, v0, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->hiAbookPos:J

    iget-wide v8, v14, Lcom/audible/hushpuppy/sync/SyncDataContent;->loAbookPos:J

    iget-wide v10, v14, Lcom/audible/hushpuppy/sync/SyncDataContent;->hiAbookPos:J

    iget-wide v12, v14, Lcom/audible/hushpuppy/sync/SyncDataContent;->loEbookPos:J

    iget-wide v1, v14, Lcom/audible/hushpuppy/sync/SyncDataContent;->hiEbookPos:J

    const/16 v7, 0x8

    move-object/from16 v0, p0

    move-wide v15, v1

    move-wide/from16 v1, p1

    move-wide v14, v15

    invoke-direct/range {v0 .. v15}, Lcom/audible/hushpuppy/sync/SyncDataContent;->findClosestPos(JJJIJJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private findClosestEbookPos(J)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v14, p0

    .line 615
    invoke-direct/range {p0 .. p0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlock()Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    move-result-object v0

    iget-wide v3, v0, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->loEbookPos:J

    invoke-direct/range {p0 .. p0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlock()Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    move-result-object v0

    iget-wide v5, v0, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->hiEbookPos:J

    iget-wide v8, v14, Lcom/audible/hushpuppy/sync/SyncDataContent;->loEbookPos:J

    iget-wide v10, v14, Lcom/audible/hushpuppy/sync/SyncDataContent;->hiEbookPos:J

    iget-wide v12, v14, Lcom/audible/hushpuppy/sync/SyncDataContent;->loAbookPos:J

    iget-wide v1, v14, Lcom/audible/hushpuppy/sync/SyncDataContent;->hiAbookPos:J

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide v15, v1

    move-wide/from16 v1, p1

    move-wide v14, v15

    invoke-direct/range {v0 .. v15}, Lcom/audible/hushpuppy/sync/SyncDataContent;->findClosestPos(JJJIJJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private findClosestPos(JJJIJJJJ)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    cmp-long v0, v2, p8

    if-gez v0, :cond_1

    .line 668
    iget-boolean v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->trace:Z

    if-eqz v0, :cond_0

    const-string v0, "Too low"

    .line 669
    invoke-direct {v1, v0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->note(Ljava/lang/String;)V

    :cond_0
    return-wide p12

    :cond_1
    cmp-long v0, v2, p10

    if-lez v0, :cond_3

    .line 678
    iget-boolean v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->trace:Z

    if-eqz v0, :cond_2

    const-string v0, "Too high"

    .line 679
    invoke-direct {v1, v0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->note(Ljava/lang/String;)V

    :cond_2
    return-wide p14

    :cond_3
    const-string v0, "curBlockIndex="

    const/4 v8, 0x0

    const/4 v9, 0x1

    cmp-long v10, v2, v4

    if-gez v10, :cond_6

    .line 696
    iget-boolean v11, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->trace:Z

    if-eqz v11, :cond_4

    .line 697
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " < "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/audible/hushpuppy/sync/SyncDataContent;->note(Ljava/lang/String;)V

    .line 699
    :cond_4
    iget-object v11, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->blocks:[Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    const/4 v12, 0x0

    iget v13, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlockIndex:I

    move-object/from16 p8, p0

    move-object/from16 p9, v11

    move/from16 p10, v12

    move/from16 p11, v13

    move-wide/from16 p12, p1

    move/from16 p14, p7

    invoke-virtual/range {p8 .. p14}, Lcom/audible/hushpuppy/sync/SyncDataContent;->binarySearch([Lcom/audible/hushpuppy/sync/SyncDataContent$Block;IIJI)I

    move-result v11

    iput v11, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlockIndex:I

    .line 700
    iget-boolean v11, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->trace:Z

    if-eqz v11, :cond_5

    .line 701
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlockIndex:I

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->note(Ljava/lang/String;)V

    .line 703
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlock()Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    move-result-object v0

    iget-wide v11, v0, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->fp:J

    invoke-direct {v1, v11, v12}, Lcom/audible/hushpuppy/sync/SyncDataContent;->readBlock(J)I

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    cmp-long v11, v2, v6

    if-lez v11, :cond_a

    .line 709
    iget-boolean v11, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->trace:Z

    if-eqz v11, :cond_7

    .line 710
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " > "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/audible/hushpuppy/sync/SyncDataContent;->note(Ljava/lang/String;)V

    .line 712
    :cond_7
    iget-object v11, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->blocks:[Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    iget v12, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlockIndex:I

    iget-object v13, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->blocks:[Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    array-length v13, v13

    sub-int/2addr v13, v9

    move-object/from16 p8, p0

    move-object/from16 p9, v11

    move/from16 p10, v12

    move/from16 p11, v13

    move-wide/from16 p12, p1

    move/from16 p14, p7

    invoke-virtual/range {p8 .. p14}, Lcom/audible/hushpuppy/sync/SyncDataContent;->binarySearch([Lcom/audible/hushpuppy/sync/SyncDataContent$Block;IIJI)I

    move-result v11

    iput v11, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlockIndex:I

    .line 713
    iget-boolean v11, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->trace:Z

    if-eqz v11, :cond_8

    .line 714
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlockIndex:I

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->note(Ljava/lang/String;)V

    .line 717
    :cond_8
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlock()Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    move-result-object v0

    iget-wide v11, v0, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->fp:J

    invoke-direct {v1, v11, v12}, Lcom/audible/hushpuppy/sync/SyncDataContent;->readBlock(J)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 719
    iget-object v2, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->errorHandler:Lcom/audible/hushpuppy/sync/SyncDataContent$IErrorHandler;

    if-eqz v2, :cond_9

    .line 720
    invoke-interface {v2, v0}, Lcom/audible/hushpuppy/sync/SyncDataContent$IErrorHandler;->handle(Ljava/lang/Throwable;)V

    .line 722
    :cond_9
    throw v0

    :cond_a
    const/4 v0, 0x0

    .line 735
    :goto_1
    iget-object v11, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    iget v12, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    add-int v12, v12, p7

    invoke-static {v11, v12}, Lcom/audible/hushpuppy/sync/SyncDataContent;->value([BI)J

    move-result-wide v11

    if-nez v10, :cond_b

    .line 737
    iput v8, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    goto/16 :goto_7

    :cond_b
    cmp-long v10, v2, v6

    if-nez v10, :cond_c

    .line 739
    invoke-direct/range {p0 .. p0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlock()Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    move-result-object v0

    iget-wide v2, v0, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->length:J

    const-wide/16 v4, 0x10

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    goto/16 :goto_7

    :cond_c
    cmp-long v6, v2, v11

    if-nez v6, :cond_d

    .line 741
    iget v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    add-int/2addr v0, v8

    iput v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    goto/16 :goto_7

    :cond_d
    if-nez v0, :cond_13

    const-string v0, " try in linear search"

    const-string v7, "Found value on #"

    if-lez v6, :cond_10

    .line 750
    invoke-direct/range {p0 .. p0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlock()Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    move-result-object v13

    .line 751
    iget v14, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    const/4 v15, 0x0

    :goto_2
    iget v8, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->numSearchesBeforeBinarySearch:I

    move/from16 p5, v10

    if-ge v15, v8, :cond_14

    int-to-long v9, v14

    move-wide/from16 p10, v11

    iget-wide v11, v13, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->length:J

    cmp-long v8, v9, v11

    if-gez v8, :cond_15

    .line 752
    iget-object v8, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    add-int v9, v14, p7

    invoke-static {v8, v9}, Lcom/audible/hushpuppy/sync/SyncDataContent;->value([BI)J

    move-result-wide v8

    cmp-long v10, v8, v2

    if-lez v10, :cond_f

    .line 754
    iget-boolean v8, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->trace:Z

    if-eqz v8, :cond_e

    .line 755
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->note(Ljava/lang/String;)V

    :cond_e
    add-int/lit8 v14, v14, -0x10

    .line 757
    iput v14, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    goto :goto_4

    :cond_f
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v14, v14, 0x10

    move/from16 v10, p5

    move-wide/from16 v11, p10

    const/4 v9, 0x1

    goto :goto_2

    :cond_10
    move/from16 p5, v10

    move-wide/from16 p10, v11

    .line 765
    iget v8, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    const/4 v9, 0x0

    :goto_3
    iget v10, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->numSearchesBeforeBinarySearch:I

    if-ge v9, v10, :cond_15

    if-ltz v8, :cond_15

    .line 766
    iget-object v10, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    add-int v11, v8, p7

    invoke-static {v10, v11}, Lcom/audible/hushpuppy/sync/SyncDataContent;->value([BI)J

    move-result-wide v10

    cmp-long v12, v10, v2

    if-gez v12, :cond_12

    .line 768
    iget-boolean v10, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->trace:Z

    if-eqz v10, :cond_11

    .line 769
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->note(Ljava/lang/String;)V

    .line 771
    :cond_11
    iput v8, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    :goto_4
    const/4 v8, 0x1

    goto :goto_5

    :cond_12
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, -0x10

    goto :goto_3

    :cond_13
    move/from16 p5, v10

    :cond_14
    move-wide/from16 p10, v11

    :cond_15
    const/4 v8, 0x0

    :goto_5
    if-nez v8, :cond_19

    .line 779
    iget v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    if-eqz v0, :cond_18

    iget v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    iget v7, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->blockSize:I

    if-ne v0, v7, :cond_16

    goto :goto_6

    :cond_16
    cmp-long v0, v4, v2

    if-gtz v0, :cond_17

    if-gez v6, :cond_17

    .line 782
    iget-object v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    const/4 v4, 0x0

    iget v5, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    move-object/from16 p8, p0

    move-object/from16 p9, v0

    move/from16 p10, v4

    move/from16 p11, v5

    move-wide/from16 p12, p1

    move/from16 p14, p7

    invoke-direct/range {p8 .. p14}, Lcom/audible/hushpuppy/sync/SyncDataContent;->binarySearch([BIIJI)I

    move-result v0

    iput v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    goto :goto_7

    :cond_17
    cmp-long v0, p10, v2

    if-gez v0, :cond_19

    if-gtz p5, :cond_19

    .line 784
    iget-object v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    iget v4, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    invoke-direct/range {p0 .. p0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlock()Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    move-result-object v5

    iget-wide v5, v5, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->length:J

    long-to-int v6, v5

    move-object/from16 p8, p0

    move-object/from16 p9, v0

    move/from16 p10, v4

    move/from16 p11, v6

    move-wide/from16 p12, p1

    move/from16 p14, p7

    invoke-direct/range {p8 .. p14}, Lcom/audible/hushpuppy/sync/SyncDataContent;->binarySearch([BIIJI)I

    move-result v0

    iput v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    goto :goto_7

    .line 780
    :cond_18
    :goto_6
    iget-object v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlock()Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    move-result-object v5

    iget-wide v5, v5, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->length:J

    long-to-int v6, v5

    move-object/from16 p8, p0

    move-object/from16 p9, v0

    move/from16 p10, v4

    move/from16 p11, v6

    move-wide/from16 p12, p1

    move/from16 p14, p7

    invoke-direct/range {p8 .. p14}, Lcom/audible/hushpuppy/sync/SyncDataContent;->binarySearch([BIIJI)I

    move-result v0

    iput v0, v1, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    :cond_19
    :goto_7
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method private getEBookPosFromAudiobookPosHelper(J)J
    .locals 5

    .line 518
    iget-wide v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->loAbookPos:J

    const-wide/16 v2, -0x1

    cmp-long v4, p1, v0

    if-ltz v4, :cond_2

    iget-wide v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->hiAbookPos:J

    cmp-long v4, p1, v0

    if-lez v4, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/sync/SyncDataContent;->findClosestAbookPos(J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    return-wide p1

    .line 530
    :cond_1
    iget-object p1, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    iget p2, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    add-int/lit8 p2, p2, 0x0

    invoke-static {p1, p2}, Lcom/audible/hushpuppy/sync/SyncDataContent;->value([BI)J

    move-result-wide p1

    return-wide p1

    :catch_0
    move-exception p1

    .line 527
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/sync/SyncDataContent;->handle(Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-wide v2
.end method

.method private handle(Ljava/lang/Exception;)V
    .locals 2

    .line 535
    sget-object v0, Lcom/audible/hushpuppy/sync/SyncDataContent;->LOGGER:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 536
    invoke-static {}, Lcom/audible/hushpuppy/sync/SyncIntegration;->getDelegate()Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;->reportFailureMetric()V

    return-void
.end method

.method private note(Ljava/lang/String;)V
    .locals 1

    .line 947
    sget-object v0, Lcom/audible/hushpuppy/sync/SyncDataContent;->LOGGER:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private readBlock(J)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 909
    iget-boolean v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->trace:Z

    if-eqz v0, :cond_0

    .line 910
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 911
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/sync/SyncDataContent;->seek(J)V

    .line 912
    iget-object p1, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->reader:Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;

    iget-object p2, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;->read([B)I

    move-result p1

    .line 913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 914
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Block read "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes in "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/audible/hushpuppy/sync/SyncDataContent;->note(Ljava/lang/String;)V

    goto :goto_0

    .line 916
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/sync/SyncDataContent;->seek(J)V

    .line 917
    iget-object p1, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->reader:Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;

    iget-object p2, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;->read([B)I

    move-result p1

    :goto_0
    const/4 p2, 0x0

    .line 919
    iput p2, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    return p1
.end method

.method private seek(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->reader:Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;

    iget-wide v1, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->syncDataOffset:J

    add-long/2addr v1, p1

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/sync/SyncDataContent$RandomAccessFileReader;->seek(J)V

    return-void
.end method

.method static value([BI)J
    .locals 3

    add-int/lit8 v0, p1, 0x3

    .line 933
    array-length v1, p0

    if-lt v0, v1, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 937
    :cond_0
    aget-byte v0, p0, v0

    add-int/lit8 v1, p1, 0x2

    .line 938
    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x1

    .line 939
    aget-byte v2, p0, v2

    add-int/lit8 p1, p1, 0x0

    .line 940
    aget-byte p0, p0, p1

    and-int/lit16 p1, v0, 0xff

    shl-int/lit8 p1, p1, 0x18

    and-int/lit16 v0, v1, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    and-int/lit16 v0, v2, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    int-to-long p0, p0

    return-wide p0
.end method


# virtual methods
.method protected binarySearch([Lcom/audible/hushpuppy/sync/SyncDataContent$Block;IIJI)I
    .locals 6

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-gt p2, p3, :cond_3

    add-int v0, p2, p3

    ushr-int/lit8 v0, v0, 0x1

    if-nez p6, :cond_0

    .line 821
    aget-object v1, p1, v0

    iget-wide v1, v1, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->loEbookPos:J

    .line 822
    aget-object v3, p1, v0

    iget-wide v3, v3, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->hiEbookPos:J

    goto :goto_1

    .line 824
    :cond_0
    aget-object v1, p1, v0

    iget-wide v1, v1, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->loAbookPos:J

    .line 825
    aget-object v3, p1, v0

    iget-wide v3, v3, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->hiAbookPos:J

    :goto_1
    cmp-long v5, p4, v3

    if-lez v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    move p2, v0

    goto :goto_0

    :cond_1
    cmp-long p3, v1, p4

    if-gtz p3, :cond_2

    if-gtz v5, :cond_2

    move p2, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    move p3, v0

    goto :goto_0

    :cond_3
    :goto_2
    return p2
.end method

.method public getAsinId()Ljava/lang/String;
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->asinId:Ljava/lang/String;

    return-object v0
.end method

.method public getAudiobookPosFromEBookPos(J)J
    .locals 16

    move-object/from16 v0, p0

    .line 373
    invoke-virtual/range {p0 .. p2}, Lcom/audible/hushpuppy/sync/SyncDataContent;->getAudiobookPosFromEBookPosHelper(J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-wide v1

    .line 378
    :cond_0
    iget v5, v0, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    int-to-long v5, v5

    invoke-direct/range {p0 .. p0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlock()Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    move-result-object v7

    iget-wide v7, v7, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->length:J

    const-wide/16 v9, 0x10

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    cmp-long v9, v5, v7

    if-ltz v9, :cond_1

    return-wide v1

    .line 381
    :cond_1
    iget-object v5, v0, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    iget v6, v0, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    add-int/lit8 v6, v6, 0x0

    invoke-static {v5, v6}, Lcom/audible/hushpuppy/sync/SyncDataContent;->value([BI)J

    .line 382
    iget-object v5, v0, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    iget v6, v0, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    add-int/lit8 v6, v6, 0x4

    invoke-static {v5, v6}, Lcom/audible/hushpuppy/sync/SyncDataContent;->value([BI)J

    move-result-wide v5

    .line 383
    iget-object v7, v0, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    iget v8, v0, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    add-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, 0x0

    invoke-static {v7, v8}, Lcom/audible/hushpuppy/sync/SyncDataContent;->value([BI)J

    move-result-wide v7

    .line 384
    iget-object v9, v0, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    iget v10, v0, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    add-int/lit8 v10, v10, 0x10

    add-int/lit8 v10, v10, 0x4

    invoke-static {v9, v10}, Lcom/audible/hushpuppy/sync/SyncDataContent;->value([BI)J

    .line 385
    iget-object v9, v0, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    iget v10, v0, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    add-int/lit8 v10, v10, 0x10

    add-int/lit8 v10, v10, 0x8

    invoke-static {v9, v10}, Lcom/audible/hushpuppy/sync/SyncDataContent;->value([BI)J

    move-result-wide v9

    cmp-long v11, p1, v7

    if-ltz v11, :cond_2

    return-wide v9

    :cond_2
    cmp-long v11, p1, v5

    if-gtz v11, :cond_3

    return-wide v1

    :cond_3
    sub-long v11, v1, v9

    .line 392
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    cmp-long v15, v11, v13

    if-gtz v15, :cond_5

    sub-long v3, p1, v5

    sub-long v7, v7, p1

    cmp-long v5, v3, v7

    if-gez v5, :cond_4

    goto :goto_0

    :cond_4
    move-wide v1, v9

    :goto_0
    return-wide v1

    :cond_5
    return-wide v3
.end method

.method public getAudiobookPosFromEBookPosHelper(J)J
    .locals 5

    .line 465
    iget-wide v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->loEbookPos:J

    const-wide/16 v2, -0x1

    cmp-long v4, p1, v0

    if-ltz v4, :cond_2

    iget-wide v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->hiEbookPos:J

    cmp-long v4, p1, v0

    if-lez v4, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/sync/SyncDataContent;->findClosestEbookPos(J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    return-wide p1

    .line 477
    :cond_1
    iget-object p1, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    iget p2, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    add-int/lit8 p2, p2, 0x8

    invoke-static {p1, p2}, Lcom/audible/hushpuppy/sync/SyncDataContent;->value([BI)J

    move-result-wide p1

    return-wide p1

    :catch_0
    move-exception p1

    .line 474
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/sync/SyncDataContent;->handle(Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-wide v2
.end method

.method public getEBookPosFromAudiobookPos(J)J
    .locals 13

    .line 483
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/sync/SyncDataContent;->getEBookPosFromAudiobookPosHelper(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 488
    iget-wide v2, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->hiAbookPos:J

    cmp-long v4, v2, p1

    if-gtz v4, :cond_0

    iget-wide v2, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->hiAbookEndPos:J

    cmp-long v4, p1, v2

    if-gtz v4, :cond_0

    .line 489
    iget-wide p1, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->hiEbookPos:J

    return-wide p1

    :cond_0
    return-wide v0

    .line 493
    :cond_1
    iget v4, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    int-to-long v4, v4

    invoke-direct {p0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->curBlock()Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    move-result-object v6

    iget-wide v6, v6, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->length:J

    const-wide/16 v8, 0x10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    return-wide v0

    .line 497
    :cond_2
    iget-object v4, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    iget v5, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    add-int/lit8 v5, v5, 0xc

    invoke-static {v4, v5}, Lcom/audible/hushpuppy/sync/SyncDataContent;->value([BI)J

    move-result-wide v4

    .line 498
    iget-object v6, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    iget v7, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    add-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, 0x8

    invoke-static {v6, v7}, Lcom/audible/hushpuppy/sync/SyncDataContent;->value([BI)J

    move-result-wide v6

    .line 499
    iget-object v8, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->block:[B

    iget v9, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->bp:I

    add-int/lit8 v9, v9, 0x10

    add-int/lit8 v9, v9, 0x0

    invoke-static {v8, v9}, Lcom/audible/hushpuppy/sync/SyncDataContent;->value([BI)J

    move-result-wide v8

    cmp-long v10, p1, v6

    if-ltz v10, :cond_3

    return-wide v8

    :cond_3
    cmp-long v10, p1, v4

    if-gtz v10, :cond_4

    return-wide v0

    :cond_4
    sub-long v4, p1, v4

    sub-long/2addr v6, p1

    .line 507
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v10, 0x3e8

    cmp-long v12, p1, v10

    if-gtz v12, :cond_6

    cmp-long p1, v4, v6

    if-gez p1, :cond_5

    goto :goto_0

    :cond_5
    move-wide v0, v8

    :goto_0
    return-wide v0

    :cond_6
    return-wide v2
.end method

.method getHiAudiobookPos()J
    .locals 2

    .line 352
    iget-wide v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->hiAbookPos:J

    return-wide v0
.end method

.method getHiEbookPos()J
    .locals 2

    .line 342
    iget-wide v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->hiEbookPos:J

    return-wide v0
.end method

.method getLoAudiobookPos()J
    .locals 2

    .line 347
    iget-wide v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->loAbookPos:J

    return-wide v0
.end method

.method getLoEbookPos()J
    .locals 2

    .line 337
    iget-wide v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->loEbookPos:J

    return-wide v0
.end method

.method public getMaxAudiobookPosFromEBookRange(JJ)J
    .locals 5

    .line 419
    iget-wide v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->loEbookPos:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 420
    iget-wide v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->hiEbookPos:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :goto_0
    const-wide/16 v0, -0x1

    cmp-long v2, p3, p1

    if-ltz v2, :cond_1

    .line 423
    invoke-virtual {p0, p3, p4}, Lcom/audible/hushpuppy/sync/SyncDataContent;->getAudiobookPosFromEBookPos(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    return-wide v2

    :cond_0
    const-wide/16 v0, 0x1

    sub-long/2addr p3, v0

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public getMinAudiobookPosFromEBookRange(JJ)J
    .locals 5

    .line 402
    iget-wide v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->loEbookPos:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 403
    iget-wide v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->hiEbookPos:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :goto_0
    const-wide/16 v0, -0x1

    cmp-long v2, p1, p3

    if-gtz v2, :cond_1

    .line 406
    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/sync/SyncDataContent;->getAudiobookPosFromEBookPos(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 408
    sget-object p3, Lcom/audible/hushpuppy/sync/SyncDataContent;->LOGGER:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found mapped audiobook position for eBook position "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;->trace(Ljava/lang/String;)V

    return-wide v2

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method getSource()Ljava/lang/String;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->source:Ljava/lang/String;

    return-object v0
.end method

.method init()V
    .locals 1

    .line 362
    iget v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->blockSize:I

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->createBlocks(I)[Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->blocks:[Lcom/audible/hushpuppy/sync/SyncDataContent$Block;

    return-void
.end method

.method setAsinId(Ljava/lang/String;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->asinId:Ljava/lang/String;

    return-void
.end method

.method setErrorHandler(Lcom/audible/hushpuppy/sync/SyncDataContent$IErrorHandler;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->errorHandler:Lcom/audible/hushpuppy/sync/SyncDataContent$IErrorHandler;

    return-void
.end method

.method setTrace(Z)V
    .locals 0

    .line 324
    iput-boolean p1, p0, Lcom/audible/hushpuppy/sync/SyncDataContent;->trace:Z

    return-void
.end method
