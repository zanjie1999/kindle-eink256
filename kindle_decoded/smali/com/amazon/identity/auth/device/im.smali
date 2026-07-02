.class public Lcom/amazon/identity/auth/device/im;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field protected static final qZ:J

.field private static volatile ra:Z


# instance fields
.field private final F:Lcom/amazon/identity/auth/device/eh;

.field private final hY:Lcom/amazon/identity/auth/device/ds;

.field private final mContext:Landroid/content/Context;

.field private final rb:Lcom/amazon/identity/auth/device/gm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/jg;->b(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/im;->qZ:J

    const/4 v0, 0x0

    .line 54
    sput-boolean v0, Lcom/amazon/identity/auth/device/im;->ra:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    const-string/jumbo v1, "map_version_cache"

    invoke-direct {v0, p1, v1}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/im;->rb:Lcom/amazon/identity/auth/device/gm;

    .line 64
    iput-object p1, p0, Lcom/amazon/identity/auth/device/im;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/amazon/identity/auth/device/ds;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/ds;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/im;->hY:Lcom/amazon/identity/auth/device/ds;

    .line 66
    new-instance p1, Lcom/amazon/identity/auth/device/eh;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/eh;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/im;->F:Lcom/amazon/identity/auth/device/eh;

    return-void
.end method

.method public static gH()Ljava/lang/String;
    .locals 1

    const-string v0, "20210928P"

    return-object v0
.end method


# virtual methods
.method public gI()Lorg/json/JSONObject;
    .locals 4

    .line 90
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "current_version"

    const-string v2, "20210928P"

    .line 91
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "package_name"

    .line 92
    iget-object v2, p0, Lcom/amazon/identity/auth/device/im;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "platform"

    const-string v2, "Android"

    .line 93
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "client_metrics_integrated"

    .line 94
    iget-object v2, p0, Lcom/amazon/identity/auth/device/im;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/mn;->aR(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 96
    const-class v1, Lcom/amazon/identity/auth/device/im;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :try_start_1
    iget-object v2, p0, Lcom/amazon/identity/auth/device/im;->rb:Lcom/amazon/identity/auth/device/gm;

    const-string/jumbo v3, "map_version_recorded_server"

    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/gm;->cr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "20210928P"

    .line 99
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "previous_version"

    .line 101
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x1

    .line 102
    sput-boolean v2, Lcom/amazon/identity/auth/device/im;->ra:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 106
    sput-boolean v2, Lcom/amazon/identity/auth/device/im;->ra:Z

    .line 108
    :goto_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public gJ()V
    .locals 4

    .line 119
    const-class v0, Lcom/amazon/identity/auth/device/im;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-boolean v1, Lcom/amazon/identity/auth/device/im;->ra:Z

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/amazon/identity/auth/device/im;->rb:Lcom/amazon/identity/auth/device/gm;

    const-string/jumbo v2, "map_version_recorded_server"

    const-string v3, "20210928P"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/identity/auth/device/gm;->O(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x0

    .line 124
    sput-boolean v1, Lcom/amazon/identity/auth/device/im;->ra:Z

    .line 126
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method gK()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/amazon/identity/auth/device/im;->rb:Lcom/amazon/identity/auth/device/gm;

    const-string/jumbo v1, "map_version_recorded_client"

    const-string v2, "20210928P"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/gm;->O(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method gL()Z
    .locals 7

    .line 138
    const-class v0, Lcom/amazon/identity/auth/device/im;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/im;->rb:Lcom/amazon/identity/auth/device/gm;

    const-string v2, "last_time_report_version"

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/gm;->cu(Ljava/lang/String;)J

    move-result-wide v1

    .line 141
    iget-object v3, p0, Lcom/amazon/identity/auth/device/im;->F:Lcom/amazon/identity/auth/device/eh;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/eh;->currentTimeMillis()J

    move-result-wide v3

    .line 142
    sget-wide v5, Lcom/amazon/identity/auth/device/im;->qZ:J

    add-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/im;->gN()V

    .line 147
    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 148
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method gM()Z
    .locals 3

    .line 154
    const-class v0, Lcom/amazon/identity/auth/device/im;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/im;->rb:Lcom/amazon/identity/auth/device/gm;

    const-string/jumbo v2, "map_version_recorded_client"

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/gm;->cr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "20210928P"

    .line 157
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/im;->gK()V

    .line 162
    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 163
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method gN()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/amazon/identity/auth/device/im;->F:Lcom/amazon/identity/auth/device/eh;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eh;->currentTimeMillis()J

    move-result-wide v0

    .line 170
    iget-object v2, p0, Lcom/amazon/identity/auth/device/im;->rb:Lcom/amazon/identity/auth/device/gm;

    const-string v3, "last_time_report_version"

    invoke-virtual {v2, v3, v0, v1}, Lcom/amazon/identity/auth/device/gm;->a(Ljava/lang/String;J)Z

    return-void
.end method

.method public gO()V
    .locals 4

    .line 175
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/im;->gL()Z

    move-result v0

    const-string v1, "20210928P"

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/amazon/identity/auth/device/im;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->bc(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "Daily_Version_Distribution"

    if-eqz v0, :cond_0

    .line 180
    invoke-static {v3, v1}, Lcom/amazon/identity/auth/device/mn;->aB(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/String;

    .line 181
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/im;->hY:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->di()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-static {v3, v1}, Lcom/amazon/identity/auth/device/mn;->aC(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/String;

    .line 187
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 190
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/im;->gM()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/amazon/identity/auth/device/im;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->bc(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "Bump_Version_Statistics"

    if-eqz v0, :cond_2

    .line 195
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/mn;->aB(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/im;->hY:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->di()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/mn;->aC(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
