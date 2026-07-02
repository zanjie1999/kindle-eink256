.class public Lcom/amazon/identity/auth/device/jo;
.super Ljava/io/OutputStream;
.source "DCP"


# instance fields
.field private final fB:[Ljava/lang/Object;

.field private rA:Ljava/io/OutputStream;

.field private final ry:Ljava/io/ByteArrayOutputStream;

.field private final rz:Ljava/net/URLConnection;


# direct methods
.method public constructor <init>(Ljava/net/URLConnection;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/amazon/identity/auth/device/jo;->fB:[Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/amazon/identity/auth/device/jo;->rz:Ljava/net/URLConnection;

    .line 21
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/jo;->ry:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jo;->rA:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 68
    :cond_0
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jo;->rA:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 79
    :cond_0
    invoke-super {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public gX()[B
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jo;->fB:[Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/jo;->ry:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public gY()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jo;->fB:[Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/jo;->rz:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/identity/auth/device/jo;->rA:Ljava/io/OutputStream;

    .line 54
    iget-object v2, p0, Lcom/amazon/identity/auth/device/jo;->ry:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 56
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/jo;->flush()V

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jo;->fB:[Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/jo;->rA:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/amazon/identity/auth/device/jo;->rA:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/jo;->ry:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 37
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
