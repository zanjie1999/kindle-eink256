.class Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
.super Ljava/lang/Object;
.source "HeartBeatInfoStorage.java"


# static fields
.field private static final FORMATTER:Ljava/text/SimpleDateFormat;

.field private static final GLOBAL:Ljava/lang/String; = "fire-global"

.field private static final HEART_BEAT_COUNT_LIMIT:I = 0xc8

.field private static final HEART_BEAT_COUNT_TAG:Ljava/lang/String; = "fire-count"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "FirebaseAppHeartBeat"

.field private static final STORAGE_PREFERENCES_NAME:Ljava/lang/String; = "FirebaseAppHeartBeatStorage"

.field private static instance:Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;


# instance fields
.field private final heartBeatSharedPreferences:Landroid/content/SharedPreferences;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-string v1, "FirebaseAppHeartBeat"

    .line 54
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "FirebaseAppHeartBeatStorage"

    .line 56
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->heartBeatSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    .locals 2

    const-class v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->instance:Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    invoke-direct {v1, p0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->instance:Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    .line 77
    :cond_0
    sget-object p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->instance:Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static isSameDateUtc(JJ)Z
    .locals 1

    .line 131
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 132
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 133
    sget-object p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method declared-synchronized shouldSendGlobalHeartBeat(J)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "fire-global"

    .line 159
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->shouldSendSdkHeartBeat(Ljava/lang/String;J)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized shouldSendSdkHeartBeat(Ljava/lang/String;J)Z
    .locals 4

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v2, -0x1

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3, p2, p3}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->isSameDateUtc(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return v1

    :cond_0
    const/4 p1, 0x0

    .line 147
    monitor-exit p0

    return p1

    .line 149
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
