.class final Lcom/amazon/kindle/cms/api/BulkUpdate;
.super Ljava/lang/Object;
.source "BulkUpdate.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/UpdateStrategy;


# instance fields
.field private m_readPipe:Landroid/os/ParcelFileDescriptor;

.field private m_stream:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

.field private m_writePipe:Landroid/os/ParcelFileDescriptor;

.field private m_writer:Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/api/InternalCMSServer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    .line 24
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_readPipe:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    .line 25
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_writePipe:Landroid/os/ParcelFileDescriptor;

    .line 27
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_writePipe:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_stream:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_writePipe:Landroid/os/ParcelFileDescriptor;

    .line 30
    new-instance v1, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;-><init>(Ljava/io/FileOutputStream;)V

    iput-object v1, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_writer:Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;

    .line 31
    invoke-virtual {p1}, Lcom/amazon/kindle/cms/api/InternalCMSServer;->getService()Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_readPipe:Landroid/os/ParcelFileDescriptor;

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;->bulkUpdate(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40
    :try_start_1
    new-instance p2, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object v0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p2, v0, p1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 36
    new-instance p2, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object v0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->SerializationProblem:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p2, v0, p1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/api/BulkUpdate;->close()V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_writer:Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;

    invoke-virtual {v0}, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_readPipe:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_readPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_writePipe:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_writePipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_stream:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_stream:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 60
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_readPipe:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_3

    .line 61
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_readPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 62
    :cond_3
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_writePipe:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_4

    .line 63
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_writePipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 64
    :cond_4
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_stream:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    if-eqz v1, :cond_5

    .line 65
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_stream:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_5
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    :goto_0
    new-instance v1, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object v2, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->SerializationProblem:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {v1, v2, v0}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/amazon/kindle/cms/ipc/BulkEntryWithUser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/amazon/kindle/cms/ipc/BulkEntryWithUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/ipc/ItemPayload;)V

    .line 94
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_writer:Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;->put(Lcom/amazon/kindle/cms/ipc/Pipeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 98
    new-instance p2, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object p3, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->SerializationProblem:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p2, p3, p1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/ipc/ItemInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/amazon/kindle/cms/ipc/BulkEntryWithUser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/kindle/cms/ipc/BulkEntryWithUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/ipc/ItemPayload;)V

    .line 80
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/BulkUpdate;->m_writer:Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;->put(Lcom/amazon/kindle/cms/ipc/Pipeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 84
    new-instance p2, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object p3, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->SerializationProblem:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p2, p3, p1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw p2
.end method
