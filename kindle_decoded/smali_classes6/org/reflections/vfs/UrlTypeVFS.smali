.class public Lorg/reflections/vfs/UrlTypeVFS;
.super Ljava/lang/Object;
.source "UrlTypeVFS.java"

# interfaces
.implements Lorg/reflections/vfs/Vfs$UrlType;


# static fields
.field public static final REPLACE_EXTENSION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, ".ear/"

    const-string v1, ".jar/"

    const-string v2, ".war/"

    const-string v3, ".sar/"

    const-string v4, ".har/"

    const-string v5, ".par/"

    .line 26
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/reflections/vfs/UrlTypeVFS;->REPLACE_EXTENSION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$adaptURL$0(Ljava/io/File;)Z
    .locals 1

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public adaptURL(Ljava/net/URL;)Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vfszip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/reflections/vfs/-$$Lambda$UrlTypeVFS$B1fE_Lad-WfUemMO9lSndB-JoaQ;->INSTANCE:Lorg/reflections/vfs/-$$Lambda$UrlTypeVFS$B1fE_Lad-WfUemMO9lSndB-JoaQ;

    invoke-virtual {p0, p1, v0}, Lorg/reflections/vfs/UrlTypeVFS;->replaceZipSeparators(Ljava/lang/String;Ljava/util/function/Predicate;)Ljava/net/URL;

    move-result-object p1

    return-object p1

    .line 54
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vfsfile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "file"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    return-object p1
.end method

.method public createDir(Ljava/net/URL;)Lorg/reflections/vfs/Vfs$Dir;
    .locals 3

    .line 37
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/reflections/vfs/UrlTypeVFS;->adaptURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v0

    .line 38
    new-instance v1, Lorg/reflections/vfs/ZipDir;

    new-instance v2, Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/reflections/vfs/ZipDir;-><init>(Ljava/util/jar/JarFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 41
    :try_start_1
    new-instance v1, Lorg/reflections/vfs/ZipDir;

    new-instance v2, Ljava/util/jar/JarFile;

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/reflections/vfs/ZipDir;-><init>(Ljava/util/jar/JarFile;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    nop

    .line 43
    sget-object p1, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz p1, :cond_0

    const-string v1, "Could not get URL"

    .line 44
    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method findFirstMatchOfDeployableExtention(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "\\.[ejprw]ar/"

    .line 77
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 79
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public matches(Ljava/net/URL;)Z
    .locals 2

    .line 32
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vfszip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const-string v0, "vfsfile"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method replaceZipSeparatorStartingFrom(Ljava/lang/String;I)Ljava/net/URL;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 92
    sget-object p2, Lorg/reflections/vfs/UrlTypeVFS;->REPLACE_EXTENSION:[Ljava/lang/String;

    array-length v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    const-string v5, "!"

    if-ge v4, v2, :cond_1

    aget-object v6, p2, v4

    .line 93
    :goto_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x4

    invoke-virtual {v6, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_2
    if-ge v1, v3, :cond_2

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "zip:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 104
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "/"

    if-nez v1, :cond_3

    .line 105
    new-instance p1, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 107
    :cond_3
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method replaceZipSeparators(Ljava/lang/String;Ljava/util/function/Predicate;)Ljava/net/URL;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 65
    invoke-virtual {p0, p1, v1}, Lorg/reflections/vfs/UrlTypeVFS;->findFirstMatchOfDeployableExtention(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 68
    new-instance v2, Ljava/io/File;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-interface {p2, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lorg/reflections/vfs/UrlTypeVFS;->replaceZipSeparatorStartingFrom(Ljava/lang/String;I)Ljava/net/URL;

    move-result-object p1

    return-object p1

    .line 73
    :cond_1
    new-instance p2, Lorg/reflections/ReflectionsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to identify the real zip file in path \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
