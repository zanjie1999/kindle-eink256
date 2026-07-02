.class public Lorg/reflections/vfs/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Lorg/reflections/vfs/Vfs$File;


# instance fields
.field private final entry:Ljava/util/zip/ZipEntry;

.field private final root:Lorg/reflections/vfs/ZipDir;


# direct methods
.method public constructor <init>(Lorg/reflections/vfs/ZipDir;Ljava/util/zip/ZipEntry;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/reflections/vfs/ZipFile;->root:Lorg/reflections/vfs/ZipDir;

    .line 14
    iput-object p2, p0, Lorg/reflections/vfs/ZipFile;->entry:Ljava/util/zip/ZipEntry;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 18
    iget-object v0, p0, Lorg/reflections/vfs/ZipFile;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelativePath()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/reflections/vfs/ZipFile;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/reflections/vfs/ZipFile;->root:Lorg/reflections/vfs/ZipDir;

    iget-object v0, v0, Lorg/reflections/vfs/ZipDir;->jarFile:Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lorg/reflections/vfs/ZipFile;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/reflections/vfs/ZipFile;->root:Lorg/reflections/vfs/ZipDir;

    invoke-virtual {v1}, Lorg/reflections/vfs/ZipDir;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/reflections/vfs/ZipFile;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
