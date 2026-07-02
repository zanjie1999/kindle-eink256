.class Lorg/reflections/vfs/JarInputDir$1;
.super Ljava/lang/Object;
.source "JarInputDir.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/reflections/vfs/Vfs$File;",
        ">;"
    }
.end annotation


# instance fields
.field entry:Lorg/reflections/vfs/Vfs$File;

.field final synthetic this$0:Lorg/reflections/vfs/JarInputDir;


# direct methods
.method constructor <init>(Lorg/reflections/vfs/JarInputDir;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lorg/reflections/vfs/JarInputDir$1;->this$0:Lorg/reflections/vfs/JarInputDir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    :try_start_0
    iget-object p1, p0, Lorg/reflections/vfs/JarInputDir$1;->this$0:Lorg/reflections/vfs/JarInputDir;

    new-instance v0, Ljava/util/jar/JarInputStream;

    iget-object v1, p0, Lorg/reflections/vfs/JarInputDir$1;->this$0:Lorg/reflections/vfs/JarInputDir;

    invoke-static {v1}, Lorg/reflections/vfs/JarInputDir;->access$000(Lorg/reflections/vfs/JarInputDir;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p1, Lorg/reflections/vfs/JarInputDir;->jarInputStream:Ljava/util/jar/JarInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lorg/reflections/vfs/JarInputDir$1;->entry:Lorg/reflections/vfs/Vfs$File;

    return-void

    :catch_0
    move-exception p1

    .line 31
    new-instance v0, Lorg/reflections/ReflectionsException;

    const-string v1, "Could not open url connection"

    invoke-direct {v0, v1, p1}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private computeNext()Lorg/reflections/vfs/Vfs$File;
    .locals 8

    .line 51
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/reflections/vfs/JarInputDir$1;->this$0:Lorg/reflections/vfs/JarInputDir;

    iget-object v0, v0, Lorg/reflections/vfs/JarInputDir;->jarInputStream:Ljava/util/jar/JarInputStream;

    invoke-virtual {v0}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_2

    const-wide v3, 0xffffffffL

    add-long/2addr v0, v3

    .line 58
    :cond_2
    iget-object v3, p0, Lorg/reflections/vfs/JarInputDir$1;->this$0:Lorg/reflections/vfs/JarInputDir;

    iget-wide v4, v3, Lorg/reflections/vfs/JarInputDir;->nextCursor:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lorg/reflections/vfs/JarInputDir;->nextCursor:J

    .line 59
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lorg/reflections/vfs/JarInputFile;

    iget-object v3, p0, Lorg/reflections/vfs/JarInputDir$1;->this$0:Lorg/reflections/vfs/JarInputDir;

    iget-object v1, p0, Lorg/reflections/vfs/JarInputDir$1;->this$0:Lorg/reflections/vfs/JarInputDir;

    iget-wide v4, v1, Lorg/reflections/vfs/JarInputDir;->cursor:J

    iget-object v1, p0, Lorg/reflections/vfs/JarInputDir$1;->this$0:Lorg/reflections/vfs/JarInputDir;

    iget-wide v6, v1, Lorg/reflections/vfs/JarInputDir;->nextCursor:J

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/reflections/vfs/JarInputFile;-><init>(Ljava/util/zip/ZipEntry;Lorg/reflections/vfs/JarInputDir;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 63
    new-instance v1, Lorg/reflections/ReflectionsException;

    const-string v2, "could not get next zip entry"

    invoke-direct {v1, v2, v0}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/reflections/vfs/JarInputDir$1;->entry:Lorg/reflections/vfs/Vfs$File;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/reflections/vfs/JarInputDir$1;->computeNext()Lorg/reflections/vfs/Vfs$File;

    move-result-object v0

    iput-object v0, p0, Lorg/reflections/vfs/JarInputDir$1;->entry:Lorg/reflections/vfs/Vfs$File;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/reflections/vfs/JarInputDir$1;->next()Lorg/reflections/vfs/Vfs$File;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/reflections/vfs/Vfs$File;
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/reflections/vfs/JarInputDir$1;->entry:Lorg/reflections/vfs/Vfs$File;

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lorg/reflections/vfs/JarInputDir$1;->entry:Lorg/reflections/vfs/Vfs$File;

    return-object v0
.end method
