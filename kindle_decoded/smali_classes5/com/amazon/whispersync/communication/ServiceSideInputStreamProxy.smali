.class public Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;
.super Ljava/io/InputStream;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final MAX_ALLOWED_BYTES_READ_ACROSS_IPC:I = 0x19000

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private mInputStream:Lcom/amazon/whispersync/communication/IInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.ServiceSideInputStreamProxy"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/communication/IInputStream;)V
    .locals 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->mInputStream:Lcom/amazon/whispersync/communication/IInputStream;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "constructor"

    const-string v0, "Binder has already died.  Swallowing and allowing read call path to discover this"

    invoke-virtual {v1, p1, v0, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->binderDied()V

    :goto_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->mInputStream:Lcom/amazon/whispersync/communication/IInputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->mInputStream:Lcom/amazon/whispersync/communication/IInputStream;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Lcom/amazon/whispersync/communication/IInputStream;->available()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "IOException in client-side InputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_2
    sget-object v0, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "available"

    const-string v2, "Client-side callback object is now stale"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Client-side callback object is now stale"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized binderDied()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->mInputStream:Lcom/amazon/whispersync/communication/IInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->mInputStream:Lcom/amazon/whispersync/communication/IInputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->mInputStream:Lcom/amazon/whispersync/communication/IInputStream;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, Lcom/amazon/whispersync/communication/IInputStream;->close()Z

    move-result v2

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    monitor-enter p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->mInputStream:Lcom/amazon/whispersync/communication/IInputStream;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    return-void

    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "IOException in client-side InputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_6
    sget-object v0, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v2, "close"

    const-string v3, "Client-side callback object is now stale"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Client-side callback object is now stale"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->mInputStream:Lcom/amazon/whispersync/communication/IInputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->mInputStream:Lcom/amazon/whispersync/communication/IInputStream;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Lcom/amazon/whispersync/communication/IInputStream;->readByte()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "IOException in client-side InputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_2
    sget-object v0, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v1, "read()"

    const-string v2, "Client-side callback object is now stale"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Client-side callback object is now stale"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ltz v2, :cond_8

    if-ltz p3, :cond_8

    array-length v10, v0

    if-gt v2, v10, :cond_8

    if-nez p3, :cond_0

    return v9

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v10, v1, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->mInputStream:Lcom/amazon/whispersync/communication/IInputStream;

    if-eqz v10, :cond_7

    iget-object v10, v1, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->mInputStream:Lcom/amazon/whispersync/communication/IInputStream;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v11, p3

    const/4 v12, 0x0

    :goto_0
    const v13, 0x19000

    if-le v11, v13, :cond_1

    goto :goto_1

    :cond_1
    move v13, v11

    :goto_1
    :try_start_1
    sget-object v14, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v15, "read(byte[],int,int)"

    const-string v7, "About to read"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v18, "bytesToRead"

    aput-object v18, v3, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v3, v8

    const-string v18, "Size of buffer"

    aput-object v18, v3, v6

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const-string/jumbo v6, "totalBytesRead"

    aput-object v6, v3, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v17, 0x5

    aput-object v6, v3, v17

    const-string/jumbo v6, "remainingBytesToRead"

    const/16 v16, 0x6

    aput-object v6, v3, v16

    const/4 v6, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v3, v6

    invoke-virtual {v14, v15, v7, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int v3, v2, v12

    invoke-interface {v10, v0, v3, v13}, Lcom/amazon/whispersync/communication/IInputStream;->readBytesIntoOffset([BII)I

    move-result v3

    const/4 v6, -0x2

    if-eq v3, v6, :cond_6

    const/4 v6, -0x1

    if-ne v3, v6, :cond_3

    if-lez v12, :cond_2

    goto :goto_2

    :cond_2
    move v12, v3

    goto :goto_2

    :cond_3
    add-int/2addr v12, v3

    sub-int/2addr v11, v3

    if-ge v3, v13, :cond_4

    goto :goto_2

    :cond_4
    if-gtz v11, :cond_5

    :goto_2
    return v12

    :cond_5
    const/4 v6, 0x2

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "IOException in client-side InputStream"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v9

    const-string/jumbo v4, "read(byte[],int,int)"

    const-string v5, "RemoteException occurred reading from InputStream"

    invoke-virtual {v2, v4, v5, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_7
    :try_start_2
    sget-object v0, Lcom/amazon/whispersync/communication/ServiceSideInputStreamProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v2, "read(byte[],int,int)"

    const-string v3, "Client-side callback object is now stale"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Client-side callback object is now stale"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_8
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "array.length"

    aput-object v7, v6, v9

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    const-string v0, "offset"

    const/4 v7, 0x2

    aput-object v0, v6, v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v5

    const-string v0, "length"

    aput-object v0, v6, v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v6, v2

    const-string/jumbo v0, "read(byte[],int,int)"

    const-string v2, "Index out of bounds"

    invoke-static {v0, v2, v6}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
