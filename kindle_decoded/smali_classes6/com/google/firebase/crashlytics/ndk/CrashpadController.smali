.class public Lcom/google/firebase/crashlytics/ndk/CrashpadController;
.super Ljava/lang/Object;
.source "CrashpadController.java"


# static fields
.field private static final APP_METADATA_FILE:Ljava/lang/String; = "app.json"

.field private static final DEVICE_METADATA_FILE:Ljava/lang/String; = "device.json"

.field private static final OS_METADATA_FILE:Ljava/lang/String; = "os.json"

.field private static final SESSION_METADATA_FILE:Ljava/lang/String; = "session.json"

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final context:Landroid/content/Context;

.field private final filesManager:Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;

.field private final nativeApi:Lcom/google/firebase/crashlytics/ndk/NativeApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 34
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/ndk/NativeApi;Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->nativeApi:Lcom/google/firebase/crashlytics/ndk/NativeApi;

    .line 48
    iput-object p3, p0, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->filesManager:Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;

    return-void
.end method

.method private static getSingleFileWithExtension(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .line 181
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 187
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 188
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static writeSessionJsonFile(Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 161
    invoke-interface {p0, p1}, Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;->getSessionFileDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 162
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->writeTextFile(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private static writeTextFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    const-string v0, "Failed to close "

    const/4 v1, 0x0

    .line 169
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 170
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 175
    throw p1

    .line 174
    :catch_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public finalizeSession(Ljava/lang/String;)Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->filesManager:Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;

    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;->deleteSessionFileDirectory(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->filesManager:Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;

    invoke-interface {p1}, Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;->cleanOldSessionFileDirectories()V

    const/4 p1, 0x1

    return p1
.end method

.method public getFilesForSession(Ljava/lang/String;)Lcom/google/firebase/crashlytics/ndk/SessionFiles;
    .locals 6

    .line 89
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->filesManager:Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;

    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;->getSessionFileDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 90
    new-instance v0, Ljava/io/File;

    const-string v1, "pending"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Minidump directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->v(Ljava/lang/String;)V

    const-string v1, ".dmp"

    .line 95
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->getSingleFileWithExtension(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 97
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Minidump file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "exists"

    goto :goto_0

    :cond_0
    const-string v2, "does not exist"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v3, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->v(Ljava/lang/String;)V

    .line 102
    new-instance v2, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;

    invoke-direct {v2}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;-><init>()V

    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->getSingleFileWithExtension(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->minidumpFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;

    const-string v0, ".device_info"

    .line 108
    invoke-static {p1, v0}, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->getSingleFileWithExtension(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->metadataFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;

    new-instance v0, Ljava/io/File;

    const-string v1, "session.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v2, v0}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->sessionFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;

    new-instance v0, Ljava/io/File;

    const-string v1, "app.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v2, v0}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->appFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;

    new-instance v0, Ljava/io/File;

    const-string v1, "device.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2, v0}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->deviceFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;

    new-instance v0, Ljava/io/File;

    const-string v1, "os.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2, v0}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->osFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;

    .line 114
    :cond_1
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->build()Lcom/google/firebase/crashlytics/ndk/SessionFiles;

    move-result-object p1

    return-object p1
.end method

.method public hasCrashDataForSession(Ljava/lang/String;)Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->filesManager:Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;

    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;->hasSessionFileDirectory(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->getFilesForSession(Ljava/lang/String;)Lcom/google/firebase/crashlytics/ndk/SessionFiles;

    move-result-object p1

    iget-object p1, p1, Lcom/google/firebase/crashlytics/ndk/SessionFiles;->minidump:Ljava/io/File;

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;JLcom/google/firebase/crashlytics/internal/model/StaticSessionData;)Z
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->filesManager:Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;->cleanOldSessionFileDirectories()V

    .line 55
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->filesManager:Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;

    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;->getSessionFileDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->nativeApi:Lcom/google/firebase/crashlytics/ndk/NativeApi;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/firebase/crashlytics/ndk/NativeApi;->initialize(Ljava/lang/String;Landroid/content/res/AssetManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->writeBeginSession(Ljava/lang/String;Ljava/lang/String;J)V

    .line 61
    invoke-virtual {p5}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData;->appData()Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$AppData;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->writeSessionApp(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$AppData;)V

    .line 62
    invoke-virtual {p5}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData;->osData()Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$OsData;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->writeSessionOs(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$OsData;)V

    .line 63
    invoke-virtual {p5}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData;->deviceData()Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->writeSessionDevice(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 68
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p2

    const-string p3, "Error initializing Crashlytics NDK"

    invoke-virtual {p2, p3, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public writeBeginSession(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 119
    invoke-static {p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/ndk/SessionMetadataJsonSerializer;->serializeBeginSession(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    .line 120
    iget-object p3, p0, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->filesManager:Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;

    const-string p4, "session.json"

    invoke-static {p3, p1, p2, p4}, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->writeSessionJsonFile(Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeSessionApp(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$AppData;)V
    .locals 7

    .line 125
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$AppData;->unityVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$AppData;->unityVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v6, v0

    .line 128
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$AppData;->appIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$AppData;->versionCode()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$AppData;->versionName()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$AppData;->installUuid()Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$AppData;->deliveryMechanism()I

    move-result v5

    .line 127
    invoke-static/range {v1 .. v6}, Lcom/google/firebase/crashlytics/ndk/SessionMetadataJsonSerializer;->serializeSessionApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 134
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->filesManager:Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;

    const-string v1, "app.json"

    invoke-static {v0, p1, p2, v1}, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->writeSessionJsonFile(Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeSessionDevice(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;)V
    .locals 11

    .line 147
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;->arch()I

    move-result v0

    .line 148
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;->model()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;->availableProcessors()I

    move-result v2

    .line 150
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;->totalRam()J

    move-result-wide v3

    .line 151
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;->diskSpace()J

    move-result-wide v5

    .line 152
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;->isEmulator()Z

    move-result v7

    .line 153
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;->state()I

    move-result v8

    .line 154
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;->manufacturer()Ljava/lang/String;

    move-result-object v9

    .line 155
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$DeviceData;->modelClass()Ljava/lang/String;

    move-result-object v10

    .line 146
    invoke-static/range {v0 .. v10}, Lcom/google/firebase/crashlytics/ndk/SessionMetadataJsonSerializer;->serializeSessionDevice(ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 156
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->filesManager:Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;

    const-string v1, "device.json"

    invoke-static {v0, p1, p2, v1}, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->writeSessionJsonFile(Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeSessionOs(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$OsData;)V
    .locals 2

    .line 140
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$OsData;->osRelease()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$OsData;->osCodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData$OsData;->isRooted()Z

    move-result p2

    .line 139
    invoke-static {v0, v1, p2}, Lcom/google/firebase/crashlytics/ndk/SessionMetadataJsonSerializer;->serializeSessionOs(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 141
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->filesManager:Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;

    const-string v1, "os.json"

    invoke-static {v0, p1, p2, v1}, Lcom/google/firebase/crashlytics/ndk/CrashpadController;->writeSessionJsonFile(Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
