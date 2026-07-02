.class public Lcom/amazon/system/io/internal/FileConnectionPDBFactory;
.super Ljava/lang/Object;
.source "FileConnectionPDBFactory.java"

# interfaces
.implements Lcom/amazon/kcp/pdb/PDBFactory;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final fileFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/io/IFileConnectionFactory;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->fileFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    return-void
.end method


# virtual methods
.method public final getReadPDB(Ljava/lang/String;)Lcom/amazon/kcp/pdb/ReadPDB;
    .locals 4

    const-string v0, "close error"

    .line 38
    iget-object v1, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->fileFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-static {v1, p1}, Lcom/amazon/kindle/io/FileSystemHelper;->openFileInputStream(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Lcom/amazon/kindle/io/IFileInputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    :try_start_0
    new-instance v1, Lcom/amazon/system/io/internal/InputStreamReadPDB;

    invoke-direct {v1, p1}, Lcom/amazon/system/io/internal/InputStreamReadPDB;-><init>(Lcom/amazon/kindle/io/IFileInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 50
    :try_start_1
    sget-object v2, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 59
    sget-object v1, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 48
    :try_start_3
    sget-object v2, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->TAG:Ljava/lang/String;

    const-string v3, "FileConnectionPDBFactory.getReadPDB:IOException "

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 59
    sget-object v1, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 57
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception p1

    .line 59
    sget-object v2, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :goto_2
    throw v1

    :cond_0
    :goto_3
    const/4 v1, 0x0

    :goto_4
    return-object v1
.end method

.method public final getWritePDB(Ljava/lang/String;[B)Lcom/amazon/kcp/pdb/WritePDB;
    .locals 4

    const-string v0, "close error"

    const/4 v1, 0x0

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->fileFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-interface {v2, p1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/kindle/io/IFileConnection;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    new-instance v2, Lcom/amazon/system/io/internal/OutputStreamWritePDB;

    invoke-direct {v2, p1, p2}, Lcom/amazon/system/io/internal/OutputStreamWritePDB;-><init>(Lcom/amazon/kindle/io/IFileConnection;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_2
    move-exception p2

    move-object p1, v1

    .line 87
    :goto_0
    :try_start_2
    sget-object v2, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_0

    .line 94
    :try_start_3
    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 96
    sget-object p2, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_4
    move-exception p2

    move-object p1, v1

    .line 85
    :goto_1
    :try_start_4
    sget-object v2, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->TAG:Ljava/lang/String;

    const-string v3, "FileSystem.getWritePDB:catched "

    invoke-static {v2, v3, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_0

    .line 94
    :try_start_5
    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    :catch_5
    move-exception p1

    .line 96
    sget-object p2, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_3
    return-object v1

    :catchall_1
    move-exception p2

    move-object v1, p1

    :goto_4
    if-eqz v1, :cond_1

    .line 94
    :try_start_6
    invoke-interface {v1}, Lcom/amazon/kindle/io/IFileConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    .line 96
    sget-object v1, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    :cond_1
    :goto_5
    throw p2
.end method
