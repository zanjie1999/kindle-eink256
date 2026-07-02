.class public Lorg/reflections/vfs/JbossFile;
.super Ljava/lang/Object;
.source "JbossFile.java"

# interfaces
.implements Lorg/reflections/vfs/Vfs$File;


# instance fields
.field private final root:Lorg/reflections/vfs/JbossDir;

.field private final virtualFile:Lorg/jboss/vfs/VirtualFile;


# direct methods
.method public constructor <init>(Lorg/reflections/vfs/JbossDir;Lorg/jboss/vfs/VirtualFile;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/reflections/vfs/JbossFile;->root:Lorg/reflections/vfs/JbossDir;

    .line 15
    iput-object p2, p0, Lorg/reflections/vfs/JbossFile;->virtualFile:Lorg/jboss/vfs/VirtualFile;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/reflections/vfs/JbossFile;->virtualFile:Lorg/jboss/vfs/VirtualFile;

    invoke-virtual {v0}, Lorg/jboss/vfs/VirtualFile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelativePath()Ljava/lang/String;
    .locals 2

    .line 25
    iget-object v0, p0, Lorg/reflections/vfs/JbossFile;->virtualFile:Lorg/jboss/vfs/VirtualFile;

    invoke-virtual {v0}, Lorg/jboss/vfs/VirtualFile;->getPathName()Ljava/lang/String;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lorg/reflections/vfs/JbossFile;->root:Lorg/reflections/vfs/JbossDir;

    invoke-virtual {v1}, Lorg/reflections/vfs/JbossDir;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lorg/reflections/vfs/JbossFile;->root:Lorg/reflections/vfs/JbossDir;

    invoke-virtual {v1}, Lorg/reflections/vfs/JbossDir;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/reflections/vfs/JbossFile;->virtualFile:Lorg/jboss/vfs/VirtualFile;

    invoke-virtual {v0}, Lorg/jboss/vfs/VirtualFile;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
