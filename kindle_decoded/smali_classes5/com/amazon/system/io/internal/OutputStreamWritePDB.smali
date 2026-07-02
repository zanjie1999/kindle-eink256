.class public Lcom/amazon/system/io/internal/OutputStreamWritePDB;
.super Ljava/lang/Object;
.source "OutputStreamWritePDB.java"

# interfaces
.implements Lcom/amazon/kcp/pdb/WritePDB;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private fileConnection:Lcom/amazon/kindle/io/IFileConnection;

.field private output:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/system/io/internal/OutputStreamWritePDB;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/io/IFileConnection;[B)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;,
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskWriteViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->fileConnection:Lcom/amazon/kindle/io/IFileConnection;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 51
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnection;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnection;->create()V

    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnection;->delete()Z

    .line 55
    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnection;->create()V

    :goto_0
    const-wide/16 v2, 0x0

    .line 57
    invoke-interface {p1, v2, v3, v1, v0}, Lcom/amazon/kindle/io/IFileConnection;->openOutputStream(JZZ)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->output:Ljava/io/OutputStream;

    .line 58
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    return-void

    .line 66
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "could not open the file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid file connection"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addRecord([B)Z
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskWriteViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public close()V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->output:Ljava/io/OutputStream;

    const-string v1, "close error"

    if-eqz v0, :cond_0

    .line 78
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 80
    sget-object v2, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->output:Ljava/io/OutputStream;

    .line 84
    iget-object v2, p0, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->fileConnection:Lcom/amazon/kindle/io/IFileConnection;

    if-eqz v2, :cond_1

    .line 86
    :try_start_1
    invoke-interface {v2}, Lcom/amazon/kindle/io/IFileConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 88
    sget-object v3, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->fileConnection:Lcom/amazon/kindle/io/IFileConnection;

    return-void
.end method
