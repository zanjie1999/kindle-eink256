.class Lcom/amazon/device/crashmanager/AppFileArtifactSource;
.super Ljava/lang/Object;
.source "AppFileArtifactSource.java"

# interfaces
.implements Lcom/amazon/device/crashmanager/source/ArtifactSource;


# static fields
.field private static final CRASH_FILE_NAME_DELIMITER:C = '#'

.field private static final CRASH_LOG_FILENAME_PREFIX:Ljava/lang/String; = "crashlog.v2.amzcl"

.field private static final CRASH_TAG_GROUP:I = 0x1

.field private static final LOG_CONTENTS:Z = false

.field private static final MAX_KEY_LENGTH:I = 0x32

.field private static final MAX_VALUE_LENGTH:I = 0x64

.field private static final TAG:Ljava/lang/String; = "com.amazon.device.crashmanager.AppFileArtifactSource"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCrashDetailsCollectable:Lcom/amazon/device/crashmanager/CrashDetailsCollectable;

.field private final mdedupUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/crashmanager/CrashDetailsCollectable;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 90
    iput-object p1, p0, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->mCrashDetailsCollectable:Lcom/amazon/device/crashmanager/CrashDetailsCollectable;

    const-string p1, "#(.*?)#"

    .line 92
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->pattern:Ljava/util/regex/Pattern;

    .line 93
    iput-object p3, p0, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->mdedupUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Crash details collector must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addDetailToCrashReport(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 380
    invoke-direct {p0, p2}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    invoke-direct {p0, p3}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p3, "null"

    .line 384
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private deleteCrashReportFile(Ljava/io/File;)Z
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private generateCrashReport(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    invoke-direct {p0, p1}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->getMetadataAndDebugDetails(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "metadataDetail"

    .line 264
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stackTrace"

    .line 265
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=== Complete details ===\n\n"

    .line 266
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "debugDetail"

    .line 267
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCrashReportFile()Ljava/io/File;
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->mContext:Landroid/content/Context;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/amazon/device/crashmanager/AppFileArtifactSource$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/crashmanager/AppFileArtifactSource$1;-><init>(Lcom/amazon/device/crashmanager/AppFileArtifactSource;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 240
    aget-object v0, v0, v1

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCrashTagFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 418
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 419
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "data_app_crash"

    return-object p1
.end method

.method private getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crashlog.v2.amzcl#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x23

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMetadataAndDebugDetails(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 292
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 293
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 294
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 295
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 296
    invoke-direct {p0, v4, v5}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->isHeaderMetadata(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 297
    invoke-direct {p0, v0, v4, v5}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->addDetailToCrashReport(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_0
    invoke-direct {p0, v1, v4, v5}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->addDetailToCrashReport(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "metadataDetail"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "debugDetail"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private isHeaderMetadata(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 309
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/16 v0, 0xa

    .line 310
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 389
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

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

.method private saveCrashReportToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_4

    .line 325
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 336
    :cond_0
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    sget-object v1, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->TAG:Ljava/lang/String;

    const-string v2, "Saving crash report to file: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-class v1, Lcom/amazon/device/crashmanager/AppFileArtifactSource;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 340
    :try_start_1
    iget-object v2, p0, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->isDuplicateCrash(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    iget-object p1, p0, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->mdedupUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    invoke-interface {p1, p3, p2}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;->increaseCounter(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-object p1, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Duplicate crash occurred with descriptor : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_1
    iget-object v2, p0, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v3, "UTF-8"

    .line 347
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 348
    iget-object p1, p0, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->mdedupUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    invoke-interface {p1, p3, p2}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;->increaseCounter(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object p1, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Saved crash into : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 353
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 359
    :catch_0
    :cond_2
    :goto_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_3

    .line 353
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 357
    :catch_1
    :cond_3
    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 359
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception p1

    .line 361
    sget-object p2, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->TAG:Ljava/lang/String;

    const-string p3, "Could not save crash report to file"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method calculateCrashDescriptor(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 218
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 222
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_0
    invoke-static {p1}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->calculateCrashDescriptor(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNextArtifact(Lcom/amazon/client/metrics/common/MetricEvent;)Lcom/amazon/device/crashmanager/Artifact;
    .locals 1

    const-string v0, "ARTIFACT_UPLOAD"

    .line 97
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->getNextArtifact(Lcom/amazon/client/metrics/common/MetricEvent;Ljava/lang/String;)Lcom/amazon/device/crashmanager/Artifact;

    move-result-object p1

    return-object p1
.end method

.method public getNextArtifact(Lcom/amazon/client/metrics/common/MetricEvent;Ljava/lang/String;)Lcom/amazon/device/crashmanager/Artifact;
    .locals 5

    .line 110
    invoke-direct {p0}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->getCrashReportFile()Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->getCrashTagFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    :try_start_0
    new-instance v1, Lcom/amazon/device/crashmanager/Artifact;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/amazon/device/crashmanager/Artifact;-><init>(Ljava/lang/String;Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 119
    sget-object v0, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->TAG:Ljava/lang/String;

    const-string v1, "Could not find crash file."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object p2
.end method

.method protected isDuplicateCrash(Ljava/io/File;)Z
    .locals 1

    .line 372
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 374
    :catch_0
    sget-object p1, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->TAG:Ljava/lang/String;

    const-string v0, "Exception in checking the presence of duplicate file"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public isInForeground()Ljava/lang/Boolean;
    .locals 2

    .line 194
    :try_start_0
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 196
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 199
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveCrash(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "data_app_crash"

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->saveCrash(Ljava/lang/Throwable;Ljava/lang/String;Lcom/amazon/device/crashmanager/CrashDetailsCollectable;)V

    return-void
.end method

.method saveCrash(Ljava/lang/Throwable;Ljava/lang/String;Lcom/amazon/device/crashmanager/CrashDetailsCollectable;)V
    .locals 4

    const-string/jumbo v0, "packageName"

    .line 158
    sget-object v1, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->TAG:Ljava/lang/String;

    const-string v2, "========================="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v1, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->TAG:Ljava/lang/String;

    const-string v3, "CRASH HAS OCCURRED"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    sget-object v1, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->TAG:Ljava/lang/String;

    const-string v3, "Collecting details and saving to disk"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v1, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->mCrashDetailsCollectable:Lcom/amazon/device/crashmanager/CrashDetailsCollectable;

    invoke-interface {v1, p1}, Lcom/amazon/device/crashmanager/CrashDetailsCollectable;->collect(Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v1

    if-eqz p3, :cond_0

    .line 169
    invoke-interface {p3, p1}, Lcom/amazon/device/crashmanager/CrashDetailsCollectable;->collect(Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 171
    invoke-interface {v1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->isInForeground()Ljava/lang/Boolean;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string v2, "hasForegroundActivities"

    .line 176
    invoke-virtual {p3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p3, "CrashType"

    .line 178
    invoke-interface {v1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "ContentType"

    const-string v2, "ThirdPartyJavaCrash"

    .line 179
    invoke-interface {v1, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p3, "process"

    .line 180
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p3, "version"

    const-string/jumbo v2, "packageVersionName"

    .line 181
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p3, "osBuildNumber"

    const-string v2, "androidBuildVersion"

    .line 182
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->calculateCrashDescriptor(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "TraceHashCode"

    .line 184
    invoke-interface {v1, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-direct {p0, v1}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->generateCrashReport(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    .line 186
    invoke-direct {p0, p3, p1, p2}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->saveCrashReportToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 188
    sget-object p2, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->TAG:Ljava/lang/String;

    const-string p3, "Could not handle uncaught exception"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public saveCurrentIndex()V
    .locals 4

    .line 128
    invoke-direct {p0}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->getCrashReportFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->deleteCrashReportFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    sget-object v1, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete crash report file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
