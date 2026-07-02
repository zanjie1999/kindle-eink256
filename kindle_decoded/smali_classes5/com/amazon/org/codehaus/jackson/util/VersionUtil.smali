.class public Lcom/amazon/org/codehaus/jackson/util/VersionUtil;
.super Ljava/lang/Object;
.source "VersionUtil.java"


# static fields
.field public static final VERSION_FILE:Ljava/lang/String; = "VERSION.txt"

.field private static final VERSION_SEPARATOR:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[-_./;:]"

    .line 17
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/org/codehaus/jackson/util/VersionUtil;->VERSION_SEPARATOR:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseVersion(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/Version;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 55
    :cond_1
    sget-object v1, Lcom/amazon/org/codehaus/jackson/util/VersionUtil;->VERSION_SEPARATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    .line 57
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    return-object v0

    :cond_2
    const/4 v1, 0x0

    .line 60
    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/amazon/org/codehaus/jackson/util/VersionUtil;->parseVersionPart(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    .line 61
    aget-object v4, p0, v4

    invoke-static {v4}, Lcom/amazon/org/codehaus/jackson/util/VersionUtil;->parseVersionPart(Ljava/lang/String;)I

    move-result v4

    .line 62
    array-length v5, p0

    if-le v5, v2, :cond_3

    aget-object v1, p0, v2

    invoke-static {v1}, Lcom/amazon/org/codehaus/jackson/util/VersionUtil;->parseVersionPart(Ljava/lang/String;)I

    move-result v1

    .line 63
    :cond_3
    array-length v2, p0

    const/4 v5, 0x3

    if-le v2, v5, :cond_4

    aget-object v0, p0, v5

    .line 64
    :cond_4
    new-instance p0, Lcom/amazon/org/codehaus/jackson/Version;

    invoke-direct {p0, v3, v4, v1, v0}, Lcom/amazon/org/codehaus/jackson/Version;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method protected static parseVersionPart(Ljava/lang/String;)I
    .locals 5

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_1

    const/16 v4, 0x30

    if-ge v3, v4, :cond_0

    goto :goto_1

    :cond_0
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method public static versionFor(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/Version;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/Version;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "VERSION.txt"

    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p0, :cond_0

    .line 36
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 37
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/org/codehaus/jackson/util/VersionUtil;->parseVersion(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/Version;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 42
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catchall_0
    move-exception v1

    .line 40
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 42
    :try_start_5
    throw v1

    :catch_1
    move-exception p0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    nop

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 47
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/Version;->unknownVersion()Lcom/amazon/org/codehaus/jackson/Version;

    move-result-object v0

    :cond_1
    return-object v0
.end method
