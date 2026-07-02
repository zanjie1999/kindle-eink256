.class public final Lcom/amazon/kcp/reader/provider/BookImageProviderHelper;
.super Ljava/lang/Object;
.source "BookImageProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/provider/BookImageProviderHelper$PayloadGenerator;
    }
.end annotation


# static fields
.field private static final INT_SIZE:I = 0x4

.field private static final MAX_PIPE_WRITE_RETRY_INTERVAL_MILLIS:J = 0x10L

.field private static final MAX_PIPE_WRITE_WAIT_TIME_MILLIS:J = 0x7d0L

.field private static final STATUS_CODE_EXCEPTION:I = 0x1

.field private static final STATUS_CODE_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.reader.provider.BookImageProviderHelper"

.field private static final bookImageProviderUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.amazon.kcp.reader.provider.BookImageProvider"

    .line 49
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper;->bookImageProviderUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Throwable;)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper;->getPayloadForException(Ljava/lang/Throwable;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper;->getPayloadForBitmap(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static getFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 355
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 356
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 357
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 360
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPayloadForBitmap(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    :goto_0
    if-nez p0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 204
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    :goto_1
    if-nez p0, :cond_2

    goto :goto_2

    .line 205
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_2
    add-int/lit8 v3, v1, 0xc

    .line 207
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 208
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 209
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 210
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_3

    .line 212
    invoke-virtual {p0, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 214
    :cond_3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v3
.end method

.method private static getPayloadForException(Ljava/lang/Throwable;)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 220
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 221
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 222
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 223
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 225
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 226
    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 227
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 228
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method private static isCausedByEAGAIN(Ljava/io/IOException;)Z
    .locals 5

    .line 328
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 330
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "libcore.io.ErrnoException"

    const-string v3, "errno"

    invoke-static {v2, v3, p0, v1}, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper;->getFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 331
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "libcore.io.OsConstants"

    const-string v4, "EAGAIN"

    invoke-static {v3, v4, v1, v2}, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper;->getFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    .line 333
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static setBlocking(Ljava/io/FileDescriptor;Z)V
    .locals 7

    :try_start_0
    const-string v0, "libcore.io.IoUtils"

    .line 170
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setBlocking"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 171
    const-class v4, Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 172
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 175
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "failed to set blocking mode for file descriptor"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static writeBitmapToFileDescriptor(Landroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 95
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "wrong bitmap config. ARGB_8888 required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 99
    new-instance v1, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper$2;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper;->writeToFileDescriptor(Landroid/os/ParcelFileDescriptor;ILcom/amazon/kcp/reader/provider/BookImageProviderHelper$PayloadGenerator;)V

    return-void
.end method

.method public static writeExceptionToFileDescriptor(Ljava/lang/Throwable;Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper$1;-><init>(Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    invoke-static {p1, p0, v0}, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper;->writeToFileDescriptor(Landroid/os/ParcelFileDescriptor;ILcom/amazon/kcp/reader/provider/BookImageProviderHelper$PayloadGenerator;)V

    return-void
.end method

.method private static writeFully(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v0, 0x7d0

    const-wide/16 v2, 0x1

    :goto_0
    move-wide v4, v0

    move-wide v6, v2

    .line 296
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 298
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    .line 307
    invoke-static {v8}, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper;->isCausedByEAGAIN(Ljava/io/IOException;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-wide/16 v9, 0x0

    cmp-long v11, v4, v9

    if-lez v11, :cond_0

    sub-long/2addr v4, v6

    .line 309
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    const-wide/16 v8, 0x2

    mul-long v6, v6, v8

    const-wide/16 v8, 0x10

    .line 310
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_1

    .line 312
    :cond_0
    throw v8

    :cond_1
    return-void
.end method

.method private static writeToFileDescriptor(Landroid/os/ParcelFileDescriptor;ILcom/amazon/kcp/reader/provider/BookImageProviderHelper$PayloadGenerator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 185
    :try_start_0
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v2, 0x4

    .line 188
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 189
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 190
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 191
    invoke-static {v0, v2}, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper;->writeFully(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    .line 192
    invoke-interface {p2}, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper$PayloadGenerator;->getPayload()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper;->writeFully(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 197
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 198
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-object p1, v0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-object p1, v0

    .line 194
    :goto_0
    :try_start_2
    new-instance p2, Ljava/lang/InterruptedException;

    const-string v1, "interrupted while writting to channel"

    invoke-direct {p2, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p2

    move-object v1, v0

    move-object v0, p1

    move-object p1, p2

    .line 196
    :goto_1
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 197
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 198
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 199
    throw p1
.end method
