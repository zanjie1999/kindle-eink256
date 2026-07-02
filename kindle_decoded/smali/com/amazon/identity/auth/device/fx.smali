.class public Lcom/amazon/identity/auth/device/fx;
.super Lcom/amazon/identity/auth/device/gc;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/fx$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.fx"

.field private static np:Lcom/amazon/identity/auth/device/fx;


# instance fields
.field private final aZ:Lcom/amazon/identity/auth/device/ds;

.field private final mContext:Landroid/content/Context;

.field private final nq:[Ljava/lang/Object;

.field private final nr:Lcom/amazon/identity/auth/device/gt;

.field private final ns:Lcom/amazon/identity/auth/device/hn;

.field private volatile nt:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/fx$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gc;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 99
    iput-object v0, p0, Lcom/amazon/identity/auth/device/fx;->nq:[Ljava/lang/Object;

    .line 113
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/fx;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sso_platform"

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ds;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/fx;->aZ:Lcom/amazon/identity/auth/device/ds;

    .line 117
    iget-object p1, p0, Lcom/amazon/identity/auth/device/fx;->mContext:Landroid/content/Context;

    const-string v0, "dcp_token_cache_holder"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gt;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/fx;->nr:Lcom/amazon/identity/auth/device/gt;

    .line 119
    iget-object p1, p0, Lcom/amazon/identity/auth/device/fx;->mContext:Landroid/content/Context;

    const-string v0, "dcp_account_manager"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/hn;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/fx;->ns:Lcom/amazon/identity/auth/device/hn;

    return-void
.end method

.method public static declared-synchronized R(Landroid/content/Context;)Lcom/amazon/identity/auth/device/fx;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/fx;

    monitor-enter v0

    .line 124
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/fx;->np:Lcom/amazon/identity/auth/device/fx;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    new-instance v1, Lcom/amazon/identity/auth/device/fx;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/fx;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/identity/auth/device/fx;->np:Lcom/amazon/identity/auth/device/fx;

    .line 129
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/fx;->np:Lcom/amazon/identity/auth/device/fx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/identity/auth/device/fx$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/fx$a;",
            ">;)",
            "Lcom/amazon/identity/auth/device/fx$a;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 577
    sget-object p1, Lcom/amazon/identity/auth/device/fx;->TAG:Ljava/lang/String;

    const-string p2, "Cannot find account for null directedId"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 581
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/fx$a;

    if-nez v0, :cond_1

    .line 584
    sget-object v1, Lcom/amazon/identity/auth/device/fx;->TAG:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    :cond_1
    return-object v0
.end method

.method public static c(Lcom/amazon/identity/auth/device/ds;)Z
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ds;->dj()Z

    move-result p0

    return p0
.end method

.method private cf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fx$a;
    .locals 1

    .line 562
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fx;->eW()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/fx;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/identity/auth/device/fx$a;

    move-result-object p1

    return-object p1
.end method

.method private cg(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fx$a;
    .locals 1

    .line 570
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fx;->eX()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/fx;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/identity/auth/device/fx$a;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/fx$a;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1517
    iget-object p1, p0, Lcom/amazon/identity/auth/device/fx;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ds;->di()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private eV()V
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fx;->nq:[Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 476
    :try_start_0
    iput-object v1, p0, Lcom/amazon/identity/auth/device/fx;->nt:Ljava/util/concurrent/ConcurrentHashMap;

    .line 477
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private eW()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/fx$a;",
            ">;"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fx;->nt:Ljava/util/concurrent/ConcurrentHashMap;

    .line 483
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/fx;->d(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ic;->j(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fx;->nq:[Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fx;->eX()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/ic;->j(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 491
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private eX()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/fx$a;",
            ">;"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fx;->nt:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/fx;->d(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fx;->eY()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/fx;->nt:Ljava/util/concurrent/ConcurrentHashMap;

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fx;->nt:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private eY()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/fx$a;",
            ">;"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fx;->ns:Lcom/amazon/identity/auth/device/hn;

    .line 523
    invoke-static {v0}, Lcom/amazon/identity/auth/device/hr;->b(Lcom/amazon/identity/auth/device/hn;)Ljava/util/Map;

    move-result-object v0

    .line 525
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 527
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 529
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/amazon/identity/auth/device/fx$a;

    .line 530
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    invoke-direct {v4, v5, v2}, Lcom/amazon/identity/auth/device/fx$a;-><init>(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 529
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public D(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 544
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fx;->eW()Ljava/util/Map;

    move-result-object v0

    .line 545
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public G(Ljava/lang/String;)V
    .locals 5

    .line 219
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fx;->nq:[Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/fx;->cc(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_0

    .line 224
    sget-object p1, Lcom/amazon/identity/auth/device/fx;->TAG:Ljava/lang/String;

    const-string v1, "Cannot remove the requested user because it is not registered on the device"

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    monitor-exit v0

    return-void

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/fx;->nt:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object p1, p0, Lcom/amazon/identity/auth/device/fx;->ns:Lcom/amazon/identity/auth/device/hn;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Lcom/amazon/identity/auth/device/hn;->a(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Z)Landroid/accounts/AccountManagerFuture;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 235
    :try_start_1
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fx;->eV()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 251
    :try_start_3
    sget-object v2, Lcom/amazon/identity/auth/device/fx;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not locally removed account because their was an IO Exception. Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-static {v2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 245
    sget-object v2, Lcom/amazon/identity/auth/device/fx;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not locally removed account because their was an Authenticator Exception. Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-static {v2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 239
    sget-object v2, Lcom/amazon/identity/auth/device/fx;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not locally removed account because the operation was canceled. Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-static {v2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    if-nez v1, :cond_1

    .line 262
    :try_start_4
    sget-object p1, Lcom/amazon/identity/auth/device/fx;->TAG:Ljava/lang/String;

    const-string v1, "Locally removing the account from the central store was not succesful"

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_1
    monitor-exit v0

    return-void

    .line 257
    :goto_2
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fx;->eV()V

    .line 258
    throw p1

    :catchall_1
    move-exception p1

    .line 264
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public a(Lcom/amazon/identity/auth/device/fv;)V
    .locals 4

    .line 461
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->eQ()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 463
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v1}, Lcom/amazon/identity/auth/device/fx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->eP()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 468
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v1}, Lcom/amazon/identity/auth/device/fx;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fx;->nq:[Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/fx;->cg(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fx$a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 316
    sget-object p1, Lcom/amazon/identity/auth/device/fx;->TAG:Ljava/lang/String;

    const-string p2, "Cannot set the requested user data for the given directed ID because it is not registered on the device"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    monitor-exit v0

    return-void

    .line 322
    :cond_0
    iget-object v1, p1, Lcom/amazon/identity/auth/device/fx$a;->nu:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fx;->ns:Lcom/amazon/identity/auth/device/hn;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/fx$a;->account:Landroid/accounts/Account;

    invoke-virtual {v1, p1, p2, p3}, Lcom/amazon/identity/auth/device/hn;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;)Z
    .locals 5

    .line 178
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 180
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/fv;->eQ()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 182
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/fv;->eP()Ljava/util/Map;

    move-result-object p2

    .line 186
    iget-object v2, p0, Lcom/amazon/identity/auth/device/fx;->nq:[Ljava/lang/Object;

    monitor-enter v2

    .line 188
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/fx;->D(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x0

    .line 190
    monitor-exit v2

    return p1

    .line 193
    :cond_1
    new-instance v3, Landroid/accounts/Account;

    const-string v4, "com.amazon.account"

    invoke-direct {v3, p1, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.amazon.dcp.sso.property.account.acctId"

    .line 195
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/amazon/identity/auth/device/fx;->ns:Lcom/amazon/identity/auth/device/hn;

    invoke-virtual {p1, v3, v1}, Lcom/amazon/identity/auth/device/hn;->a(Landroid/accounts/Account;Landroid/os/Bundle;)Z

    move-result p1

    .line 198
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fx;->eV()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 202
    invoke-virtual {p0, v0, p2}, Lcom/amazon/identity/auth/device/gc;->d(Ljava/lang/String;Ljava/util/Map;)V

    .line 204
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 211
    invoke-interface {p3}, Lcom/amazon/identity/auth/device/gc$a;->onSuccess()V

    :cond_3
    return p1

    :catchall_0
    move-exception p1

    .line 204
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;Ljava/util/List;)Z
    .locals 0
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

    .line 626
    sget-object p1, Lcom/amazon/identity/auth/device/fx;->TAG:Ljava/lang/String;

    const-string p2, "Replace accounts not supported"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 270
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/fx;->cf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fx$a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 273
    sget-object p1, Lcom/amazon/identity/auth/device/fx;->TAG:Ljava/lang/String;

    const-string p2, "Cannot get the requested user data for the given directed ID because it is not registered on the device"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 278
    :cond_0
    iget-object v0, v0, Lcom/amazon/identity/auth/device/fx$a;->nu:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/en;

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/en;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fx;->nq:[Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/fx;->cg(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fx$a;

    move-result-object p1

    if-nez p1, :cond_2

    .line 289
    sget-object p1, Lcom/amazon/identity/auth/device/fx;->TAG:Ljava/lang/String;

    const-string p2, "Cannot get the requested user data for the given directed ID because it is not registered on the device"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    monitor-exit v0

    return-object v1

    .line 294
    :cond_2
    iget-object v1, p1, Lcom/amazon/identity/auth/device/fx$a;->nu:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/en;

    if-eqz v1, :cond_3

    .line 297
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/en;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 300
    :cond_3
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fx;->ns:Lcom/amazon/identity/auth/device/hn;

    iget-object v2, p1, Lcom/amazon/identity/auth/device/fx$a;->account:Landroid/accounts/Account;

    invoke-virtual {v1, v2, p2}, Lcom/amazon/identity/auth/device/hn;->c(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    iget-object p1, p1, Lcom/amazon/identity/auth/device/fx$a;->nu:Ljava/util/Map;

    new-instance v2, Lcom/amazon/identity/auth/device/en;

    invoke-direct {v2, v1}, Lcom/amazon/identity/auth/device/en;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 305
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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

    .line 331
    sget-object p1, Lcom/amazon/identity/auth/device/fx;->TAG:Ljava/lang/String;

    const-string v0, "Actor is not supported in this platform!"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Actor is not supported in this platform."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cc(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 0

    .line 551
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/fx;->cf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fx$a;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 557
    :cond_0
    iget-object p1, p1, Lcom/amazon/identity/auth/device/fx$a;->account:Landroid/accounts/Account;

    return-object p1
.end method

.method public ce(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
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

    .line 633
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fx;->nq:[Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/fx;->cg(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fx$a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 638
    sget-object p1, Lcom/amazon/identity/auth/device/fx;->TAG:Ljava/lang/String;

    const-string v1, "Cannot get all token keys for the directedId because we couldn\'t get the account info"

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    monitor-exit v0

    return-object p1

    .line 643
    :cond_0
    iget-object p1, p1, Lcom/amazon/identity/auth/device/fx$a;->tokens:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 644
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fx;->nq:[Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/fx;->cg(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fx$a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 385
    sget-object p1, Lcom/amazon/identity/auth/device/fx;->TAG:Ljava/lang/String;

    const-string p2, "Cannot set the requested token for the given directed ID because we couldn\'t construct a TokenCache"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    monitor-exit v0

    return-void

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fx;->nr:Lcom/amazon/identity/auth/device/gt;

    invoke-virtual {p1, v1}, Lcom/amazon/identity/auth/device/fx$a;->a(Lcom/amazon/identity/auth/device/gt;)Lcom/amazon/identity/auth/device/hb;

    move-result-object v1

    .line 393
    iget-object p1, p1, Lcom/amazon/identity/auth/device/fx$a;->tokens:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-virtual {v1, p2, p3}, Lcom/amazon/identity/auth/device/hb;->ae(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public eS()V
    .locals 0

    return-void
.end method

.method public eT()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 166
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fx;->eW()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/fx$a;

    .line 168
    iget-object v2, v2, Lcom/amazon/identity/auth/device/fx$a;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fx;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->di()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0, p2, p3}, Lcom/amazon/identity/auth/device/gm;->O(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 444
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "setDeviceData should only be called via central apk"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 158
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fx;->eW()Ljava/util/Map;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSnapshot()Ljava/lang/String;
    .locals 2

    .line 618
    sget-object v0, Lcom/amazon/identity/auth/device/fx;->TAG:Ljava/lang/String;

    const-string v1, "getDeviceSnapshot API is only supported on 3P devices."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public setup()V
    .locals 0

    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 338
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/fx;->cf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fx$a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 341
    sget-object p1, Lcom/amazon/identity/auth/device/fx;->TAG:Ljava/lang/String;

    const-string p2, "Cannot get the requested token for the given directed ID because we couldn\'t construct a TokenCache"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 346
    :cond_0
    iget-object v0, v0, Lcom/amazon/identity/auth/device/fx$a;->tokens:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/en;

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/en;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fx;->nq:[Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/fx;->cg(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fx$a;

    move-result-object p1

    if-nez p1, :cond_2

    .line 357
    sget-object p1, Lcom/amazon/identity/auth/device/fx;->TAG:Ljava/lang/String;

    const-string p2, "Cannot get the requested token for the given directed ID because we couldn\'t construct a TokenCache"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    monitor-exit v0

    return-object v1

    .line 362
    :cond_2
    iget-object v1, p1, Lcom/amazon/identity/auth/device/fx$a;->tokens:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/en;

    if-eqz v1, :cond_3

    .line 365
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/en;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 368
    :cond_3
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fx;->nr:Lcom/amazon/identity/auth/device/gt;

    invoke-virtual {p1, v1}, Lcom/amazon/identity/auth/device/fx$a;->a(Lcom/amazon/identity/auth/device/gt;)Lcom/amazon/identity/auth/device/hb;

    move-result-object v1

    .line 369
    invoke-virtual {v1, p2}, Lcom/amazon/identity/auth/device/hb;->bY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 371
    iget-object p1, p1, Lcom/amazon/identity/auth/device/fx$a;->tokens:Ljava/util/Map;

    new-instance v2, Lcom/amazon/identity/auth/device/en;

    invoke-direct {v2, v1}, Lcom/amazon/identity/auth/device/en;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 374
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fx;->nq:[Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/fx;->cg(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fx$a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 407
    sget-object p1, Lcom/amazon/identity/auth/device/fx;->TAG:Ljava/lang/String;

    const-string p2, "Cannot expire the requested token for the given directed ID because we couldn\'t construct a TokenCache"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    monitor-exit v0

    return-void

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fx;->nr:Lcom/amazon/identity/auth/device/gt;

    invoke-virtual {p1, v1}, Lcom/amazon/identity/auth/device/fx$a;->a(Lcom/amazon/identity/auth/device/gt;)Lcom/amazon/identity/auth/device/hb;

    move-result-object v1

    .line 415
    iget-object p1, p1, Lcom/amazon/identity/auth/device/fx$a;->tokens:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-virtual {v1, p2}, Lcom/amazon/identity/auth/device/hb;->cO(Ljava/lang/String;)V

    .line 418
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fx;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->di()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0, p2}, Lcom/amazon/identity/auth/device/gm;->cr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 429
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getDeviceData should only be called via central apk"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
