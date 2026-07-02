.class public Lcom/amazon/identity/auth/device/storage/LambortishClock;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/storage/LambortishClock$ChangeTimestampsBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.storage.LambortishClock"

.field private static of:Lcom/amazon/identity/auth/device/storage/LambortishClock;


# instance fields
.field private final nG:Lcom/amazon/identity/auth/device/eh;

.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private og:Ljava/lang/Long;

.field private oh:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/LambortishClock;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "dcp_system"

    .line 80
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/eh;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/LambortishClock;->nG:Lcom/amazon/identity/auth/device/eh;

    return-void
.end method

.method public static declared-synchronized V(Landroid/content/Context;)Lcom/amazon/identity/auth/device/storage/LambortishClock;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/storage/LambortishClock;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/storage/LambortishClock;->of:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    new-instance v1, Lcom/amazon/identity/auth/device/storage/LambortishClock;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/storage/LambortishClock;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/identity/auth/device/storage/LambortishClock;->of:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    .line 90
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/storage/LambortishClock;->of:Lcom/amazon/identity/auth/device/storage/LambortishClock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Lcom/amazon/identity/auth/device/gm;)J
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LambortishClock;->og:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-string v0, "greatest_timestamp_ms_seen_key"

    .line 165
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/gm;->cu(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/LambortishClock;->og:Ljava/lang/Long;

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LambortishClock;->og:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Lcom/amazon/identity/auth/device/gm;J)Z
    .locals 1

    .line 173
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/storage/LambortishClock;->og:Ljava/lang/Long;

    const-string v0, "greatest_timestamp_ms_seen_key"

    .line 174
    invoke-virtual {p1, v0, p2, p3}, Lcom/amazon/identity/auth/device/gm;->a(Ljava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/identity/auth/device/storage/LambortishClock;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private av()Lcom/amazon/identity/auth/device/gm;
    .locals 3

    .line 195
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/LambortishClock;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v2, "Lambortish_Clock_Store"

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized d(Ljava/util/Date;)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 114
    monitor-exit p0

    return v0

    .line 117
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 119
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->av()Lcom/amazon/identity/auth/device/gm;

    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->a(Lcom/amazon/identity/auth/device/gm;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 125
    sget-object v0, Lcom/amazon/identity/auth/device/storage/LambortishClock;->TAG:Ljava/lang/String;

    const-string v3, "Saving greatest timestamp seen : "

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, p1, v1, v2}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->a(Lcom/amazon/identity/auth/device/gm;J)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 128
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized fp()Ljava/util/Date;
    .locals 8

    monitor-enter p0

    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->av()Lcom/amazon/identity/auth/device/gm;

    move-result-object v0

    .line 97
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->a(Lcom/amazon/identity/auth/device/gm;)J

    move-result-wide v1

    .line 1144
    iget-object v3, p0, Lcom/amazon/identity/auth/device/storage/LambortishClock;->nG:Lcom/amazon/identity/auth/device/eh;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/eh;->currentTimeMillis()J

    move-result-wide v3

    .line 1179
    iget-object v5, p0, Lcom/amazon/identity/auth/device/storage/LambortishClock;->oh:Ljava/lang/Long;

    if-nez v5, :cond_0

    const-string v5, "cur_delta_ms_key"

    .line 1181
    invoke-virtual {v0, v5}, Lcom/amazon/identity/auth/device/gm;->cu(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/amazon/identity/auth/device/storage/LambortishClock;->oh:Ljava/lang/Long;

    .line 1184
    :cond_0
    iget-object v5, p0, Lcom/amazon/identity/auth/device/storage/LambortishClock;->oh:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v3

    cmp-long v7, v5, v1

    if-lez v7, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x64

    add-long/2addr v5, v1

    sub-long v1, v5, v3

    .line 1189
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/identity/auth/device/storage/LambortishClock;->oh:Ljava/lang/Long;

    const-string v3, "cur_delta_ms_key"

    .line 1190
    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/identity/auth/device/gm;->a(Ljava/lang/String;J)Z

    .line 101
    :goto_0
    invoke-direct {p0, v0, v5, v6}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->a(Lcom/amazon/identity/auth/device/gm;J)Z

    .line 103
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fq()V
    .locals 7

    monitor-enter p0

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->fp()Ljava/util/Date;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/amazon/identity/auth/device/storage/LambortishClock;->TAG:Ljava/lang/String;

    const-string v2, "Users clock moved. System time is %s and timestamp is %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amazon/identity/auth/device/storage/LambortishClock;->nG:Lcom/amazon/identity/auth/device/eh;

    .line 138
    invoke-virtual {v5}, Lcom/amazon/identity/auth/device/eh;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 139
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 136
    invoke-static {v1, v2, v3}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
