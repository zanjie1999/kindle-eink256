.class public Lorg/reflections/vfs/ZipDir;
.super Ljava/lang/Object;
.source "ZipDir.java"

# interfaces
.implements Lorg/reflections/vfs/Vfs$Dir;


# instance fields
.field final jarFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/util/jar/JarFile;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/reflections/vfs/ZipDir;->jarFile:Ljava/util/zip/ZipFile;

    return-void
.end method

.method static synthetic lambda$null$0(Ljava/util/zip/ZipEntry;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 28
    :try_start_0
    iget-object v0, p0, Lorg/reflections/vfs/ZipDir;->jarFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 29
    sget-object v1, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v1, :cond_0

    const-string v2, "Could not close JarFile"

    .line 30
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
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

    .line 21
    new-instance v0, Lorg/reflections/vfs/-$$Lambda$ZipDir$HTMcnFznklwYH3NeRRYavM6RwRg;

    invoke-direct {v0, p0}, Lorg/reflections/vfs/-$$Lambda$ZipDir$HTMcnFznklwYH3NeRRYavM6RwRg;-><init>(Lorg/reflections/vfs/ZipDir;)V

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    .line 17
    iget-object v0, p0, Lorg/reflections/vfs/ZipDir;->jarFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

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

.method public synthetic lambda$getFiles$2$ZipDir()Ljava/util/Iterator;
    .locals 2

    .line 21
    iget-object v0, p0, Lorg/reflections/vfs/ZipDir;->jarFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/reflections/vfs/-$$Lambda$ZipDir$su2HYmsSFz4L4WQsi8skLAC8Efo;->INSTANCE:Lorg/reflections/vfs/-$$Lambda$ZipDir$su2HYmsSFz4L4WQsi8skLAC8Efo;

    .line 22
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/reflections/vfs/-$$Lambda$ZipDir$IbDA9mmCL58D4tmtxtcvVYzbj88;

    invoke-direct {v1, p0}, Lorg/reflections/vfs/-$$Lambda$ZipDir$IbDA9mmCL58D4tmtxtcvVYzbj88;-><init>(Lorg/reflections/vfs/ZipDir;)V

    .line 23
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$null$1$ZipDir(Ljava/util/zip/ZipEntry;)Lorg/reflections/vfs/Vfs$File;
    .locals 1

    .line 23
    new-instance v0, Lorg/reflections/vfs/ZipFile;

    invoke-direct {v0, p0, p1}, Lorg/reflections/vfs/ZipFile;-><init>(Lorg/reflections/vfs/ZipDir;Ljava/util/zip/ZipEntry;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/reflections/vfs/ZipDir;->jarFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
