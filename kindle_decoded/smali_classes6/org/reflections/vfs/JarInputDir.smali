.class public Lorg/reflections/vfs/JarInputDir;
.super Ljava/lang/Object;
.source "JarInputDir.java"

# interfaces
.implements Lorg/reflections/vfs/Vfs$Dir;


# instance fields
.field cursor:J

.field jarInputStream:Ljava/util/jar/JarInputStream;

.field nextCursor:J

.field private final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lorg/reflections/vfs/JarInputDir;->cursor:J

    .line 17
    iput-wide v0, p0, Lorg/reflections/vfs/JarInputDir;->nextCursor:J

    .line 20
    iput-object p1, p0, Lorg/reflections/vfs/JarInputDir;->url:Ljava/net/URL;

    return-void
.end method

.method static synthetic access$000(Lorg/reflections/vfs/JarInputDir;)Ljava/net/URL;
    .locals 0

    .line 13
    iget-object p0, p0, Lorg/reflections/vfs/JarInputDir;->url:Ljava/net/URL;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 71
    :try_start_0
    iget-object v0, p0, Lorg/reflections/vfs/JarInputDir;->jarInputStream:Ljava/util/jar/JarInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/reflections/vfs/JarInputDir;->jarInputStream:Ljava/util/jar/JarInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    sget-object v1, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v1, :cond_0

    const-string v2, "Could not close InputStream"

    .line 74
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

    .line 28
    new-instance v0, Lorg/reflections/vfs/-$$Lambda$JarInputDir$y6-_4khIgk8qnEu57T9kn11WUAA;

    invoke-direct {v0, p0}, Lorg/reflections/vfs/-$$Lambda$JarInputDir$y6-_4khIgk8qnEu57T9kn11WUAA;-><init>(Lorg/reflections/vfs/JarInputDir;)V

    return-object v0
.end method

.method public synthetic lambda$getFiles$0$JarInputDir()Ljava/util/Iterator;
    .locals 1

    .line 28
    new-instance v0, Lorg/reflections/vfs/JarInputDir$1;

    invoke-direct {v0, p0}, Lorg/reflections/vfs/JarInputDir$1;-><init>(Lorg/reflections/vfs/JarInputDir;)V

    return-object v0
.end method
