.class public final Lcom/amazon/whispersync/dcp/framework/StreamHelpers;
.super Ljava/lang/Object;
.source "StreamHelpers.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.StreamHelpers"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 129
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    sget-object p0, Lcom/amazon/whispersync/dcp/framework/StreamHelpers;->TAG:Ljava/lang/String;

    const-string v0, "IOException closing parcel file descriptor"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static closeReader(Ljava/io/Reader;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 112
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    sget-object p0, Lcom/amazon/whispersync/dcp/framework/StreamHelpers;->TAG:Ljava/lang/String;

    const-string v0, "IOException closing reader"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static closeStream(Ljava/io/InputStream;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 34
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    sget-object p0, Lcom/amazon/whispersync/dcp/framework/StreamHelpers;->TAG:Ljava/lang/String;

    const-string v0, "IOException thrown closing input stream"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static closeStream(Ljava/io/OutputStream;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 51
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    sget-object p0, Lcom/amazon/whispersync/dcp/framework/StreamHelpers;->TAG:Ljava/lang/String;

    const-string v0, "IOException thrown closing output stream"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static closeWriter(Ljava/io/Writer;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 78
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    sget-object p0, Lcom/amazon/whispersync/dcp/framework/StreamHelpers;->TAG:Ljava/lang/String;

    const-string v0, "IOException closing writer"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static flushStream(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public static flushWriter(Ljava/io/Writer;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 95
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    sget-object p0, Lcom/amazon/whispersync/dcp/framework/StreamHelpers;->TAG:Ljava/lang/String;

    const-string v0, "IOException flushing writer"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static readInputStream(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 146
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gez v2, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x0

    .line 152
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method
