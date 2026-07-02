.class public Lcom/amazon/kindle/io/FileInputStream;
.super Lcom/amazon/kindle/io/IFileInputStream;
.source "FileInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private connection:Lcom/amazon/kindle/io/IFileConnection;

.field protected inputStream:Ljava/io/InputStream;

.field private inputStreamSupportMark:Z

.field private markedPosition:J

.field private positionFromMark:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kindle/io/FileInputStream;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/io/FileInputStream;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/io/IFileConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/amazon/kindle/io/IFileInputStream;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/io/FileInputStream;->connection:Lcom/amazon/kindle/io/IFileConnection;

    .line 32
    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/io/FileInputStream;->inputStream:Ljava/io/InputStream;

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/amazon/kindle/io/FileInputStream;->positionFromMark:J

    .line 34
    iput-wide v0, p0, Lcom/amazon/kindle/io/FileInputStream;->markedPosition:J

    .line 35
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/io/FileInputStream;->inputStreamSupportMark:Z

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/amazon/kindle/io/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Lcom/amazon/kindle/io/FileInputStream;->size()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/io/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "FileInputStream.close() File connection error"

    const-wide/16 v1, 0x0

    .line 105
    :try_start_0
    iput-wide v1, p0, Lcom/amazon/kindle/io/FileInputStream;->positionFromMark:J

    .line 106
    iput-wide v1, p0, Lcom/amazon/kindle/io/FileInputStream;->markedPosition:J

    .line 107
    iget-object v1, p0, Lcom/amazon/kindle/io/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x0

    .line 108
    iput-object v1, p0, Lcom/amazon/kindle/io/FileInputStream;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kindle/io/FileInputStream;->connection:Lcom/amazon/kindle/io/IFileConnection;

    invoke-interface {v1}, Lcom/amazon/kindle/io/IFileConnection;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 113
    sget-object v2, Lcom/amazon/kindle/io/FileInputStream;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 111
    :try_start_2
    iget-object v2, p0, Lcom/amazon/kindle/io/FileInputStream;->connection:Lcom/amazon/kindle/io/IFileConnection;

    invoke-interface {v2}, Lcom/amazon/kindle/io/IFileConnection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 113
    sget-object v3, Lcom/amazon/kindle/io/FileInputStream;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    :goto_1
    throw v1
.end method

.method public declared-synchronized mark(I)V
    .locals 4

    monitor-enter p0

    .line 122
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kindle/io/FileInputStream;->inputStreamSupportMark:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/io/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 125
    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/io/FileInputStream;->markedPosition:J

    iget-wide v2, p0, Lcom/amazon/kindle/io/FileInputStream;->positionFromMark:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/kindle/io/FileInputStream;->markedPosition:J

    const-wide/16 v0, 0x0

    .line 126
    iput-wide v0, p0, Lcom/amazon/kindle/io/FileInputStream;->positionFromMark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/io/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 80
    iget-wide v1, p0, Lcom/amazon/kindle/io/FileInputStream;->positionFromMark:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazon/kindle/io/FileInputStream;->positionFromMark:J

    return v0
.end method

.method public read([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/amazon/kindle/io/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_0

    .line 156
    iget-wide v0, p0, Lcom/amazon/kindle/io/FileInputStream;->positionFromMark:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/kindle/io/FileInputStream;->positionFromMark:J

    :cond_0
    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/io/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_0

    .line 142
    iget-wide p2, p0, Lcom/amazon/kindle/io/FileInputStream;->positionFromMark:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/amazon/kindle/io/FileInputStream;->positionFromMark:J

    :cond_0
    return p1
.end method

.method public declared-synchronized reset()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 168
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kindle/io/FileInputStream;->inputStreamSupportMark:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/amazon/kindle/io/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/io/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 172
    iget-object v0, p0, Lcom/amazon/kindle/io/FileInputStream;->connection:Lcom/amazon/kindle/io/IFileConnection;

    invoke-interface {v0}, Lcom/amazon/kindle/io/IFileConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/io/FileInputStream;->inputStream:Ljava/io/InputStream;

    .line 173
    iget-wide v3, p0, Lcom/amazon/kindle/io/FileInputStream;->markedPosition:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    .line 174
    iget-wide v3, p0, Lcom/amazon/kindle/io/FileInputStream;->markedPosition:J

    invoke-virtual {v0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    .line 175
    iget-wide v5, p0, Lcom/amazon/kindle/io/FileInputStream;->markedPosition:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    .line 176
    sget-object v0, Lcom/amazon/kindle/io/FileInputStream;->TAG:Ljava/lang/String;

    const-string v5, "Expected to skip %s bytes,Actual skipped bytes is %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/amazon/kindle/io/FileInputStream;->markedPosition:J

    .line 178
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v7

    .line 176
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_1
    :goto_0
    iput-wide v1, p0, Lcom/amazon/kindle/io/FileInputStream;->positionFromMark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetAndSkip(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 52
    iget-wide v0, p0, Lcom/amazon/kindle/io/FileInputStream;->positionFromMark:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/amazon/kindle/io/FileInputStream;->reset()V

    .line 58
    :cond_1
    iget-wide v0, p0, Lcom/amazon/kindle/io/FileInputStream;->positionFromMark:J

    sub-long v2, p1, v0

    .line 59
    iget-object v4, p0, Lcom/amazon/kindle/io/FileInputStream;->inputStream:Ljava/io/InputStream;

    sub-long v0, p1, v0

    invoke-virtual {v4, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 61
    sget-object v4, Lcom/amazon/kindle/io/FileInputStream;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 63
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "Expected to skip %s bytes,Actual skipped bytes is %s"

    .line 61
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_2
    iput-wide p1, p0, Lcom/amazon/kindle/io/FileInputStream;->positionFromMark:J

    return-void
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/io/FileInputStream;->connection:Lcom/amazon/kindle/io/IFileConnection;

    invoke-interface {v0}, Lcom/amazon/kindle/io/IFileConnection;->fileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/amazon/kindle/io/FileInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 190
    iget-wide v0, p0, Lcom/amazon/kindle/io/FileInputStream;->positionFromMark:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/amazon/kindle/io/FileInputStream;->positionFromMark:J

    return-wide p1
.end method
