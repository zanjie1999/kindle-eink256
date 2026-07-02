.class public Lcom/amazon/identity/auth/device/gi;
.super Lcom/amazon/identity/auth/device/gc;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.gi"


# instance fields
.field private final nh:Lcom/amazon/identity/auth/device/gc;

.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private oj:Lcom/amazon/identity/auth/device/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gc;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gi;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "dcp_data_storage_factory"

    .line 44
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gd;

    .line 45
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/gd;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/gc;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gc;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gi;->o:Lcom/amazon/identity/auth/device/ed;

    .line 51
    iput-object p2, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 461
    invoke-direct {p0, p1, p3, p4}, Lcom/amazon/identity/auth/device/gi;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 464
    sget-object p1, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    const-string p2, "getActorToken failed because key does not make sense on the platform"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 467
    :cond_0
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/gs;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/amazon/identity/auth/device/gs$a;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/gs$a;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 609
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gs$a;->fN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 612
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 617
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gs$a;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 620
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gi;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/ib;->aw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 627
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gs$a;->getDeviceType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    if-eqz p3, :cond_1

    .line 392
    invoke-static {}, Lcom/amazon/identity/auth/device/jf;->gR()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot get local data on the main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 397
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object p2

    .line 400
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 403
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 406
    :cond_2
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/gi;->bm(Ljava/lang/String;)Lcom/amazon/identity/auth/device/du;

    move-result-object v1

    if-nez v1, :cond_3

    .line 411
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 v2, 0x0

    .line 418
    :try_start_0
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/du;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    .line 419
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/du;->dD()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    invoke-virtual {p0, v3}, Lcom/amazon/identity/auth/device/gi;->cl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 430
    sget-object p1, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is the central device type for "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz p3, :cond_7

    .line 436
    invoke-virtual {p0, p1, v3}, Lcom/amazon/identity/auth/device/gi;->K(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_1

    .line 443
    :cond_5
    invoke-direct {p0, p1, v3, v1}, Lcom/amazon/identity/auth/device/gi;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 445
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gi;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v3, p2}, Lcom/amazon/identity/auth/device/gs;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 448
    :cond_6
    sget-object p1, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object v3, p2, p3

    const-string p3, "Could not register application with the device type %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 438
    :cond_7
    :goto_1
    sget-object p1, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "device: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already registered, returning key"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 439
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gi;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v3, p2}, Lcom/amazon/identity/auth/device/gs;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 423
    :catch_0
    sget-object p1, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    const-string p2, "Couldn\'t determine override device type/DSN for the package "

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private e(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 309
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 312
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/amazon/identity/auth/device/gi;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 315
    sget-object v2, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Not setting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because the child device type could not be registered."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "RegisterChildApplicationFromDBLayer"

    .line 494
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 496
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "override_dsn"

    .line 497
    invoke-virtual {v4, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gi;->fr()Lcom/amazon/identity/auth/device/f;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/f;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    const/4 p2, 0x0

    .line 504
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 523
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    return p2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 519
    :try_start_1
    sget-object p3, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    const-string v1, "Execution exception while registeringChildAccount"

    invoke-static {p3, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 515
    sget-object p3, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    const-string v1, "Interrupted exception while registeringChildAccount"

    invoke-static {p3, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 509
    :try_start_2
    sget-object p3, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error registeringChildAccount. Bundle Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/identity/auth/device/ht;->J(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 509
    invoke-static {p3, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return p2

    .line 523
    :goto_2
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    .line 524
    throw p1
.end method


# virtual methods
.method public G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/gi;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 116
    sget-object p1, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "peekUserData failed because key does not make sense on the platform"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public G(Ljava/lang/String;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gc;->G(Ljava/lang/String;)V

    return-void
.end method

.method public H(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 171
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/gi;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 172
    sget-object v2, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    aput-object v1, v3, v0

    const-string p2, "Token key: %s. ContextualKey: %s"

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    if-nez v1, :cond_0

    .line 175
    sget-object p1, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    const-string p2, "getToken failed because key does not make sense on the platform"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 179
    :cond_0
    iget-object p2, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    instance-of v0, p2, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    if-eqz v0, :cond_1

    .line 181
    check-cast p2, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-virtual {p2, p1, v1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 183
    :cond_1
    invoke-virtual {p2, p1, v1}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/gi;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 191
    sget-object p1, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "peekToken failed because key does not make sense on the platform"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public J(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method K(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-static {v0, v1, p1, p2}, Lcom/amazon/identity/auth/device/p;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 476
    sget-object v0, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "Child application device type %s has already been registered"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return p1
.end method

.method public L(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 574
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 576
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/gi;->ce(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 577
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3050
    invoke-virtual {v2, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/16 v3, 0x2f

    .line 3052
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 3061
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3063
    :goto_1
    new-instance v3, Lcom/amazon/identity/auth/device/gs$a;

    invoke-direct {v3, v4, p2, v2}, Lcom/amazon/identity/auth/device/gs$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 580
    :cond_1
    invoke-direct {p0, v4, p1, v0}, Lcom/amazon/identity/auth/device/gi;->a(Lcom/amazon/identity/auth/device/gs$a;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public a(Lcom/amazon/identity/auth/device/fv;)V
    .locals 3

    .line 271
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->eQ()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/identity/auth/device/gi;->e(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 273
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->eP()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/amazon/identity/auth/device/gi;->e(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 274
    new-instance v2, Lcom/amazon/identity/auth/device/fv;

    .line 275
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1, v0}, Lcom/amazon/identity/auth/device/fv;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 276
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {p1, v2}, Lcom/amazon/identity/auth/device/gc;->a(Lcom/amazon/identity/auth/device/fv;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 132
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/gi;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 135
    sget-object p1, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "setUserData failed because key does not make sense on the platform"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2348
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2349
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2351
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gi;->o:Lcom/amazon/identity/auth/device/ed;

    .line 2356
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 2353
    invoke-static {v2, p3, v3}, Lcom/amazon/identity/auth/device/gs;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2352
    invoke-static {v2, p2}, Lcom/amazon/identity/auth/device/gs;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2358
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 295
    :cond_0
    iget-object p2, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/identity/auth/device/gc;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1330
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1332
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gi;->o:Lcom/amazon/identity/auth/device/ed;

    .line 1336
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 1333
    invoke-static {v2, p2, v3}, Lcom/amazon/identity/auth/device/gs;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1337
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 224
    :cond_0
    iget-object p2, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/identity/auth/device/gc;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 232
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gi;->o:Lcom/amazon/identity/auth/device/ed;

    .line 238
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v1, p2, v0}, Lcom/amazon/identity/auth/device/gs;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v1, p1, v0}, Lcom/amazon/identity/auth/device/gc;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;)Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gc;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/fv;",
            "Lcom/amazon/identity/auth/device/gc$a;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/gc;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 101
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/gi;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 104
    sget-object p1, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    const-string p2, "getUserData failed because key does not make sense on the platform"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1366
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1369
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/amazon/identity/auth/device/gi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1372
    sget-object v2, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Not setting actor key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1375
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 282
    :cond_1
    iget-object p2, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/identity/auth/device/gc;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method bm(Ljava/lang/String;)Lcom/amazon/identity/auth/device/du;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bm(Ljava/lang/String;)Lcom/amazon/identity/auth/device/du;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {p0, p2, p3}, Lcom/amazon/identity/auth/device/gc;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p4}, Lcom/amazon/identity/auth/device/gc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ca(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gc;->ca(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public cc(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gc;->cc(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method

.method public ce(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gc;->ce(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method cl(Ljava/lang/String;)Z
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/ib;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 205
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/gi;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 208
    sget-object p1, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "setToken failed because key does not make sense on the platform"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public eS()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->eS()V

    return-void
.end method

.method public eT()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->eT()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gc;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized fr()Lcom/amazon/identity/auth/device/f;
    .locals 1

    monitor-enter p0

    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->oj:Lcom/amazon/identity/auth/device/f;

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->o:Lcom/amazon/identity/auth/device/ed;

    .line 638
    invoke-static {v0}, Lcom/amazon/identity/auth/device/g;->a(Landroid/content/Context;)Lcom/amazon/identity/auth/device/f;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/gi;->oj:Lcom/amazon/identity/auth/device/f;

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->oj:Lcom/amazon/identity/auth/device/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAccounts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->getAccounts()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSnapshot()Ljava/lang/String;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->getDeviceSnapshot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->initialize()V

    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 163
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/identity/auth/device/gi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 164
    sget-object v1, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    aput-object p2, v2, v0

    const-string p3, "Token key: %s, ActorContextualKey: %s"

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 166
    iget-object p3, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {p3, p1, p2}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 593
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 594
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/gi;->ce(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 595
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3074
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    const/4 v5, 0x0

    .line 3077
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3078
    invoke-virtual {v3, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x2f

    .line 3080
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_0

    goto :goto_1

    .line 3089
    :cond_0
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3091
    :goto_1
    new-instance v3, Lcom/amazon/identity/auth/device/gs$a;

    invoke-direct {v3, v4, p3, v2}, Lcom/amazon/identity/auth/device/gs$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 598
    :cond_1
    invoke-direct {p0, v4, p1, v0}, Lcom/amazon/identity/auth/device/gi;->a(Lcom/amazon/identity/auth/device/gs$a;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public setup()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->setup()V

    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    .line 151
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/gi;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 152
    sget-object v2, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    aput-object v1, v3, v0

    const-string p2, "Token key: %s. ContextualKey: %s"

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    if-nez v1, :cond_0

    .line 155
    sget-object p1, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    const-string p2, "getToken failed because key does not make sense on the platform"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 158
    :cond_0
    iget-object p2, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {p2, p1, v1}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 246
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/gi;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 249
    sget-object p1, Lcom/amazon/identity/auth/device/gi;->TAG:Ljava/lang/String;

    const-string p2, "expireToken failed because key does not make sense on the platform"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gi;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
