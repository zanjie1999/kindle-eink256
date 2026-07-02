.class public abstract Lorg/reflections/vfs/Vfs;
.super Ljava/lang/Object;
.source "Vfs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/reflections/vfs/Vfs$DefaultUrlTypes;,
        Lorg/reflections/vfs/Vfs$UrlType;,
        Lorg/reflections/vfs/Vfs$File;,
        Lorg/reflections/vfs/Vfs$Dir;
    }
.end annotation


# static fields
.field private static defaultUrlTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/reflections/vfs/Vfs$UrlType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->values()[Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/reflections/vfs/Vfs;->defaultUrlTypes:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Ljava/net/URL;)Z
    .locals 0

    .line 55
    invoke-static {p0}, Lorg/reflections/vfs/Vfs;->hasJarFileInPath(Ljava/net/URL;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ljava/net/URL;)Z
    .locals 0

    .line 55
    invoke-static {p0}, Lorg/reflections/vfs/Vfs;->hasInnerJarFileInPath(Ljava/net/URL;)Z

    move-result p0

    return p0
.end method

.method public static fromURL(Ljava/net/URL;)Lorg/reflections/vfs/Vfs$Dir;
    .locals 1

    .line 95
    sget-object v0, Lorg/reflections/vfs/Vfs;->defaultUrlTypes:Ljava/util/List;

    invoke-static {p0, v0}, Lorg/reflections/vfs/Vfs;->fromURL(Ljava/net/URL;Ljava/util/List;)Lorg/reflections/vfs/Vfs$Dir;

    move-result-object p0

    return-object p0
.end method

.method public static fromURL(Ljava/net/URL;Ljava/util/List;)Lorg/reflections/vfs/Vfs$Dir;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/List<",
            "Lorg/reflections/vfs/Vfs$UrlType;",
            ">;)",
            "Lorg/reflections/vfs/Vfs$Dir;"
        }
    .end annotation

    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reflections/vfs/Vfs$UrlType;

    .line 102
    :try_start_0
    invoke-interface {v0, p0}, Lorg/reflections/vfs/Vfs$UrlType;->matches(Ljava/net/URL;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-interface {v0, p0}, Lorg/reflections/vfs/Vfs$UrlType;->createDir(Ljava/net/URL;)Lorg/reflections/vfs/Vfs$Dir;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 107
    sget-object v2, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v2, :cond_0

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not create Dir using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " from url "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". skipping."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 113
    :cond_1
    new-instance p1, Lorg/reflections/ReflectionsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not create Vfs.Dir from url, no matching UrlType was found ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]\neither use fromURL(final URL url, final List<UrlType> urlTypes) or use the static setDefaultURLTypes(final List<UrlType> urlTypes) or addDefaultURLTypes(UrlType urlType) with your specialized UrlType."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getFile(Ljava/net/URL;)Ljava/io/File;
    .locals 6

    const-string v0, ".war!"

    const-string v1, ".jar!"

    .line 159
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 160
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return-object v3

    :catch_0
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 165
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 167
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_2

    return-object v5

    .line 173
    :catch_1
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0

    const-string v4, "jar:"

    .line 174
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_3
    const-string v4, "wsjar:"

    .line 175
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_4
    const-string v4, "file:"

    .line 176
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 177
    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 178
    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 179
    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    const-string v0, "%20"

    const-string v1, " "

    .line 181
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 182
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p0, :cond_9

    return-object v0

    :catch_2
    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private static hasInnerJarFileInPath(Ljava/net/URL;)Z
    .locals 1

    .line 195
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".+\\.jar!/.+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static hasJarFileInPath(Ljava/net/URL;)Z
    .locals 1

    .line 191
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".*\\.jar(!.*|$)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
