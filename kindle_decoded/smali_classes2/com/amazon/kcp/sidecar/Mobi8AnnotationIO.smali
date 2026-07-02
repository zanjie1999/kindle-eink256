.class public final Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;
.super Ljava/lang/Object;
.source "Mobi8AnnotationIO.java"

# interfaces
.implements Lcom/amazon/kindle/services/sync/AnnotationIO;


# static fields
.field private static final ANNOTATIONS_EXTENSION_TMP:Ljava/lang/String; = "tmt"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private crp:I

.field private final currentSidecarPath:Ljava/lang/String;

.field private final fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

.field private final jsonAdapter:Lcom/amazon/kcp/sidecar/IJsonAnnotationConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/sidecar/IJsonAnnotationConverter<",
            "Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;",
            ">;"
        }
    .end annotation
.end field

.field private lastAnnotationModificationTime:J

.field private lastReadPageNumber:I

.field private lastReadPagePosition:I

.field private mrpr:I

.field private sidecar:Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Lcom/amazon/kcp/sidecar/IJsonAnnotationConverter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/io/IFileConnectionFactory;",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/sidecar/IJsonAnnotationConverter<",
            "Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    .line 53
    iput-object p2, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->currentSidecarPath:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->jsonAdapter:Lcom/amazon/kcp/sidecar/IJsonAnnotationConverter;

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->lastReadPageNumber:I

    .line 56
    iput p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->lastReadPagePosition:I

    .line 57
    iput p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->mrpr:I

    const-wide/16 p1, 0x0

    .line 58
    iput-wide p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->lastAnnotationModificationTime:J

    return-void
.end method

.method private getLastPositionRead(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)I
    .locals 0

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->loadSideCarFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)V

    .line 254
    iget p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->lastReadPagePosition:I

    return p1
.end method

.method private getMrpr(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)I
    .locals 0

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->loadSideCarFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)V

    .line 267
    iget p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->mrpr:I

    return p1
.end method

.method private getStringFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 212
    :try_start_0
    invoke-static {p1, p2}, Lcom/amazon/kindle/io/FileSystemHelper;->dataInputStreamFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/io/DataInputStream;

    move-result-object p1

    if-nez p1, :cond_0

    .line 214
    sget-object p1, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->TAG:Ljava/lang/String;

    const-string p2, "Error as Input Stream is null"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 217
    :cond_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x800

    new-array v1, v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_1

    const/4 v3, 0x0

    .line 223
    invoke-virtual {p2, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 224
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 228
    :try_start_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V

    .line 231
    :cond_2
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_3

    .line 228
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V

    .line 230
    :cond_3
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 233
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 234
    sget-object p1, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while reading from input stream from file: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->currentSidecarPath:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 236
    :cond_4
    sget-object p2, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->TAG:Ljava/lang/String;

    const-string v1, "Error while reading from input stream from file in getStringFromFile"

    invoke-static {p2, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method private loadSideCarFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)V
    .locals 6

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->getStringFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    iget-object p2, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->jsonAdapter:Lcom/amazon/kcp/sidecar/IJsonAnnotationConverter;

    invoke-interface {p2, p1}, Lcom/amazon/kcp/sidecar/IJsonAnnotationConverter;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;

    if-eqz p1, :cond_0

    .line 97
    iput-object p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->sidecar:Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;

    .line 98
    invoke-virtual {p1}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->getLastReadPosition()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->lastReadPagePosition:I

    .line 99
    iget-object p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->sidecar:Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;

    invoke-virtual {p1}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->getCrp()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->crp:I

    .line 100
    iget-object p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->sidecar:Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;

    invoke-virtual {p1}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->getMrpr()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->mrpr:I

    goto :goto_0

    .line 102
    :cond_0
    new-instance p1, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;

    const-string v1, " "

    const-string v2, " "

    const-string v3, " "

    const-string v4, " "

    const-string v5, " "

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->sidecar:Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;

    :goto_0
    return-void
.end method

.method private readAnnotationsFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/io/IFileConnectionFactory;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/sync/AnnotationExport;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->loadSideCarFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->sidecar:Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;

    invoke-virtual {p1}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->getAnnotationList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private writeAnnotationsToFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/io/IFileConnectionFactory;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/sync/AnnotationExport;",
            ">;)V"
        }
    .end annotation

    .line 157
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->currentSidecarPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "tmt"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->sidecar:Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;

    const-string v2, ""

    const-string v3, ""

    const-string v4, "mobi8"

    const-string v5, ""

    const-string v6, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iput-object v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->sidecar:Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;

    .line 164
    :cond_0
    invoke-virtual {v0, p3}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;->setAnnotationList(Ljava/util/List;)V

    .line 165
    iget-object p3, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->jsonAdapter:Lcom/amazon/kcp/sidecar/IJsonAnnotationConverter;

    invoke-interface {p3, v0}, Lcom/amazon/kcp/sidecar/IJsonAnnotationConverter;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    .line 168
    invoke-static {p1, p2, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->dataOutputStreamFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Z)Ljava/io/DataOutputStream;

    move-result-object v1

    .line 169
    sget-object v2, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Count not create output stream from file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 172
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 174
    :try_start_0
    invoke-virtual {v2, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 176
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->currentSidecarPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 178
    sget-object v1, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while writing json object string to file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    new-array p3, v0, [Ljava/io/Closeable;

    aput-object v2, p3, v3

    .line 179
    invoke-static {p3}, Lcom/amazon/kindle/io/FileSystemHelper;->closeQuietly([Ljava/io/Closeable;)V

    .line 181
    :goto_1
    invoke-static {p1, p2}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getAnnotationFileName()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->currentSidecarPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAnnotationModificationTime()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->lastAnnotationModificationTime:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 293
    :try_start_0
    iget-object v3, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v4, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->currentSidecarPath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/amazon/kindle/io/FileSystemHelper;->dataInputStreamFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/io/DataInputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v2, v0, v1

    .line 306
    invoke-static {v0}, Lcom/amazon/kindle/io/FileSystemHelper;->closeQuietly([Ljava/io/Closeable;)V

    return v1

    .line 300
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v3

    .line 301
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_2

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v2, v0, v1

    .line 306
    invoke-static {v0}, Lcom/amazon/kindle/io/FileSystemHelper;->closeQuietly([Ljava/io/Closeable;)V

    return v3

    :cond_2
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/amazon/kindle/io/FileSystemHelper;->closeQuietly([Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception v3

    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/amazon/kindle/io/FileSystemHelper;->closeQuietly([Ljava/io/Closeable;)V

    .line 307
    throw v3
.end method

.method public readAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public readAnnotations(Lcom/amazon/kindle/services/sync/AnnotationIO$AnnotationParserCallback;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->currentSidecarPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->readAnnotationsFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/sync/AnnotationExport;

    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    .line 71
    iget-wide v2, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->lastAnnotationModificationTime:J

    invoke-virtual {v1}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getModifiedTime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->lastAnnotationModificationTime:J

    .line 72
    invoke-interface {p1, v1}, Lcom/amazon/kindle/services/sync/AnnotationIO$AnnotationParserCallback;->onAnnotationFound(Lcom/amazon/kindle/services/sync/AnnotationExport;)V

    goto :goto_0

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/InterruptedException;

    const-string v0, "Interrupted while reading annotations"

    invoke-direct {p1, v0}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public readLastPageRead()Lcom/amazon/kindle/model/content/LastPageRead;
    .locals 4

    .line 109
    iget v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->lastReadPagePosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->currentSidecarPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->getLastPositionRead(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)I

    .line 112
    :cond_0
    new-instance v0, Lcom/amazon/kindle/model/content/LastPageRead;

    iget v1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->lastReadPageNumber:I

    iget v2, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->lastReadPagePosition:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/model/content/LastPageRead;-><init>(II[B)V

    return-object v0
.end method

.method public readMrpr()I
    .locals 2

    .line 117
    iget v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->mrpr:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->currentSidecarPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->getMrpr(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->mrpr:I

    return v0
.end method

.method public writeAnnotations(Lcom/amazon/kindle/model/content/LastPageRead;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/LastPageRead;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;)V"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 134
    new-instance v2, Lcom/amazon/kindle/services/sync/AnnotationExport;

    invoke-direct {v2, v1}, Lcom/amazon/kindle/services/sync/AnnotationExport;-><init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/LastPageRead;->getLastPageReadPosition()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->lastReadPagePosition:I

    .line 138
    new-instance p2, Lcom/amazon/kindle/services/sync/AnnotationExport;

    new-instance v2, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v2, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    new-instance v3, Lcom/amazon/kindle/model/Annotations/IntPosition;

    iget p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->lastReadPagePosition:I

    invoke-direct {v3, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    new-instance v4, Lcom/amazon/kindle/model/Annotations/IntPosition;

    iget p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->lastReadPagePosition:I

    invoke-direct {v4, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x80

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    move-object v1, p2

    invoke-direct/range {v1 .. v11}, Lcom/amazon/kindle/services/sync/AnnotationExport;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IIILjava/lang/String;Ljava/lang/String;[BI)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object p2, p0, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->currentSidecarPath:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->writeAnnotationsToFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
