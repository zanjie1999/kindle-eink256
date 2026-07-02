.class public final Lcom/amazon/kindle/cms/ipc/Digest;
.super Ljava/lang/Object;
.source "Digest.java"


# instance fields
.field private m_buffer:Ljava/nio/ByteBuffer;

.field private m_charset:Ljava/nio/charset/Charset;

.field private m_digest:Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;

    invoke-direct {v0}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_digest:Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;

    const-string v0, "UTF-8"

    .line 14
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_charset:Ljava/nio/charset/Charset;

    const/16 v0, 0x100

    .line 15
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;-><init>(Ljava/io/DataInputStream;)V

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_digest:Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;

    const-string p1, "UTF-8"

    .line 21
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_charset:Ljava/nio/charset/Charset;

    const/16 p1, 0x100

    .line 22
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private flush()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_digest:Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;

    iget-object v2, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method private hexify([B)Ljava/lang/String;
    .locals 5

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 92
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 94
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    const/16 v3, 0x30

    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public declared-synchronized add(I)V
    .locals 2

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ipc/Digest;->flush()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(J)V
    .locals 2

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ipc/Digest;->flush()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_charset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 48
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ipc/Digest;->flush()V

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_buffer:Ljava/nio/ByteBuffer;

    aget-byte v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public add(Z)V
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/ipc/Digest;->add(I)V

    return-void
.end method

.method public declared-synchronized currentValue()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 34
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ipc/Digest;->flush()V

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_digest:Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;

    invoke-virtual {v0}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;->digest()[B

    move-result-object v0

    .line 36
    invoke-direct {p0, v0}, Lcom/amazon/kindle/cms/ipc/Digest;->hexify([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized persist(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 41
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ipc/Digest;->flush()V

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_digest:Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;->persist(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_digest:Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;

    invoke-virtual {v0}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;->reset()V

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/Digest;->m_buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
