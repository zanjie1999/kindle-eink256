.class public Lcom/mobipocket/jsr75/filesystem/AndroidFile;
.super Ljava/lang/Object;
.source "AndroidFile.java"

# interfaces
.implements Lcom/amazon/kindle/io/IFileConnection;


# instance fields
.field private isClosed:Z

.field private javaFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->isClosed:Z

    return-void
.end method

.method private throwExceptionIfClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-boolean v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->isClosed:Z

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->isClosed:Z

    return-void
.end method

.method public create()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 43
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    return-void
.end method

.method public delete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 50
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 57
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public fileSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 66
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public isWritable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 171
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 85
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 97
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkdir()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 104
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    return-void
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 111
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public openOutputStream(JZZ)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 119
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-direct {v0, v1, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    if-eqz p3, :cond_0

    .line 122
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    :cond_0
    return-object v0
.end method

.method public rename(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 133
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 139
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
