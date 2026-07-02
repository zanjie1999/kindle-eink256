.class final Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;
.super Ljava/lang/Object;
.source "MD5MessageDigest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;
    }
.end annotation


# instance fields
.field private m_currentDigest:[B

.field private m_runningState:Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;->reset()V

    return-void
.end method

.method constructor <init>(Ljava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;->reset(Ljava/io/DataInputStream;)V

    return-void
.end method


# virtual methods
.method digest()[B
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;->m_currentDigest:[B

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;

    iget-object v1, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;->m_runningState:Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;-><init>(Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;)V

    .line 78
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->pad()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 79
    iput-object v1, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;->m_currentDigest:[B

    .line 80
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 81
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->currentDigest()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;->m_currentDigest:[B

    return-object v0
.end method

.method persist(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;->m_runningState:Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->persist(Ljava/io/DataOutputStream;)V

    return-void
.end method

.method reset()V
    .locals 1

    .line 92
    new-instance v0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;

    invoke-direct {v0}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;->m_runningState:Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;->m_currentDigest:[B

    return-void
.end method

.method reset(Ljava/io/DataInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;-><init>(Ljava/io/DataInputStream;)V

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;->m_runningState:Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;->m_currentDigest:[B

    return-void
.end method

.method update(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;->m_currentDigest:[B

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;->m_runningState:Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method
