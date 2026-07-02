.class public Lcom/amazon/identity/auth/device/x$c;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final aZ:Lcom/amazon/identity/auth/device/ds;

.field private final bH:Lcom/amazon/identity/auth/device/ac;

.field private bI:Lcom/amazon/identity/auth/device/x$a;

.field private final bL:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

.field final bM:Ljava/lang/String;

.field private final bN:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/identity/auth/device/aj;",
            ">;"
        }
    .end annotation
.end field

.field final bO:Lcom/amazon/identity/auth/device/ej;

.field private final bP:Lcom/amazon/identity/auth/device/br;

.field private final bQ:Landroid/os/Bundle;

.field private final bR:Z

.field private bS:Lcom/amazon/identity/auth/device/x$e;

.field private final mContext:Landroid/content/Context;

.field private final s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

.field final t:Lcom/amazon/identity/auth/device/j;

.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/amazon/identity/auth/device/aj;",
            ">;",
            "Lcom/amazon/identity/auth/device/j;",
            "Lcom/amazon/identity/auth/device/br;",
            "Lcom/amazon/identity/auth/device/ej;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/amazon/identity/auth/device/x$c;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sso_platform"

    .line 247
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ds;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/x$c;->aZ:Lcom/amazon/identity/auth/device/ds;

    .line 248
    new-instance p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$c;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/x$c;->bL:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    .line 250
    new-instance p1, Lcom/amazon/identity/auth/device/ac;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$c;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/ac;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/x$c;->bH:Lcom/amazon/identity/auth/device/ac;

    .line 252
    iget-object p1, p0, Lcom/amazon/identity/auth/device/x$c;->mContext:Landroid/content/Context;

    const-string v0, "dcp_amazon_account_man"

    .line 253
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/x$c;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 254
    iget-object p1, p0, Lcom/amazon/identity/auth/device/x$c;->mContext:Landroid/content/Context;

    const-string v0, "dcp_data_storage_factory"

    .line 255
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gd;

    .line 256
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/gd;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/x$c;->w:Lcom/amazon/identity/auth/device/gc;

    .line 257
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/x$c;->bN:Ljava/util/ArrayList;

    .line 258
    iput-object p2, p0, Lcom/amazon/identity/auth/device/x$c;->bM:Ljava/lang/String;

    .line 260
    iput-object p4, p0, Lcom/amazon/identity/auth/device/x$c;->t:Lcom/amazon/identity/auth/device/j;

    if-eqz p7, :cond_1

    const-string p1, "DeregisteringDevice"

    .line 1040
    invoke-virtual {p7, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "DeregisteringDefaultPrimary"

    .line 1041
    invoke-virtual {p7, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "NewDefaultPrimary"

    invoke-virtual {p7, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 262
    :goto_0
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/x$c;->bR:Z

    .line 264
    iput-object p5, p0, Lcom/amazon/identity/auth/device/x$c;->bP:Lcom/amazon/identity/auth/device/br;

    .line 266
    iput-object p6, p0, Lcom/amazon/identity/auth/device/x$c;->bO:Lcom/amazon/identity/auth/device/ej;

    .line 268
    iput-object p7, p0, Lcom/amazon/identity/auth/device/x$c;->bQ:Landroid/os/Bundle;

    return-void
.end method

.method private E()Z
    .locals 7

    .line 454
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$c;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/x$c;->bM:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/hr;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 457
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Sub authenticators are not supported on 3rd party devices yet"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/x$c;->bN:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/identity/auth/device/aj;

    .line 4490
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/x$c;->C()Lcom/amazon/identity/auth/device/x$a;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/amazon/identity/auth/device/x$a;->a(Lcom/amazon/identity/auth/device/aj;)Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    move-result-object v5

    .line 4491
    new-instance v6, Lcom/amazon/identity/auth/device/x$g;

    invoke-direct {v6, v5}, Lcom/amazon/identity/auth/device/x$g;-><init>(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)V

    .line 4492
    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/bk;->run()V

    .line 4493
    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/x$g;->H()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4495
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Failed to establish SubAuthenticator Connection"

    invoke-static {v5, v6}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_1

    .line 4498
    :cond_1
    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/x$g;->I()Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    move-result-object v5

    :goto_1
    if-nez v5, :cond_2

    .line 467
    iget-object v1, v4, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->bO(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    .line 474
    :cond_2
    :try_start_0
    invoke-virtual {p0, v0, v5}, Lcom/amazon/identity/auth/device/x$c;->a(Landroid/accounts/Account;Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 476
    invoke-virtual {v5}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->bO(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 482
    :cond_3
    invoke-virtual {v5}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->closeConnection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->closeConnection()V

    .line 483
    throw v0

    :cond_4
    return v1
.end method

.method private F()Z
    .locals 7

    const-string/jumbo v0, "mobile_auth_storage"

    const/4 v1, 0x0

    .line 565
    :try_start_0
    new-instance v2, Lcom/amazon/identity/auth/device/storage/KeystoreProvider;

    const-string v3, "%s_%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    iget-object v5, p0, Lcom/amazon/identity/auth/device/x$c;->bM:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/identity/auth/device/storage/KeystoreProvider;-><init>(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/storage/KeystoreProvider;->fm()Ljavax/crypto/SecretKey;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 568
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/storage/KeystoreProvider;->fn()V

    .line 572
    :cond_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/x$c;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/amazon/identity/auth/device/gm;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/gm;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gm;->fG()Z
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/storage/KeystoreProvider$KeystoreProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    return v1
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/x$c;)Lcom/amazon/identity/auth/device/ej;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/amazon/identity/auth/device/x$c;->bO:Lcom/amazon/identity/auth/device/ej;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized C()Lcom/amazon/identity/auth/device/x$a;
    .locals 2

    monitor-enter p0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$c;->bI:Lcom/amazon/identity/auth/device/x$a;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lcom/amazon/identity/auth/device/x$b;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/x$c;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/x$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/x$c;->bI:Lcom/amazon/identity/auth/device/x$a;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$c;->bI:Lcom/amazon/identity/auth/device/x$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized D()Lcom/amazon/identity/auth/device/x$e;
    .locals 1

    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$c;->bS:Lcom/amazon/identity/auth/device/x$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amazon/identity/auth/device/x$a;)V
    .locals 0

    monitor-enter p0

    .line 273
    :try_start_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/x$c;->bI:Lcom/amazon/identity/auth/device/x$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/amazon/identity/auth/device/x$e;)V
    .locals 0

    monitor-enter p0

    .line 287
    :try_start_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/x$c;->bS:Lcom/amazon/identity/auth/device/x$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 1

    .line 722
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/x$c;->D()Lcom/amazon/identity/auth/device/x$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 725
    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/x$e;->a(Z)V

    :cond_0
    return-void
.end method

.method protected a(Landroid/accounts/Account;Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)Z
    .locals 3

    .line 504
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notifying subauth: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 505
    new-instance v0, Lcom/amazon/identity/auth/device/x$h;

    invoke-direct {v0, p2, p1}, Lcom/amazon/identity/auth/device/x$h;-><init>(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;Landroid/accounts/Account;)V

    .line 508
    invoke-virtual {p2}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->bP(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object p1

    .line 509
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ms;->start()V

    const-wide/16 v1, 0x7

    .line 511
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "NotifySubAuthAccountRemoval"

    invoke-virtual {v0, p2, v1, v2}, Lcom/amazon/identity/auth/device/bk;->run(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;Ljava/lang/String;)V

    .line 515
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 517
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/x$h;->G()Z

    move-result p1

    return p1
.end method

.method protected isRegistered(Ljava/lang/String;)Z
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$c;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public run()V
    .locals 14

    .line 299
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$c;->bM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/x$c;->isRegistered(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 301
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->a(Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;)V

    goto/16 :goto_9

    .line 306
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->ez()Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->start()V

    .line 1320
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/x$c;->E()Z

    move-result v2

    .line 1522
    iget-object v3, p0, Lcom/amazon/identity/auth/device/x$c;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/x$c;->bM:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/x;->b(Lcom/amazon/identity/auth/accounts/AmazonAccountManager;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1524
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/x$c;->bM:Ljava/lang/String;

    aput-object v5, v3, v1

    const-string v5, "Have already notified server of deregister of %s"

    invoke-static {v5, v3}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_2

    .line 1528
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/x$c;->C()Lcom/amazon/identity/auth/device/x$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/identity/auth/device/x$a;->A()Lcom/amazon/identity/auth/device/i;

    move-result-object v9

    .line 1529
    new-instance v3, Lcom/amazon/identity/auth/device/x$f;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/x$c;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/x$c;->bM:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/amazon/identity/auth/device/x$c;->bR:Z

    iget-object v10, p0, Lcom/amazon/identity/auth/device/x$c;->t:Lcom/amazon/identity/auth/device/j;

    iget-object v11, p0, Lcom/amazon/identity/auth/device/x$c;->bP:Lcom/amazon/identity/auth/device/br;

    iget-object v12, p0, Lcom/amazon/identity/auth/device/x$c;->bO:Lcom/amazon/identity/auth/device/ej;

    iget-object v13, p0, Lcom/amazon/identity/auth/device/x$c;->bQ:Landroid/os/Bundle;

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/amazon/identity/auth/device/x$f;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V

    .line 1538
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/bk;->run()V

    .line 1540
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/x$f;->G()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1707
    iget-boolean v5, p0, Lcom/amazon/identity/auth/device/x$c;->bR:Z

    if-eqz v5, :cond_2

    .line 1709
    iget-object v5, p0, Lcom/amazon/identity/auth/device/x$c;->bL:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v5}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v5

    goto :goto_0

    :cond_2
    new-array v5, v4, [Ljava/lang/String;

    .line 1712
    iget-object v6, p0, Lcom/amazon/identity/auth/device/x$c;->bM:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-static {v5}, Lcom/amazon/identity/auth/device/hp;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    .line 1699
    :goto_0
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1701
    iget-object v7, p0, Lcom/amazon/identity/auth/device/x$c;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-static {v7, v6}, Lcom/amazon/identity/auth/device/x;->a(Lcom/amazon/identity/auth/accounts/AmazonAccountManager;Ljava/lang/String;)V

    goto :goto_1

    .line 1547
    :cond_3
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Deregister was not successful. Not marking accounts that they were deregistered on the server"

    invoke-static {v5, v6}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    const/4 v2, 0x0

    .line 2366
    :cond_5
    iget-object v3, p0, Lcom/amazon/identity/auth/device/x$c;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/ds;->dr()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2376
    iget-object v3, p0, Lcom/amazon/identity/auth/device/x$c;->bM:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/x$c;->w:Lcom/amazon/identity/auth/device/gc;

    .line 2377
    invoke-static {v3, v5}, Lcom/amazon/identity/auth/device/q;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/gc;)Ljava/util/Collection;

    move-result-object v3

    .line 2379
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2385
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    .line 2387
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/x$c;->C()Lcom/amazon/identity/auth/device/x$a;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/identity/auth/device/x$a;->A()Lcom/amazon/identity/auth/device/i;

    move-result-object v8

    .line 2390
    new-instance v9, Lcom/amazon/identity/auth/device/x$c$1;

    invoke-direct {v9, p0}, Lcom/amazon/identity/auth/device/x$c$1;-><init>(Lcom/amazon/identity/auth/device/x$c;)V

    .line 2425
    iget-object v5, p0, Lcom/amazon/identity/auth/device/x$c;->bM:Ljava/lang/String;

    invoke-virtual {v8, v5, v10, v9}, Lcom/amazon/identity/auth/device/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/i$a;)Lcom/amazon/identity/auth/device/br;

    move-result-object v11

    .line 2428
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->B()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v12, Lcom/amazon/identity/auth/device/x$c$2;

    move-object v6, v12

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/amazon/identity/auth/device/x$c$2;-><init>(Lcom/amazon/identity/auth/device/x$c;Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/i$a;Ljava/lang/String;Lcom/amazon/identity/auth/device/br;)V

    invoke-interface {v5, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 2605
    :cond_6
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Deregister dependent accounts"

    invoke-static {v3, v5}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    iget-boolean v3, p0, Lcom/amazon/identity/auth/device/x$c;->bR:Z

    const-string v5, "com.amazon.dcp.sso.property.account.delegateeaccount"

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/amazon/identity/auth/device/x$c;->bQ:Landroid/os/Bundle;

    const-string v6, "DeregisteringDefaultPrimary"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2610
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 2611
    iget-object v4, p0, Lcom/amazon/identity/auth/device/x$c;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v4}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 2614
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2616
    iget-object v7, p0, Lcom/amazon/identity/auth/device/x$c;->bM:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 2618
    iget-object v7, p0, Lcom/amazon/identity/auth/device/x$c;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v7, v6, v5}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2619
    iget-object v8, p0, Lcom/amazon/identity/auth/device/x$c;->bM:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2621
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2625
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2627
    iget-object v5, p0, Lcom/amazon/identity/auth/device/x$c;->bL:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    new-instance v6, Lcom/amazon/identity/auth/device/x$c$3;

    invoke-direct {v6, p0, v4}, Lcom/amazon/identity/auth/device/x$c$3;-><init>(Lcom/amazon/identity/auth/device/x$c;Ljava/lang/String;)V

    invoke-virtual {v5, v4, v6}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->deregisterAccount(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    goto :goto_5

    .line 2648
    :cond_9
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v6, "Deregister the secondary accounts"

    invoke-static {v3, v6}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2649
    iget-object v3, p0, Lcom/amazon/identity/auth/device/x$c;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->q()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2655
    iget-boolean v7, p0, Lcom/amazon/identity/auth/device/x$c;->bR:Z

    if-nez v7, :cond_b

    .line 2657
    iget-object v7, p0, Lcom/amazon/identity/auth/device/x$c;->bH:Lcom/amazon/identity/auth/device/ac;

    invoke-virtual {v7, v6}, Lcom/amazon/identity/auth/device/ac;->hasPrimaryRole(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2659
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v6, v7, v1

    const-string v6, "keeping the secondary primary account %s"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gE()V

    goto :goto_6

    .line 2663
    :cond_a
    iget-object v7, p0, Lcom/amazon/identity/auth/device/x$c;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v7, v6, v5}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2664
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/amazon/identity/auth/device/x$c;->bM:Ljava/lang/String;

    .line 2665
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/amazon/identity/auth/device/x$c;->bH:Lcom/amazon/identity/auth/device/ac;

    .line 2666
    invoke-virtual {v8, v7}, Lcom/amazon/identity/auth/device/ac;->hasPrimaryRole(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2668
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v6, v7, v1

    const-string v6, "keeping the delegated account %s"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gE()V

    goto :goto_6

    .line 2677
    :cond_b
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v6, v7, v1

    const-string v8, "Deregister the secondary account %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gE()V

    .line 2678
    iget-object v7, p0, Lcom/amazon/identity/auth/device/x$c;->bL:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    new-instance v8, Lcom/amazon/identity/auth/device/x$c$4;

    invoke-direct {v8, p0, v6}, Lcom/amazon/identity/auth/device/x$c$4;-><init>(Lcom/amazon/identity/auth/device/x$c;Ljava/lang/String;)V

    invoke-virtual {v7, v6, v8}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->deregisterAccount(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    goto :goto_6

    .line 1338
    :cond_c
    iget-object v3, p0, Lcom/amazon/identity/auth/device/x$c;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/x$c;->bM:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/x$c;->bH:Lcom/amazon/identity/auth/device/ac;

    invoke-virtual {v5, v4}, Lcom/amazon/identity/auth/device/ac;->X(Ljava/lang/String;)Z

    .line 3020
    invoke-static {v3}, Lcom/amazon/identity/auth/device/mw;->bo(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v3, "AmazonProfileManagerSafeConsumer"

    const-string v4, "Not removing profiles for the account as either APS is not on this device or APS version is older than 11 or required permission not granted."

    .line 3022
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 3556
    iget-object v3, p0, Lcom/amazon/identity/auth/device/x$c;->w:Lcom/amazon/identity/auth/device/gc;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/x$c;->bM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/amazon/identity/auth/device/gc;->G(Ljava/lang/String;)V

    .line 1346
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/x$c;->F()Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_7

    :cond_d
    move v1, v2

    .line 3591
    :goto_7
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/x$c;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "actor_info_storage_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/amazon/identity/auth/device/x$c;->bM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/gm;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/gm;

    move-result-object v2

    .line 3594
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/gm;->fG()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 3599
    :catch_0
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No Actor Info to clear"

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_8
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 313
    :goto_9
    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/x$c;->a(Z)V

    return-void

    .line 3026
    :cond_e
    invoke-static {v3}, Lcom/amazon/android/amazonprofile/AmazonProfileManager;->getAmazonProfileManager(Landroid/content/Context;)Lcom/amazon/android/amazonprofile/AmazonProfileManager;

    const/4 v0, 0x0

    throw v0
.end method
