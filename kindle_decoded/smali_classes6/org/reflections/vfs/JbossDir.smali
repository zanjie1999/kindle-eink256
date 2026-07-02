.class public Lorg/reflections/vfs/JbossDir;
.super Ljava/lang/Object;
.source "JbossDir.java"

# interfaces
.implements Lorg/reflections/vfs/Vfs$Dir;


# instance fields
.field private final virtualFile:Lorg/jboss/vfs/VirtualFile;


# direct methods
.method private constructor <init>(Lorg/jboss/vfs/VirtualFile;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/reflections/vfs/JbossDir;->virtualFile:Lorg/jboss/vfs/VirtualFile;

    return-void
.end method

.method static synthetic access$000(Lorg/reflections/vfs/JbossDir;)Lorg/jboss/vfs/VirtualFile;
    .locals 0

    .line 10
    iget-object p0, p0, Lorg/reflections/vfs/JbossDir;->virtualFile:Lorg/jboss/vfs/VirtualFile;

    return-object p0
.end method

.method public static createDir(Ljava/net/URL;)Lorg/reflections/vfs/Vfs$Dir;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jboss/vfs/VirtualFile;

    .line 20
    invoke-virtual {p0}, Lorg/jboss/vfs/VirtualFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lorg/reflections/vfs/ZipDir;

    new-instance v1, Ljava/util/jar/JarFile;

    invoke-virtual {p0}, Lorg/jboss/vfs/VirtualFile;->getPhysicalFile()Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lorg/reflections/vfs/ZipDir;-><init>(Ljava/util/jar/JarFile;)V

    return-object v0

    .line 23
    :cond_0
    new-instance v0, Lorg/reflections/vfs/JbossDir;

    invoke-direct {v0, p0}, Lorg/reflections/vfs/JbossDir;-><init>(Lorg/jboss/vfs/VirtualFile;)V

    return-object v0
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

    .line 34
    new-instance v0, Lorg/reflections/vfs/-$$Lambda$JbossDir$_bswHnDojS7fvD92PyilLJ3BpTs;

    invoke-direct {v0, p0}, Lorg/reflections/vfs/-$$Lambda$JbossDir$_bswHnDojS7fvD92PyilLJ3BpTs;-><init>(Lorg/reflections/vfs/JbossDir;)V

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/reflections/vfs/JbossDir;->virtualFile:Lorg/jboss/vfs/VirtualFile;

    invoke-virtual {v0}, Lorg/jboss/vfs/VirtualFile;->getPathName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getFiles$0$JbossDir()Ljava/util/Iterator;
    .locals 1

    .line 34
    new-instance v0, Lorg/reflections/vfs/JbossDir$1;

    invoke-direct {v0, p0}, Lorg/reflections/vfs/JbossDir$1;-><init>(Lorg/reflections/vfs/JbossDir;)V

    return-object v0
.end method
