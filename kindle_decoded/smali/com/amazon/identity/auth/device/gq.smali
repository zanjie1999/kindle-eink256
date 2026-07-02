.class public Lcom/amazon/identity/auth/device/gq;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/gq$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field static oI:J


# instance fields
.field private final fB:[Ljava/lang/Object;

.field private final nF:Lcom/amazon/identity/auth/device/cw;

.field private final nG:Lcom/amazon/identity/auth/device/eh;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 20
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    .line 21
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/gq;->oI:J

    .line 22
    const-class v0, Lcom/amazon/identity/auth/device/gq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/gq;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    iput-object v0, p0, Lcom/amazon/identity/auth/device/gq;->fB:[Ljava/lang/Object;

    .line 65
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gq;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v0, "sso_alarm_maanger"

    .line 66
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/cw;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gq;->nF:Lcom/amazon/identity/auth/device/cw;

    .line 67
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gq;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "dcp_system"

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/eh;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gq;->nG:Lcom/amazon/identity/auth/device/eh;

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/gq;Ljava/lang/Long;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/gq;->a(Ljava/lang/Long;)V

    return-void
.end method

.method private a(Ljava/lang/Long;)V
    .locals 4

    .line 135
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gq;->av()Lcom/amazon/identity/auth/device/gm;

    move-result-object v0

    const-string/jumbo v1, "sync_dirty_data_store_time"

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/gm;->a(Ljava/lang/String;J)Z

    return-void

    .line 142
    :cond_0
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/gm;->cv(Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/gq;)[Ljava/lang/Object;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/identity/auth/device/gq;->fB:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/identity/auth/device/gq;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private av()Lcom/amazon/identity/auth/device/gm;
    .locals 3

    .line 148
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gq;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v2, "sync_dirty_data_store"

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/gq;)Lcom/amazon/identity/auth/device/cw;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/identity/auth/device/gq;->nF:Lcom/amazon/identity/auth/device/cw;

    return-object p0
.end method


# virtual methods
.method public fJ()Lcom/amazon/identity/auth/device/gq$a;
    .locals 10

    .line 72
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gq;->fB:[Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gq;->nG:Lcom/amazon/identity/auth/device/eh;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/eh;->currentTimeMillis()J

    move-result-wide v1

    .line 1124
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gq;->av()Lcom/amazon/identity/auth/device/gm;

    move-result-object v3

    const-string/jumbo v4, "sync_dirty_data_store_time"

    .line 1125
    invoke-virtual {v3, v4}, Lcom/amazon/identity/auth/device/gm;->contains(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-string/jumbo v4, "sync_dirty_data_store_time"

    .line 1127
    invoke-virtual {v3, v4}, Lcom/amazon/identity/auth/device/gm;->cu(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    const/4 v4, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_1

    goto :goto_1

    .line 2119
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v7, v1

    if-gtz v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_3

    goto :goto_2

    .line 2109
    :cond_3
    iget-object v5, p0, Lcom/amazon/identity/auth/device/gq;->o:Lcom/amazon/identity/auth/device/ed;

    .line 3159
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.amazon.identity.action.SYNC_DIRTY_DATA"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3160
    const-class v7, Lcom/amazon/identity/auth/device/storage/DirtyDataSyncingService;

    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2167
    invoke-static {v5, v6}, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;->b(Landroid/content/Context;Landroid/content/Intent;)Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;

    move-result-object v5

    :goto_2
    if-nez v5, :cond_4

    .line 4089
    sget-object v1, Lcom/amazon/identity/auth/device/gq;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_3

    .line 4093
    :cond_4
    sget-object v6, Lcom/amazon/identity/auth/device/gq;->TAG:Ljava/lang/String;

    invoke-static {v6}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 4095
    sget-wide v6, Lcom/amazon/identity/auth/device/gq;->oI:J

    add-long/2addr v1, v6

    .line 4097
    iget-object v6, p0, Lcom/amazon/identity/auth/device/gq;->nF:Lcom/amazon/identity/auth/device/cw;

    invoke-virtual {v6, v1, v2, v5}, Lcom/amazon/identity/auth/device/cw;->a(JLcom/amazon/identity/auth/device/framework/PendingIntentWrapper;)V

    .line 4098
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/gq;->a(Ljava/lang/Long;)V

    .line 81
    :goto_3
    new-instance v1, Lcom/amazon/identity/auth/device/gq$a;

    invoke-direct {v1, p0, v5, v3, v4}, Lcom/amazon/identity/auth/device/gq$a;-><init>(Lcom/amazon/identity/auth/device/gq;Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;Ljava/lang/Long;B)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
