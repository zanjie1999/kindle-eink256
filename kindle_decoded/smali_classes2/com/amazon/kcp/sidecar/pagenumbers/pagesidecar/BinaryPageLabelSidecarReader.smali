.class public Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;
.super Ljava/lang/Object;
.source "BinaryPageLabelSidecarReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final MAX_SUPPORTED_POSITION:I = 0x7fffffff

.field private static final MAX_SUPPORTED_POSITION_WIDTH:I = 0x20

.field private static final METADATA_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final READ_ONLY_MODE:Ljava/lang/String; = "r"

.field private static final SUPPORTED_EDITION_VERSION:I = 0x1

.field private static final SUPPORTED_HEADER_VERSION:I = 0x1


# instance fields
.field private volatile cachedEdition:I

.field private editionCount:I

.field private editionOffsets:[I

.field private editionVersions:[I

.field private headerMetadata:Ljava/lang/String;

.field private headerVersion:I

.field private input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

.field private volatile isEditionHeaderCached:[Z

.field private volatile isFileHeaderCached:Z

.field private metadataByEdition:[Ljava/lang/String;

.field private pagePositionOffsets:[I

.field private pagePositionsForCachedEdition:[I

.field private positionWidthByEdition:[I

.field private totalPagesByEdition:[I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->isFileHeaderCached:Z

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->cachedEdition:I

    .line 60
    new-instance v0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    const-string v1, "r"

    const/16 v2, 0x1000

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    return-void
.end method

.method private declared-synchronized cacheEditionHeader(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 197
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->cacheFileHeader()V

    .line 198
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->editionCount:I

    invoke-static {p1, v0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->validateEditionIndex(II)V

    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->isEditionHeaderCached:[Z

    aget-boolean v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 200
    monitor-exit p0

    return-void

    .line 203
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    iget-object v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->editionOffsets:[I

    aget v1, v1, p1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->seek(J)V

    .line 204
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    invoke-virtual {v0}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->readShort()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 210
    iget-object v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    invoke-virtual {v2}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->readShort()I

    move-result v2

    .line 211
    iget-object v3, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    invoke-virtual {v3}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->readShort()I

    move-result v3

    .line 212
    iget-object v4, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    invoke-virtual {v4}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->readShort()I

    move-result v4

    const/16 v5, 0x20

    if-gt v4, v5, :cond_2

    .line 219
    new-array v5, v2, [B

    const-string v6, ""

    if-lez v2, :cond_1

    .line 222
    iget-object v6, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    invoke-virtual {v6, v5}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->read([B)I

    move-result v6

    .line 223
    invoke-static {v2, v6, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->validateMetadataSize(III)V

    .line 224
    new-instance v6, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v6, v5, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->pagePositionOffsets:[I

    iget-object v5, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    invoke-virtual {v5}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->getFilePointer()J

    move-result-wide v7

    long-to-int v5, v7

    aput v5, v2, p1

    .line 228
    iget-object v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->editionVersions:[I

    aput v0, v2, p1

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->totalPagesByEdition:[I

    aput v3, v0, p1

    .line 230
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->positionWidthByEdition:[I

    aput v4, v0, p1

    .line 231
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->metadataByEdition:[Ljava/lang/String;

    aput-object v6, v0, p1

    .line 232
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->isEditionHeaderCached:[Z

    aput-boolean v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 215
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported pagination format position width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for edition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_3
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported edition pagination format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for edition "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized cacheFileHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 151
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->isFileHeaderCached:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 152
    monitor-exit p0

    return-void

    .line 155
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->seek(J)V

    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    invoke-virtual {v0}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->readShort()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->headerVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    invoke-virtual {v0}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->readShort()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->editionCount:I

    .line 163
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->editionOffsets:[I

    const/4 v0, 0x0

    .line 164
    :goto_0
    iget v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->editionCount:I

    if-ge v0, v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->editionOffsets:[I

    iget-object v3, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    invoke-virtual {v3}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->readInt()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    invoke-virtual {v0}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->readInt()I

    move-result v0

    .line 169
    new-array v2, v0, [B

    const-string v3, ""

    .line 170
    iput-object v3, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->headerMetadata:Ljava/lang/String;

    if-lez v0, :cond_2

    .line 172
    iget-object v3, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    invoke-virtual {v3, v2}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->read([B)I

    move-result v3

    const/4 v4, -0x1

    .line 173
    invoke-static {v0, v3, v4}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->validateMetadataSize(III)V

    .line 174
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->headerMetadata:Ljava/lang/String;

    .line 177
    :cond_2
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->editionCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->pagePositionOffsets:[I

    .line 178
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->editionCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->editionVersions:[I

    .line 179
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->editionCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->totalPagesByEdition:[I

    .line 180
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->editionCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->positionWidthByEdition:[I

    .line 181
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->editionCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->metadataByEdition:[Ljava/lang/String;

    .line 182
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->editionCount:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->isEditionHeaderCached:[Z

    .line 183
    iput-boolean v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->isFileHeaderCached:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 158
    :cond_3
    :try_start_2
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported page numbering file format version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->headerVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized cachePagePositions(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 236
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->cacheEditionHeader(I)V

    .line 237
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->cachedEdition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 238
    monitor-exit p0

    return-void

    .line 241
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->totalPagesByEdition:[I

    aget v0, v0, p1

    .line 242
    iget-object v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->positionWidthByEdition:[I

    aget v1, v1, p1

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v0, 0x1

    .line 243
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->pagePositionsForCachedEdition:[I

    .line 244
    iget-object v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    iget-object v3, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->pagePositionOffsets:[I

    aget v3, v3, p1

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->seek(J)V

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v0, :cond_1

    .line 246
    invoke-direct {p0, v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->readPosition(I)J

    move-result-wide v3

    .line 247
    invoke-static {v3, v4}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->validatePosition(J)V

    .line 248
    iget-object v5, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->pagePositionsForCachedEdition:[I

    long-to-int v4, v3

    aput v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->pagePositionsForCachedEdition:[I

    invoke-static {v0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->validatePositionsArray([I)V

    .line 251
    iput p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->cachedEdition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private readPosition(I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int/lit8 v0, p1, 0x8

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    add-int/lit8 v0, v0, -0x8

    .line 259
    iget-object v4, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    invoke-virtual {v4}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->read()I

    move-result v4

    shl-int/2addr v4, v0

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private static validateEditionIndex(II)V
    .locals 3

    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    return-void

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The requested page numbering edition at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is out of bounds for the available count of editions "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateMetadataSize(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eq p1, p0, :cond_1

    .line 291
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The metadata region was specified as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes but ended after "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "for edition "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "for the header"

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static validatePosition(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    return-void

    .line 274
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported pagination position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " exceeding the maximum in-memory position "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p0, 0x7fffffff

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validatePositionsArray([I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 280
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 281
    aget v2, p0, v1

    aget v3, p0, v0

    if-gt v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    new-instance v2, Ljava/io/InvalidObjectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid position value at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", previous position: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p0, v1

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    :try_start_1
    invoke-virtual {v0}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->close()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    .line 127
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->input:Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 139
    throw v0
.end method

.method public getEditionCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->cacheFileHeader()V

    .line 98
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->editionCount:I

    return v0
.end method

.method public getEditionMetadata(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->cacheEditionHeader(I)V

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->metadataByEdition:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getHeaderMetadata()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->cacheFileHeader()V

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->headerMetadata:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdinalPagePositions(I)[I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->cachePagePositions(I)V

    .line 113
    iget-object p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->pagePositionsForCachedEdition:[I

    return-object p1
.end method

.method public getTotalPageCount(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->cacheEditionHeader(I)V

    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->totalPagesByEdition:[I

    aget p1, v0, p1

    return p1
.end method
