.class public final Lcom/amazon/identity/auth/device/ja;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field public static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ja"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 28
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 32
    :catch_0
    sget-object p0, Lcom/amazon/identity/auth/device/ja;->TAG:Ljava/lang/String;

    const-string v0, "IOException thrown closing input stream"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/io/OutputStream;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V

    .line 71
    throw p1
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 50
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v3, 0x0

    .line 56
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
