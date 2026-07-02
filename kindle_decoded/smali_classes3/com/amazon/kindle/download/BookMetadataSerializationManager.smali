.class public Lcom/amazon/kindle/download/BookMetadataSerializationManager;
.super Ljava/lang/Object;
.source "BookMetadataSerializationManager.java"


# static fields
.field private static final MANIFEST_JSON_KEY:Ljava/lang/String; = "manifest"

.field private static final METADATA_FILE_NAME:Ljava/lang/String; = ".metadata"

.field private static final MIME_TYPE_JSON_KEY:Ljava/lang/String; = "mimeType"

.field private static final TAG:Ljava/lang/String;

.field private static final locks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private jsonObject:Lorg/json/JSONObject;

.field private final krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

.field private metadataPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;

    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->locks:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    return-void
.end method

.method private loadMetadataFromManifestFile()V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->metadataPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->metadataPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->lock(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    .line 221
    iput-object v1, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->jsonObject:Lorg/json/JSONObject;

    .line 223
    monitor-enter v0

    .line 224
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->metadataPath:Ljava/lang/String;

    const-string v3, ".metadata"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 228
    :try_start_1
    invoke-static {v1}, Lcom/amazon/kindle/io/IOUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 229
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->jsonObject:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 233
    :try_start_2
    sget-object v2, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->TAG:Ljava/lang/String;

    const-string v3, "JSON error in reading metadata "

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 231
    sget-object v2, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->TAG:Ljava/lang/String;

    const-string v3, "Error in reading metadata file "

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 237
    :cond_0
    sget-object v1, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->TAG:Ljava/lang/String;

    const-string v2, "Book metadata file not found"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    iget-object v0, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->metadataPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->unLock(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 239
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method private static lock(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 4

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lock for book "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->locks:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 124
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->locks:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_0

    .line 128
    sget-object v1, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lock not available , creating new lock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v1, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->locks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-exit v0

    return-object p0

    .line 132
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lock already available for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "increasing count "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private readStringFromMetadata(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->jsonObject:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 274
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Did not find value for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in metadata located at "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->metadataPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private serializeJSON(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->metadataPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 174
    sget-object p1, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->TAG:Ljava/lang/String;

    const-string p2, "Metadata Path is null or empty"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 177
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 178
    invoke-static {p2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->metadataPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->lock(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 184
    monitor-enter v0

    .line 187
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->metadataPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 195
    :cond_2
    iget-object v3, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->jsonObject:Lorg/json/JSONObject;

    if-nez v3, :cond_3

    .line 196
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->jsonObject:Lorg/json/JSONObject;

    .line 200
    :cond_3
    iget-object v3, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    new-instance v3, Ljava/io/File;

    const-string v4, ".metadata"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/kindle/io/IOUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :try_start_1
    iget-object p2, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->metadataPath:Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->unLock(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p1

    .line 189
    :cond_4
    :goto_0
    :try_start_2
    sget-object v2, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The directory to write metadata is invalid or it doesn\'t exists. path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->metadataPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    :try_start_3
    iget-object p1, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->metadataPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->unLock(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 206
    :try_start_4
    sget-object p2, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->TAG:Ljava/lang/String;

    const-string v2, "Error in writing to the metadata file "

    invoke-static {p2, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 208
    :try_start_5
    iget-object p1, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->metadataPath:Ljava/lang/String;

    :goto_1
    invoke-static {p1}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->unLock(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 204
    :try_start_6
    sget-object v3, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in writing JSON object "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "JSON value"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 208
    :try_start_7
    iget-object p1, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->metadataPath:Ljava/lang/String;

    goto :goto_1

    .line 210
    :goto_2
    monitor-exit v0

    return v1

    .line 208
    :goto_3
    iget-object p2, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->metadataPath:Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->unLock(Ljava/lang/String;)V

    .line 209
    throw p1

    :catchall_1
    move-exception p1

    .line 210
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1

    .line 179
    :cond_5
    :goto_4
    sget-object p1, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->TAG:Ljava/lang/String;

    const-string p2, "Input jsonKey or jsonValue is null or empty"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static unLock(Ljava/lang/String;)V
    .locals 4

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unlock for book "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->locks:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 147
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->locks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    sget-object v1, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->locks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 149
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count is 0 for book "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    sget-object v1, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->locks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 156
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for book "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 159
    :cond_1
    sget-object p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->TAG:Ljava/lang/String;

    const-string v1, "lock not found during unlocking "

    invoke-static {p0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public loadMetadata(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->metadataPath:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->loadMetadataFromManifestFile()V

    return-void
.end method

.method public loadMetadata(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->metadataPath:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->loadMetadataFromManifestFile()V

    return-void
.end method

.method public readDeliveryManifestFromMetadata()Ljava/lang/String;
    .locals 1

    const-string v0, "manifest"

    .line 251
    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->readStringFromMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readMimeTypeFromMetadata()Ljava/lang/String;
    .locals 1

    const-string v0, "mimeType"

    .line 260
    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->readStringFromMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializeManifest(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "manifest"

    .line 98
    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->serializeJSON(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public serializeMimeType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "mimeType"

    .line 108
    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->serializeJSON(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
