.class public Lcom/amazon/kcp/library/models/internal/PDFBookItem;
.super Lcom/amazon/kcp/library/models/internal/CLocalBookItem;
.source "PDFBookItem.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final fileName:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private lastModificationDate:J

.field private final settingsFileName:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/amazon/kcp/library/models/internal/PDFBookItem;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move-object v8, p3

    .line 51
    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/library/models/internal/PDFBookItem;-><init>(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;JJLcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;JJLcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0, p7, p8}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V

    const/4 p8, 0x0

    .line 47
    iput-object p8, p0, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->key:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->fileName:Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->constructSidecarFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    iput-object p8, p0, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->settingsFileName:Ljava/lang/String;

    .line 62
    invoke-interface {p7}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getFileSeparator()C

    move-result p8

    invoke-virtual {p1, p8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p8

    add-int/lit8 p8, p8, 0x1

    invoke-virtual {p1, p8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p8

    .line 63
    invoke-direct {p0, p8}, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->setAttributesFromFileName(Ljava/lang/String;)V

    .line 65
    invoke-interface {p7, p1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/kindle/io/IFileConnection;

    move-result-object p8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    .line 68
    :try_start_0
    iput-wide p3, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileLastModified:J

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {p7, p1}, Lcom/amazon/kindle/io/FileSystemHelper;->getLastModifiedDate(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileLastModified:J

    :goto_0
    cmp-long p3, p5, v0

    if-lez p3, :cond_1

    .line 74
    iput-wide p5, p0, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->lastModificationDate:J

    goto :goto_1

    .line 76
    :cond_1
    iget-object p3, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object p4, p0, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->settingsFileName:Ljava/lang/String;

    invoke-static {p3, p4}, Lcom/amazon/kindle/io/FileSystemHelper;->getLastModifiedDate(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->lastModificationDate:J

    :goto_1
    if-nez p2, :cond_2

    .line 80
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->key:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-interface {p8}, Lcom/amazon/kindle/io/IFileConnection;->lastModified()J

    move-result-wide v4

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->computeBookID(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;J)V

    goto :goto_2

    .line 82
    :cond_2
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :goto_2
    invoke-interface {p8}, Lcom/amazon/kindle/io/IFileConnection;->close()V

    .line 88
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->loadLocalBookState()V

    .line 89
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->readLastPageReadFromFile()V

    return-void

    :catchall_0
    move-exception p1

    .line 85
    invoke-interface {p8}, Lcom/amazon/kindle/io/IFileConnection;->close()V

    .line 86
    throw p1
.end method

.method private constructSidecarFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x2e

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const-string v1, ".index"

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-interface {v3}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-interface {v5}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/amazon/kindle/io/IPathDescriptor;->getDocumentPath(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v3, v2

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-interface {v3}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/amazon/kindle/io/IPathDescriptor;->getDocumentPath(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readLastPageReadFromFile()V
    .locals 6

    const-string v0, "IOException in readLastPageReadFromFile()"

    .line 322
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->getSettingsFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 328
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x0

    .line 331
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 332
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v2

    .line 354
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    sget-object v3, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 358
    :cond_0
    sget-object v2, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :catchall_0
    move-exception v1

    move-object v2, v3

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_0

    :catch_2
    move-object v2, v3

    goto/16 :goto_5

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    .line 340
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    sget-object v3, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read Last Read Page info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 344
    :cond_1
    sget-object v1, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->TAG:Ljava/lang/String;

    const-string v3, "Failed to read Last Read Page info because of an exception"

    invoke-static {v1, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v2, :cond_5

    .line 349
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    .line 354
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    sget-object v2, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 358
    :cond_2
    sget-object v1, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :goto_3
    if-eqz v2, :cond_4

    .line 349
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catch_5
    move-exception v2

    .line 354
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 355
    sget-object v3, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 358
    :cond_3
    sget-object v2, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_4
    :goto_4
    throw v1

    :catch_6
    nop

    :goto_5
    if-eqz v2, :cond_5

    .line 349
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_6

    :catch_7
    move-exception v1

    .line 354
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    sget-object v2, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_5
    :goto_6
    const/4 v1, 0x0

    .line 365
    :goto_7
    invoke-static {v1}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPositionFromPageIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->setLastPositionRead(I)V

    return-void
.end method

.method private saveLastPageRead(I)V
    .locals 5

    const-string v0, "IOException in saveLastPageRead()"

    .line 288
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->getSettingsFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 293
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 294
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p1

    .line 309
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    sget-object v1, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 312
    :cond_0
    sget-object v1, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 296
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    sget-object v1, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write Last Read Page info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 299
    :cond_1
    sget-object v1, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->TAG:Ljava/lang/String;

    const-string v3, "Failed to write Last Read Page info"

    invoke-static {v1, v3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v2, :cond_4

    .line 304
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 309
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    sget-object v1, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_3
    if-eqz v2, :cond_3

    .line 304
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 309
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    sget-object v2, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 312
    :cond_2
    sget-object v2, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    :cond_3
    :goto_4
    throw p1

    :cond_4
    :goto_5
    return-void
.end method

.method private setAttributesFromFileName(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "_PDOC.pdf"

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5f

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    .line 106
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->key:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->title:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-interface {v0}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->title:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public createPageLabels()Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAmzGuid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAmznUserLocationFromPosition(I)I
    .locals 0

    return p1
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getBaseLanguage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBookType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 183
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method

.method public getCDEBookFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "pdf"

    return-object v0
.end method

.method public getContentClass()Lcom/amazon/kindle/model/content/ContentClass;
    .locals 1

    .line 276
    sget-object v0, Lcom/amazon/kindle/model/content/ContentClass;->DEFAULT:Lcom/amazon/kindle/model/content/ContentClass;

    return-object v0
.end method

.method public getEmbeddedCover(Lcom/amazon/kindle/util/drawing/ImageFactory;Lcom/amazon/kindle/util/drawing/Dimension;)Lcom/amazon/kindle/util/drawing/Image;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getGenericMetadata()Lcom/amazon/kindle/model/content/ILocalBookMetadataModel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKRFVersion()Lcom/amazon/kindle/model/content/KRFVersion;
    .locals 1

    .line 430
    sget-object v0, Lcom/amazon/kindle/model/content/KRFVersion;->KRF4:Lcom/amazon/kindle/model/content/KRFVersion;

    return-object v0
.end method

.method public getLargeEmbeddedCover(Lcom/amazon/kindle/util/drawing/ImageFactory;Lcom/amazon/kindle/util/drawing/Dimension;)Lcom/amazon/kindle/util/drawing/Image;
    .locals 0

    .line 138
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getLastPositionRead()I
    .locals 1

    .line 413
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->lastPositionRead:I

    invoke-static {v0}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPositionFromPageIndex(I)I

    move-result v0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/pdf"

    return-object v0
.end method

.method public getOrientation()Lcom/amazon/kindle/model/content/BookOrientation;
    .locals 1

    .line 247
    sget-object v0, Lcom/amazon/kindle/model/content/BookOrientation;->UNDEFINED:Lcom/amazon/kindle/model/content/BookOrientation;

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicationDateInMillis()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;
    .locals 1

    .line 260
    sget-object v0, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    return-object v0
.end method

.method public getSettingsFileName()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->settingsFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getSidecarPath()Ljava/lang/String;
    .locals 2

    .line 392
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWatermark()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasDictionaryLookups()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasRecaps()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFixedLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGenericFixedFormat()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSample()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public persistLastPositionReadToSidecar(I)V
    .locals 0

    .line 418
    invoke-static {p1}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPageIndexFromPosition(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/internal/PDFBookItem;->saveLastPageRead(I)V

    return-void
.end method

.method protected populateSupportedFeatureSet()V
    .locals 2

    .line 375
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->StaticPagination:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 376
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->DisableLocationNavigation:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 377
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->enable_thumbnail_scrubber_for_mop_and_pdf:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 379
    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ThumbnailScrubber:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 380
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ResizableFont:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 381
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->FontFaceChange:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    return-void
.end method

.method public setLastPositionRead(I)V
    .locals 0

    .line 408
    invoke-static {p1}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPageIndexFromPosition(I)I

    move-result p1

    invoke-super {p0, p1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setLastPositionRead(I)V

    return-void
.end method

.method public setPageLabelFile(Ljava/lang/String;)Z
    .locals 0

    .line 128
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public supportsAnnotationSync()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
