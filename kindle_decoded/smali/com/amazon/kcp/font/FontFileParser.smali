.class public Lcom/amazon/kcp/font/FontFileParser;
.super Ljava/lang/Object;
.source "FontFileParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/font/FontFileParser$NameRecord;,
        Lcom/amazon/kcp/font/FontFileParser$NameTableHeader;,
        Lcom/amazon/kcp/font/FontFileParser$TableRecord;
    }
.end annotation


# static fields
.field private static final ENCODING_ID_UNICODE:I = 0x1

.field private static final LANGUAGE_ID_ENGLISH:I = 0x409

.field private static final NAME_ID_FONT_FAMILY:I = 0x1

.field private static final NAME_ID_FONT_SUB_FAMILY:I = 0x2

.field private static final NAME_ID_TYPOGRAPHIC_FAMILY:I = 0x10

.field private static final OTF_FILE_EXTENSION:Ljava/lang/String; = ".otf"

.field private static final PLATFORM_ID_WINDOWS:I = 0x3

.field private static final TABLE_RECORD_NAME:Ljava/lang/String; = "name"

.field private static final TTC_FILE_EXTENSION:Ljava/lang/String; = ".ttc"

.field private static final TTF_FILE_EXTENSION:Ljava/lang/String; = ".ttf"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseTTCFileHeader(Ljava/io/RandomAccessFile;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 74
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    .line 76
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 81
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v0

    .line 82
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v1

    .line 83
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    return-object v4

    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    return-object v4

    :cond_2
    if-gt v2, p2, :cond_3

    return-object v4

    :cond_3
    :goto_0
    if-ge v3, p2, :cond_4

    .line 97
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    :cond_4
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p2

    int-to-long v0, p2

    .line 100
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 102
    invoke-direct {p0, p1}, Lcom/amazon/kcp/font/FontFileParser;->parseTTFFileHeader(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseTTFFileHeader(Ljava/io/RandomAccessFile;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 125
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 126
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    .line 127
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x10000

    if-eq v4, v7, :cond_0

    const v7, 0x4f54544f    # 3.56229504E9f

    if-eq v4, v7, :cond_0

    return-object v6

    :cond_0
    const-wide/16 v7, 0xc

    add-long/2addr v2, v7

    .line 134
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 140
    new-instance v3, Lcom/amazon/kcp/font/FontFileParser$TableRecord;

    invoke-direct {v3, v0, v6}, Lcom/amazon/kcp/font/FontFileParser$TableRecord;-><init>(Lcom/amazon/kcp/font/FontFileParser;Lcom/amazon/kcp/font/FontFileParser$1;)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v5, :cond_4

    .line 142
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v9

    .line 143
    array-length v10, v2

    if-ge v9, v10, :cond_1

    .line 144
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 145
    invoke-virtual {v10, v2, v4, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 146
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 148
    :cond_1
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v9, v3, Lcom/amazon/kcp/font/FontFileParser$TableRecord;->name:Ljava/lang/String;

    .line 149
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    .line 150
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    iput v9, v3, Lcom/amazon/kcp/font/FontFileParser$TableRecord;->offset:I

    .line 151
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    .line 153
    iget-object v9, v3, Lcom/amazon/kcp/font/FontFileParser$TableRecord;->name:Ljava/lang/String;

    const-string/jumbo v10, "name"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    .line 156
    :cond_2
    iget-object v9, v3, Lcom/amazon/kcp/font/FontFileParser$TableRecord;->name:Ljava/lang/String;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_5

    return-object v6

    .line 165
    :cond_5
    iget v2, v3, Lcom/amazon/kcp/font/FontFileParser$TableRecord;->offset:I

    int-to-long v9, v2

    invoke-virtual {v1, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 166
    new-instance v2, Lcom/amazon/kcp/font/FontFileParser$NameTableHeader;

    invoke-direct {v2, v0, v6}, Lcom/amazon/kcp/font/FontFileParser$NameTableHeader;-><init>(Lcom/amazon/kcp/font/FontFileParser;Lcom/amazon/kcp/font/FontFileParser$1;)V

    .line 167
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readShort()S

    .line 168
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v5

    iput v5, v2, Lcom/amazon/kcp/font/FontFileParser$NameTableHeader;->nRCount:I

    .line 169
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v5

    iput v5, v2, Lcom/amazon/kcp/font/FontFileParser$NameTableHeader;->storageOffset:I

    .line 171
    new-instance v5, Lcom/amazon/kcp/font/FontFileParser$NameRecord;

    invoke-direct {v5, v0, v6}, Lcom/amazon/kcp/font/FontFileParser$NameRecord;-><init>(Lcom/amazon/kcp/font/FontFileParser;Lcom/amazon/kcp/font/FontFileParser$1;)V

    move-object v7, v6

    const/4 v9, 0x0

    .line 172
    :goto_3
    iget v10, v2, Lcom/amazon/kcp/font/FontFileParser$NameTableHeader;->nRCount:I

    if-ge v9, v10, :cond_c

    .line 173
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v10

    iput v10, v5, Lcom/amazon/kcp/font/FontFileParser$NameRecord;->platformID:I

    .line 174
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v10

    iput v10, v5, Lcom/amazon/kcp/font/FontFileParser$NameRecord;->encodingID:I

    .line 175
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v10

    iput v10, v5, Lcom/amazon/kcp/font/FontFileParser$NameRecord;->languageID:I

    .line 176
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v10

    iput v10, v5, Lcom/amazon/kcp/font/FontFileParser$NameRecord;->nameID:I

    .line 177
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v10

    iput v10, v5, Lcom/amazon/kcp/font/FontFileParser$NameRecord;->stringLength:I

    .line 178
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v10

    iput v10, v5, Lcom/amazon/kcp/font/FontFileParser$NameRecord;->stringOffset:I

    .line 180
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    .line 181
    iget v12, v5, Lcom/amazon/kcp/font/FontFileParser$NameRecord;->nameID:I

    const/16 v13, 0x10

    if-eq v12, v13, :cond_6

    if-eq v12, v8, :cond_6

    const/4 v14, 0x2

    if-ne v12, v14, :cond_a

    :cond_6
    iget v12, v5, Lcom/amazon/kcp/font/FontFileParser$NameRecord;->platformID:I

    const/4 v14, 0x3

    if-ne v12, v14, :cond_a

    iget v12, v5, Lcom/amazon/kcp/font/FontFileParser$NameRecord;->encodingID:I

    if-ne v12, v8, :cond_a

    iget v12, v5, Lcom/amazon/kcp/font/FontFileParser$NameRecord;->languageID:I

    const/16 v14, 0x409

    if-ne v12, v14, :cond_a

    .line 184
    iget v12, v5, Lcom/amazon/kcp/font/FontFileParser$NameRecord;->stringLength:I

    new-array v14, v12, [B

    .line 185
    iget v15, v3, Lcom/amazon/kcp/font/FontFileParser$TableRecord;->offset:I

    iget v8, v2, Lcom/amazon/kcp/font/FontFileParser$NameTableHeader;->storageOffset:I

    add-int/2addr v15, v8

    iget v8, v5, Lcom/amazon/kcp/font/FontFileParser$NameRecord;->stringOffset:I

    add-int/2addr v15, v8

    move-object/from16 v16, v5

    int-to-long v4, v15

    .line 186
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 187
    invoke-virtual {v1, v14}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    if-ge v4, v12, :cond_7

    .line 189
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v8, 0x0

    .line 190
    invoke-virtual {v5, v14, v8, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 191
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    .line 195
    :goto_4
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "utf-16"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v14, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v5, v16

    .line 197
    iget v12, v5, Lcom/amazon/kcp/font/FontFileParser$NameRecord;->nameID:I

    if-ne v12, v13, :cond_8

    move-object v6, v4

    :goto_5
    const/4 v13, 0x1

    goto :goto_7

    :cond_8
    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    :goto_6
    move-object v7, v4

    goto :goto_7

    :cond_9
    if-eqz v7, :cond_b

    .line 201
    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    const-string v12, ""

    .line 204
    invoke-virtual {v7, v4, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    goto :goto_5

    .line 208
    :cond_b
    :goto_7
    invoke-virtual {v1, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x1

    goto/16 :goto_3

    :cond_c
    if-eqz v6, :cond_d

    return-object v6

    :cond_d
    return-object v7
.end method


# virtual methods
.method public getFontFamilyNameOfFile(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 33
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, ".ttc"

    .line 34
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-direct {p0, v1, p2}, Lcom/amazon/kcp/font/FontFileParser;->parseTTCFileHeader(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string p2, ".ttf"

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, ".otf"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 37
    :cond_1
    invoke-direct {p0, v1}, Lcom/amazon/kcp/font/FontFileParser;->parseTTFFileHeader(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-object v1, v0

    :catch_1
    if-eqz v1, :cond_3

    .line 44
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    nop

    :catch_2
    :cond_3
    return-object v0
.end method
