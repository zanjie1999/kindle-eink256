.class final enum Lorg/reflections/vfs/Vfs$DefaultUrlTypes$3;
.super Lorg/reflections/vfs/Vfs$DefaultUrlTypes;
.source "Vfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reflections/vfs/Vfs$DefaultUrlTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 240
    invoke-direct {p0, p1, p2, v0}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;-><init>(Ljava/lang/String;ILorg/reflections/vfs/Vfs$1;)V

    return-void
.end method


# virtual methods
.method public createDir(Ljava/net/URL;)Lorg/reflections/vfs/Vfs$Dir;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 249
    new-instance v0, Lorg/reflections/vfs/SystemDir;

    invoke-static {p1}, Lorg/reflections/vfs/Vfs;->getFile(Ljava/net/URL;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/reflections/vfs/SystemDir;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public matches(Ljava/net/URL;)Z
    .locals 2

    .line 242
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/reflections/vfs/Vfs;->access$100(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-static {p1}, Lorg/reflections/vfs/Vfs;->getFile(Ljava/net/URL;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
