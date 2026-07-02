.class Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;
.super Ljava/lang/Object;
.source "AppFileArtifactSource.java"

# interfaces
.implements Lcom/amazon/whispersync/device/crashmanager/ArtifactSource;


# static fields
.field private static final CRASH_LOG_FILENAME:Ljava/lang/String; = "crashlog.v2.amzcl"

.field private static final LOG_CONTENTS:Z = false

.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.device.crashmanager.AppFileArtifactSource"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCrashDetailsCollectable:Lcom/amazon/whispersync/device/crashmanager/CrashDetailsCollectable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whispersync/device/crashmanager/CrashDetailsCollectable;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 44
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->mCrashDetailsCollectable:Lcom/amazon/whispersync/device/crashmanager/CrashDetailsCollectable;

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Crash details collector must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addDetailToCrashReport(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 189
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method deleteCrashReportFile()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->mContext:Landroid/content/Context;

    const-string v1, "crashlog.v2.amzcl"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method generateCrashReport(Ljava/util/Map;)Ljava/lang/String;
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

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CrashTimeUTC"

    .line 133
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->addDetailToCrashReport(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CrashType"

    const-string v2, "data_app_crash"

    .line 134
    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->addDetailToCrashReport(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ContentType"

    const-string v2, "ThirdPartyJavaCrash"

    .line 135
    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->addDetailToCrashReport(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "packageName"

    .line 136
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Process"

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->addDetailToCrashReport(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "packageVersionName"

    .line 137
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Version"

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->addDetailToCrashReport(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "androidBuildVersion"

    .line 138
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "OsBuildNumber"

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->addDetailToCrashReport(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\n"

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stackTrace"

    .line 140
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=== Complete details ===\n\n"

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 144
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->addDetailToCrashReport(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getCrashReportFile()Ljava/io/File;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->mContext:Landroid/content/Context;

    const-string v1, "crashlog.v2.amzcl"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getNextArtifact(Lcom/amazon/whispersync/client/metrics/MetricEvent;)Lcom/amazon/whispersync/device/crashmanager/Artifact;
    .locals 6

    .line 58
    invoke-virtual {p0}, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->getCrashReportFile()Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    :try_start_0
    new-instance v1, Lcom/amazon/whispersync/device/crashmanager/Artifact;

    const-string v2, "data_app_crash"

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/whispersync/device/crashmanager/Artifact;-><init>(Ljava/lang/String;Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 71
    :catch_0
    sget-object p1, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->TAG:Ljava/lang/String;

    const-string v1, "Could not find crash file."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public saveCrash(Ljava/lang/Throwable;)V
    .locals 2

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->mCrashDetailsCollectable:Lcom/amazon/whispersync/device/crashmanager/CrashDetailsCollectable;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/device/crashmanager/CrashDetailsCollectable;->collect(Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->generateCrashReport(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->saveCrashReportToFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->TAG:Ljava/lang/String;

    const-string v1, "Could not handle uncaught exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method saveCrashReportToFile(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    :try_start_0
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->TAG:Ljava/lang/String;

    const-string v1, "Saving crash report to file: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->mContext:Landroid/content/Context;

    const-string v4, "crashlog.v2.amzcl"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-class v0, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->mContext:Landroid/content/Context;

    const-string v2, "crashlog.v2.amzcl"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 180
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 178
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw p1

    :catchall_1
    move-exception p1

    .line 180
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 184
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->TAG:Ljava/lang/String;

    const-string v1, "Could not save crash report to file"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 182
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->TAG:Ljava/lang/String;

    const-string v1, "Could not save crash report to file"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public saveCurrentIndex()V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->getCrashReportFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->deleteCrashReportFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->TAG:Ljava/lang/String;

    const-string v1, "Failed to delete crash report."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
