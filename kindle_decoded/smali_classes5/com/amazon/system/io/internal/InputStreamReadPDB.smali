.class public Lcom/amazon/system/io/internal/InputStreamReadPDB;
.super Ljava/lang/Object;
.source "InputStreamReadPDB.java"

# interfaces
.implements Lcom/amazon/kcp/pdb/ReadPDB;


# static fields
.field private static final FIXED_HEADER_SIZE:I = 0x4e

.field private static final PER_RECORD_HEADER_SIZE:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private fileInputStream:Lcom/amazon/kindle/io/IFileInputStream;

.field private final header:[B

.field private final recordCount:I

.field private final totalSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/system/io/internal/InputStreamReadPDB;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/io/IFileInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->fileInputStream:Lcom/amazon/kindle/io/IFileInputStream;

    if-eqz p1, :cond_2

    .line 67
    invoke-virtual {p1}, Lcom/amazon/kindle/io/IFileInputStream;->size()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->totalSize:I

    const/16 p1, 0x4e

    new-array v0, p1, [B

    .line 71
    iget-object v1, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->fileInputStream:Lcom/amazon/kindle/io/IFileInputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const-string v2, "Invalid PDB: unexpected end of file"

    if-ne v1, p1, :cond_1

    .line 76
    invoke-static {v0}, Lcom/amazon/kcp/pdb/PDBUtilities;->getRecordCount([B)I

    move-result v1

    iput v1, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->recordCount:I

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v1, 0x4e

    .line 81
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->header:[B

    const/4 v4, 0x0

    .line 82
    invoke-static {v0, v4, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget-object v0, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->fileInputStream:Lcom/amazon/kindle/io/IFileInputStream;

    iget-object v3, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->header:[B

    invoke-virtual {v0, v3, p1, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v1, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid inputStream"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->fileInputStream:Lcom/amazon/kindle/io/IFileInputStream;

    if-eqz v0, :cond_0

    .line 98
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 100
    sget-object v1, Lcom/amazon/system/io/internal/InputStreamReadPDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->fileInputStream:Lcom/amazon/kindle/io/IFileInputStream;

    return-void
.end method

.method public getHeader()[B
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->header:[B

    return-object v0
.end method

.method public getRecord(I)[B
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, p1, v0, v0}, Lcom/amazon/system/io/internal/InputStreamReadPDB;->getRecord(I[B[I)[B

    move-result-object p1

    return-object p1
.end method

.method public getRecord(I[B[I)[B
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->header:[B

    invoke-static {v0, p1}, Lcom/amazon/kcp/pdb/PDBUtilities;->getOffset([BI)I

    move-result v0

    .line 135
    iget v1, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->recordCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->header:[B

    add-int/lit8 v2, p1, 0x1

    .line 136
    invoke-static {v1, v2}, Lcom/amazon/kcp/pdb/PDBUtilities;->getOffset([BI)I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->totalSize:I

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge v1, v0, :cond_1

    .line 141
    sget-object p2, Lcom/amazon/system/io/internal/InputStreamReadPDB;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong offset for record "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    sub-int/2addr v1, v0

    if-eqz p2, :cond_2

    .line 146
    :try_start_0
    array-length p1, p2

    if-ge p1, v1, :cond_3

    .line 147
    :cond_2
    new-array p2, v1, [B

    .line 150
    :cond_3
    iget-object p1, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->fileInputStream:Lcom/amazon/kindle/io/IFileInputStream;

    int-to-long v4, v0

    invoke-virtual {p1, v4, v5}, Lcom/amazon/kindle/io/IFileInputStream;->resetAndSkip(J)V

    .line 151
    iget-object p1, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->fileInputStream:Lcom/amazon/kindle/io/IFileInputStream;

    invoke-virtual {p1, p2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 152
    array-length v0, p2

    if-ge p1, v0, :cond_4

    .line 153
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 154
    invoke-virtual {v0, p2, v3, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 155
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p1

    goto :goto_1

    :cond_4
    move-object v2, p2

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz p3, :cond_5

    .line 164
    array-length p1, p3

    if-lez p1, :cond_5

    .line 165
    aput v1, p3, v3

    :cond_5
    return-object v2
.end method
