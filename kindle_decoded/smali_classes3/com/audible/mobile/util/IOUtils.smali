.class public Lcom/audible/mobile/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final EOF:I = -0x1

.field public static final ZERO_BYTE_ARRAY:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 13
    sput-object v0, Lcom/audible/mobile/util/IOUtils;->ZERO_BYTE_ARRAY:[B

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 31
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 4

    if-nez p0, :cond_0

    .line 47
    sget-object p0, Lcom/audible/mobile/util/IOUtils;->ZERO_BYTE_ARRAY:[B

    return-object p0

    .line 51
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x800

    new-array v1, v1, [B

    :goto_0
    const/4 v2, -0x1

    .line 54
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_1

    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-static {p0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 59
    :catch_0
    :try_start_1
    sget-object v0, Lcom/audible/mobile/util/IOUtils;->ZERO_BYTE_ARRAY:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    invoke-static {p0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :goto_1
    invoke-static {p0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 62
    throw v0
.end method
