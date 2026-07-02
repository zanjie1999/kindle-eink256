.class public Lcom/amazon/kindle/services/library/CServerLPRCacheFile;
.super Ljava/lang/Object;
.source "CServerLPRCacheFile.java"


# static fields
.field public static final LOCALIZED_SYNC_MESSAGE_CAPABLE_LPR_VERSION:I = 0x2

.field public static final ORIGINAL_LPR_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private fileName:Ljava/lang/String;

.field fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

.field private localTimeOffset:I

.field private lprSetTime:J

.field private message:Ljava/lang/String;

.field private position:I

.field private sourceDevice:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/io/IFileConnectionFactory;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->fileName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->localTimeOffset:I

    const-wide/16 v1, -0x1

    .line 43
    iput-wide v1, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->lprSetTime:J

    .line 44
    iput-object v0, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->sourceDevice:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->fileName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    return-void
.end method

.method private loadLocalizedCapableFormat(Lcom/amazon/kindle/io/XmlQuickReader;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "position"

    .line 135
    invoke-virtual {p1, v1}, Lcom/amazon/kindle/io/XmlQuickReader;->jumpTo(Ljava/lang/String;)Z

    move-result v1

    .line 138
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/io/XmlQuickReader;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->position:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 140
    sget-object v2, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->TAG:Ljava/lang/String;

    const-string v3, "Unable to parse position"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_0
    const-string v2, "lto"

    .line 144
    invoke-virtual {p1, v2}, Lcom/amazon/kindle/io/XmlQuickReader;->jumpTo(Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 147
    :try_start_1
    invoke-virtual {p1}, Lcom/amazon/kindle/io/XmlQuickReader;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->localTimeOffset:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 149
    sget-object v2, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->TAG:Ljava/lang/String;

    const-string v3, "Unable to parse local time offset"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_1
    const-string v2, "annotation_time_utc"

    .line 153
    invoke-virtual {p1, v2}, Lcom/amazon/kindle/io/XmlQuickReader;->jumpTo(Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 156
    :try_start_2
    invoke-virtual {p1}, Lcom/amazon/kindle/io/XmlQuickReader;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->lprSetTime:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v1

    goto :goto_2

    :catch_2
    move-exception v1

    .line 158
    sget-object v2, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->TAG:Ljava/lang/String;

    const-string v3, "Unable to parse lpr set time"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const-string v1, "source_device"

    .line 162
    invoke-virtual {p1, v1}, Lcom/amazon/kindle/io/XmlQuickReader;->jumpTo(Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 164
    invoke-virtual {p1}, Lcom/amazon/kindle/io/XmlQuickReader;->value()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->sourceDevice:Ljava/lang/String;

    return v0
.end method

.method private loadOriginalFormat(Lcom/amazon/kindle/io/XmlQuickReader;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "position"

    .line 109
    invoke-virtual {p1, v1}, Lcom/amazon/kindle/io/XmlQuickReader;->jumpTo(Ljava/lang/String;)Z

    move-result v1

    .line 112
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/io/XmlQuickReader;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->position:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 114
    sget-object v2, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->TAG:Ljava/lang/String;

    const-string v3, "Unable to parse position"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string v1, "message"

    .line 118
    invoke-virtual {p1, v1}, Lcom/amazon/kindle/io/XmlQuickReader;->jumpTo(Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 120
    invoke-virtual {p1}, Lcom/amazon/kindle/io/XmlQuickReader;->value()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->message:Ljava/lang/String;

    return v0
.end method


# virtual methods
.method public getLocalTimeOffset()I
    .locals 1

    .line 308
    iget v0, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->localTimeOffset:I

    return v0
.end method

.method public getLprSetTime()J
    .locals 2

    .line 315
    iget-wide v0, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->lprSetTime:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->position:I

    return v0
.end method

.method public getSourceDevice()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->sourceDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 287
    iget v0, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->version:I

    return v0
.end method

.method public load()Z
    .locals 6

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v1, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->fileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kindle/io/FileSystemHelper;->inputStreamFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 65
    :cond_0
    new-instance v2, Lcom/amazon/kindle/io/XmlQuickReader;

    new-instance v3, Lcom/amazon/kindle/io/StringStream;

    invoke-direct {v3, v0}, Lcom/amazon/kindle/io/StringStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Lcom/amazon/kindle/io/XmlQuickReader;-><init>(Lcom/amazon/kindle/io/StringStream;)V

    const-string v3, "version"

    .line 67
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/io/XmlQuickReader;->jumpTo(Ljava/lang/String;)Z

    move-result v3

    .line 70
    :try_start_0
    invoke-virtual {v2}, Lcom/amazon/kindle/io/XmlQuickReader;->value()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->version:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 72
    sget-object v4, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->TAG:Ljava/lang/String;

    const-string v5, "Unable to parse LPR version"

    invoke-static {v4, v5, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 77
    iget v3, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->version:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 85
    sget-object v2, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->TAG:Ljava/lang/String;

    const-string v3, "Unknown lpr cache version"

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 82
    :cond_1
    invoke-direct {p0, v2}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->loadLocalizedCapableFormat(Lcom/amazon/kindle/io/XmlQuickReader;)Z

    move-result v1

    goto :goto_1

    .line 79
    :cond_2
    invoke-direct {p0, v2}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->loadOriginalFormat(Lcom/amazon/kindle/io/XmlQuickReader;)Z

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v3

    .line 91
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 93
    sget-object v2, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->TAG:Ljava/lang/String;

    const-string v3, "Close stream error"

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return v1
.end method

.method public save(IIJLjava/lang/String;)Z
    .locals 6

    const-string v0, "close error"

    .line 234
    iget-object v1, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v2, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->fileName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/amazon/kindle/io/FileSystemHelper;->outputStreamFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v1

    if-nez p5, :cond_0

    const-string p5, ""

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v4, 0x2

    .line 244
    iput v4, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->version:I

    .line 247
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<cacheLPR>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "<version>"

    .line 249
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->version:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kindle/util/TernaryTree;->html_entities_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</version>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<position>"

    .line 251
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/TernaryTree;->html_entities_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</position>"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<lto>"

    .line 253
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/TernaryTree;->html_entities_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</lto>"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<annotation_time_utc>"

    .line 255
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/TernaryTree;->html_entities_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</annotation_time_utc>"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<source_device>"

    .line 257
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/amazon/kindle/util/TernaryTree;->html_entities_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</source_device>"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</cacheLPR>"

    .line 259
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 263
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 273
    sget-object p2, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->TAG:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 267
    :try_start_2
    sget-object p2, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->TAG:Ljava/lang/String;

    const-string p3, "Stream error"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 273
    sget-object p2, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->TAG:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 271
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 273
    sget-object p3, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->TAG:Ljava/lang/String;

    invoke-static {p3, v0, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    :goto_3
    throw p1
.end method

.method public save(ILjava/lang/String;)Z
    .locals 8

    const-string v0, "close error"

    const-string v1, "UTF-8"

    .line 175
    iget-object v2, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v3, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->fileName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/amazon/kindle/io/FileSystemHelper;->outputStreamFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 185
    :cond_1
    iput v4, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->version:I

    .line 188
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v6, "<cacheLPR>"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v5, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 192
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    const-string v7, "<version>"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->version:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/kindle/util/TernaryTree;->html_entities_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    const-string v7, "</version>"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 194
    invoke-virtual {v5, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    const-string v7, "<position>"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/TernaryTree;->html_entities_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    const-string v6, "</position>"

    invoke-direct {p1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/String;

    const-string v6, "<message>"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/amazon/kindle/util/TernaryTree;->html_entities_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/String;

    const-string v5, "</message>"

    invoke-direct {p2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 204
    new-instance p1, Ljava/lang/String;

    const-string p2, "</cacheLPR>"

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 208
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 218
    sget-object p2, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->TAG:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 212
    :try_start_2
    sget-object p2, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->TAG:Ljava/lang/String;

    const-string v1, "Stream error"

    invoke-static {p2, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 218
    sget-object p2, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->TAG:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 216
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 218
    sget-object v1, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    :goto_3
    throw p1
.end method
