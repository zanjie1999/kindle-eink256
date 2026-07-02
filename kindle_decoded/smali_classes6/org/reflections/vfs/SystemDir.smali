.class public Lorg/reflections/vfs/SystemDir;
.super Ljava/lang/Object;
.source "SystemDir.java"

# interfaces
.implements Lorg/reflections/vfs/Vfs$Dir;


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot use dir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/reflections/vfs/SystemDir;->file:Ljava/io/File;

    return-void
.end method

.method static synthetic lambda$null$0(Ljava/nio/file/Path;)Z
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 32
    invoke-static {p0, v0}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public synthetic close()V
    .locals 0

    invoke-static {p0}, Lorg/reflections/vfs/Vfs$Dir$-CC;->$default$close(Lorg/reflections/vfs/Vfs$Dir;)V

    return-void
.end method

.method public getFiles()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/reflections/vfs/Vfs$File;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/reflections/vfs/SystemDir;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Lorg/reflections/vfs/-$$Lambda$SystemDir$WRlpVRtzOJPTkz6bDmsBOzzoaKo;

    invoke-direct {v0, p0}, Lorg/reflections/vfs/-$$Lambda$SystemDir$WRlpVRtzOJPTkz6bDmsBOzzoaKo;-><init>(Lorg/reflections/vfs/SystemDir;)V

    return-object v0

    .line 28
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    .line 24
    iget-object v0, p0, Lorg/reflections/vfs/SystemDir;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "/NO-SUCH-DIRECTORY/"

    :goto_0
    return-object v0
.end method

.method public synthetic lambda$getFiles$2$SystemDir()Ljava/util/Iterator;
    .locals 4

    .line 31
    :try_start_0
    iget-object v0, p0, Lorg/reflections/vfs/SystemDir;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/FileVisitOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/reflections/vfs/-$$Lambda$SystemDir$Er5wBtJvJ30QxFByy1AXirW4iSw;->INSTANCE:Lorg/reflections/vfs/-$$Lambda$SystemDir$Er5wBtJvJ30QxFByy1AXirW4iSw;

    .line 32
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/reflections/vfs/-$$Lambda$SystemDir$L4fKh5GoCDQgnjFfw1JRm6glJCM;

    invoke-direct {v1, p0}, Lorg/reflections/vfs/-$$Lambda$SystemDir$L4fKh5GoCDQgnjFfw1JRm6glJCM;-><init>(Lorg/reflections/vfs/SystemDir;)V

    .line 33
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 36
    new-instance v1, Lorg/reflections/ReflectionsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not get files for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/reflections/vfs/SystemDir;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic lambda$null$1$SystemDir(Ljava/nio/file/Path;)Lorg/reflections/vfs/Vfs$File;
    .locals 1

    .line 33
    new-instance v0, Lorg/reflections/vfs/SystemFile;

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/reflections/vfs/SystemFile;-><init>(Lorg/reflections/vfs/SystemDir;Ljava/io/File;)V

    return-object v0
.end method
