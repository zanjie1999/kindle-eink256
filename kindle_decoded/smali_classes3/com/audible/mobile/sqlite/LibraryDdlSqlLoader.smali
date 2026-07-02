.class public final Lcom/audible/mobile/sqlite/LibraryDdlSqlLoader;
.super Ljava/lang/Object;
.source "LibraryDdlSqlLoader.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final SEPARATOR:Ljava/lang/String; = "--"

.field private static final SEPARATOR_LENGTH:I

.field private static final SQL_END_TOKEN:Ljava/lang/String; = ";"


# instance fields
.field private final isr:Lcom/audible/mobile/resource/InputStreamResource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/sqlite/LibraryDdlSqlLoader;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/sqlite/LibraryDdlSqlLoader;->LOGGER:Lorg/slf4j/Logger;

    const/4 v0, 0x2

    .line 40
    sput v0, Lcom/audible/mobile/sqlite/LibraryDdlSqlLoader;->SEPARATOR_LENGTH:I

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/resource/InputStreamResource;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "inputStreamResource cannot be null."

    .line 51
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Lcom/audible/mobile/sqlite/LibraryDdlSqlLoader;->isr:Lcom/audible/mobile/resource/InputStreamResource;

    return-void
.end method

.method private withinVersionRange(IILjava/lang/String;)Z
    .locals 1

    .line 109
    sget v0, Lcom/audible/mobile/sqlite/LibraryDdlSqlLoader;->SEPARATOR_LENGTH:I

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 110
    invoke-static {p3}, Lcom/audible/mobile/util/NumberUtils;->toInt(Ljava/lang/String;)I

    move-result p3

    if-le p3, p1, :cond_0

    if-gt p3, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public retrieveSql(II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/audible/mobile/sqlite/LibraryDdlSqlLoader;->isr:Lcom/audible/mobile/resource/InputStreamResource;

    invoke-interface {v0}, Lcom/audible/mobile/resource/InputStreamResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "Unable to load database DDL."

    .line 67
    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 71
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 72
    new-instance v3, Lcom/audible/mobile/util/BufferedReaderIterable;

    invoke-direct {v3, v2}, Lcom/audible/mobile/util/BufferedReaderIterable;-><init>(Ljava/io/BufferedReader;)V

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-virtual {v3}, Lcom/audible/mobile/util/BufferedReaderIterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "--"

    .line 77
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 78
    invoke-direct {p0, p1, p2, v6}, Lcom/audible/mobile/sqlite/LibraryDdlSqlLoader;->withinVersionRange(IILjava/lang/String;)Z

    move-result v5

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_0

    .line 83
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 87
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v7, Lcom/audible/mobile/sqlite/LibraryDdlSqlLoader;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v7, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    :cond_2
    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 95
    throw p1
.end method
