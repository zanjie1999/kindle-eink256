.class public Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/storage/DatabaseCleaner$DatabaseCleaningService;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.storage.DatabaseCleaner"

.field private static final aK:[Ljava/lang/Object;

.field private static nE:J


# instance fields
.field private final gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

.field private final nF:Lcom/amazon/identity/auth/device/cw;

.field private final nG:Lcom/amazon/identity/auth/device/eh;

.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 75
    sput-object v0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->aK:[Ljava/lang/Object;

    .line 76
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/jg;->b(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->nE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "dcp_data_storage_factory"

    .line 93
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gd;

    .line 94
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/gd;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->w:Lcom/amazon/identity/auth/device/gc;

    .line 95
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v0, "sso_local_datastorage"

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    .line 97
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v0, "sso_alarm_maanger"

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/cw;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->nF:Lcom/amazon/identity/auth/device/cw;

    .line 98
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "dcp_system"

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/eh;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->nG:Lcom/amazon/identity/auth/device/eh;

    return-void
.end method

.method private b(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/identity/auth/device/du;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 219
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/du;

    .line 221
    new-instance v1, Lcom/amazon/identity/auth/device/gp;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v1, v2, v0}, Lcom/amazon/identity/auth/device/gp;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/du;)V

    .line 223
    invoke-virtual {v1, p2}, Lcom/amazon/identity/auth/device/gp;->e(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    sget-object v0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->TAG:Ljava/lang/String;

    const-string v1, "Was not fully successful remotely removing deleted items"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e(Lcom/amazon/identity/auth/device/du;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/du;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 201
    new-instance v0, Lcom/amazon/identity/auth/device/gp;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v0, v1, p1}, Lcom/amazon/identity/auth/device/gp;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/du;)V

    .line 206
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gp;->fI()Ljava/util/Collection;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 210
    sget-object v1, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get deleted data from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public ff()V
    .locals 7

    .line 109
    sget-object v0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->aK:[Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->nG:Lcom/amazon/identity/auth/device/eh;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/eh;->currentTimeMillis()J

    move-result-wide v1

    .line 1270
    iget-object v3, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v4, "clean_database_store"

    const-string v5, "clean_database_time_ms_key"

    invoke-virtual {v3, v4, v5}, Lcom/amazon/identity/auth/device/gc;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1272
    invoke-static {v3}, Lcom/amazon/identity/auth/device/jb;->dA(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    goto :goto_0

    .line 2265
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v1

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    .line 2255
    :cond_2
    iget-object v3, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->o:Lcom/amazon/identity/auth/device/ed;

    .line 3282
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.amazon.identity.action.CLEAN_DATA"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3283
    const-class v5, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner$DatabaseCleaningService;

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2290
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;->b(Landroid/content/Context;Landroid/content/Intent;)Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_3

    .line 4235
    sget-object v1, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_2

    .line 4239
    :cond_3
    sget-object v4, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 4241
    sget-wide v4, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->nE:J

    add-long/2addr v1, v4

    .line 4243
    iget-object v4, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->nF:Lcom/amazon/identity/auth/device/cw;

    invoke-virtual {v4, v1, v2, v3}, Lcom/amazon/identity/auth/device/cw;->a(JLcom/amazon/identity/auth/device/framework/PendingIntentWrapper;)V

    .line 4277
    iget-object v3, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v4, "clean_database_store"

    const-string v5, "clean_database_time_ms_key"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v5, v1}, Lcom/amazon/identity/auth/device/gc;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public fg()V
    .locals 8

    .line 5158
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->fu()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 5160
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 137
    sget-object v0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->TAG:Ljava/lang/String;

    const-string v1, "No Deleted items in local app, skipping cleanup."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->o:Lcom/amazon/identity/auth/device/ed;

    .line 143
    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->cW()Ljava/util/Collection;

    move-result-object v0

    const/4 v3, 0x0

    .line 5166
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/identity/auth/device/du;

    .line 5168
    invoke-direct {p0, v5}, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->e(Lcom/amazon/identity/auth/device/du;)Ljava/util/Collection;

    move-result-object v6

    if-nez v6, :cond_3

    .line 5172
    sget-object v6, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->TAG:Ljava/lang/String;

    new-array v7, v1, [Ljava/lang/Object;

    .line 5174
    invoke-virtual {v5}, Lcom/amazon/identity/auth/device/du;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    const-string v5, "Remote Package %s is unable to provide any deleted data"

    .line 5173
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 5172
    invoke-static {v6, v5}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    move-object v3, v6

    goto :goto_1

    .line 5184
    :cond_4
    invoke-interface {v3, v6}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    .line 5186
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5195
    :cond_5
    sget-object v1, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Deleting Values: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    const-string v4, "None"

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    if-eqz v3, :cond_8

    .line 147
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    .line 153
    :cond_7
    invoke-direct {p0, v0, v3}, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->b(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void

    .line 149
    :cond_8
    :goto_3
    sget-object v0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->TAG:Ljava/lang/String;

    const-string v1, "No Deleted items to clean from the MAP databases"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
