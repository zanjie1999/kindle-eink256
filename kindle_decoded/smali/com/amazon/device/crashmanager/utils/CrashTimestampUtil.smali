.class public Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;
.super Ljava/lang/Object;
.source "CrashTimestampUtil.java"


# static fields
.field private static final DEFAULT_LAST_GLOBAL_DROPBOX_TIME_INDEX:J = 0x0L

.field private static final DEFAULT_TIMESTAMP_JSON_STRING:Ljava/lang/String; = "{}"

.field private static final KEY_LATEST_DEDUPE_TIMESTAMPS_JSON:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

.field private static final KEY_LATEST_UPLOAD_TIMESTAMPS_JSON:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

.field private static final log:Lcom/amazon/dp/logger/DPLogger;

.field private static sCrashTimestampUtil:Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;


# instance fields
.field private mLatestDedupeTimestampsJson:Lorg/json/JSONObject;

.field private mLatestUploadTimestampsJson:Lorg/json/JSONObject;

.field private final mSettingsStore:Lcom/amazon/device/crashmanager/source/SettingsStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "CrashManager.CrashTimestampUtil"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->log:Lcom/amazon/dp/logger/DPLogger;

    .line 22
    sget-object v0, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;->UPLOAD_TIMESTAMPS_JSON:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    sput-object v0, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->KEY_LATEST_UPLOAD_TIMESTAMPS_JSON:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    .line 27
    sget-object v0, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;->DEDUPE_TIMESTAMPS_JSON:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    sput-object v0, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->KEY_LATEST_DEDUPE_TIMESTAMPS_JSON:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/device/crashmanager/source/SettingsStore;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 69
    iput-object p1, p0, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->mSettingsStore:Lcom/amazon/device/crashmanager/source/SettingsStore;

    .line 71
    sget-object p1, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->KEY_LATEST_UPLOAD_TIMESTAMPS_JSON:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    const-string/jumbo v0, "{}"

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->getSavedTimestampJson(Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->mLatestUploadTimestampsJson:Lorg/json/JSONObject;

    .line 73
    sget-object v0, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->KEY_LATEST_DEDUPE_TIMESTAMPS_JSON:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    .line 74
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-direct {p0, v0, p1}, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->getSavedTimestampJson(Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->mLatestDedupeTimestampsJson:Lorg/json/JSONObject;

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SettingsStore cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static declared-synchronized getInstance(Lcom/amazon/device/crashmanager/source/SettingsStore;)Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;
    .locals 2

    const-class v0, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->sCrashTimestampUtil:Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

    invoke-direct {v1, p0}, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;-><init>(Lcom/amazon/device/crashmanager/source/SettingsStore;)V

    sput-object v1, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->sCrashTimestampUtil:Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

    .line 81
    :cond_0
    sget-object p0, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->sCrashTimestampUtil:Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getSavedTimestampJson(Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->mSettingsStore:Lcom/amazon/device/crashmanager/source/SettingsStore;

    invoke-interface {v0, p1, p2}, Lcom/amazon/device/crashmanager/source/SettingsStore;->getString(Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 99
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 101
    sget-object v1, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->log:Lcom/amazon/dp/logger/DPLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal JSON stored in key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Ignoring."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, p2, v2

    const-string v0, "getSavedTimestampJson"

    invoke-virtual {v1, v0, p1, p2}, Lcom/amazon/dp/logger/DPLoggerBase;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getLastTimestamp(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "BUILD_MAP"

    .line 139
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_0

    .line 140
    iget-object p2, p0, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->mLatestDedupeTimestampsJson:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0

    .line 142
    :cond_0
    iget-object p2, p0, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->mLatestUploadTimestampsJson:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    :goto_0
    return-wide p1

    .line 136
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The tag may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveBuildMapIndex()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->mSettingsStore:Lcom/amazon/device/crashmanager/source/SettingsStore;

    sget-object v1, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->KEY_LATEST_DEDUPE_TIMESTAMPS_JSON:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    iget-object v2, p0, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->mLatestDedupeTimestampsJson:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/device/crashmanager/source/SettingsStore;->saveString(Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;Ljava/lang/String;)V

    return-void
.end method

.method public saveCurrentIndex()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->mSettingsStore:Lcom/amazon/device/crashmanager/source/SettingsStore;

    sget-object v1, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->KEY_LATEST_UPLOAD_TIMESTAMPS_JSON:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    iget-object v2, p0, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->mLatestUploadTimestampsJson:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/device/crashmanager/source/SettingsStore;->saveString(Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;Ljava/lang/String;)V

    return-void
.end method

.method public updateLastTimestamp(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "BUILD_MAP"

    .line 160
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->mLatestDedupeTimestampsJson:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->mLatestUploadTimestampsJson:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 166
    sget-object p4, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "tag"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string/jumbo v1, "reason"

    aput-object v1, v0, p1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const/4 p1, 0x4

    aput-object p3, v0, p1

    const-string/jumbo p1, "updateLastTimestamp"

    const-string p2, "Unable to update timestamp!"

    invoke-virtual {p4, p1, p2, v0}, Lcom/amazon/dp/logger/DPLoggerBase;->fatal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 157
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The tag may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
