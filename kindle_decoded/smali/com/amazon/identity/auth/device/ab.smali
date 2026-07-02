.class public Lcom/amazon/identity/auth/device/ab;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/ab$h;,
        Lcom/amazon/identity/auth/device/ab$b;,
        Lcom/amazon/identity/auth/device/ab$f;,
        Lcom/amazon/identity/auth/device/ab$g;,
        Lcom/amazon/identity/auth/device/ab$d;,
        Lcom/amazon/identity/auth/device/ab$i;,
        Lcom/amazon/identity/auth/device/ab$c;,
        Lcom/amazon/identity/auth/device/ab$a;,
        Lcom/amazon/identity/auth/device/ab$e;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ab"

.field private static cl:Lcom/amazon/identity/auth/device/ab;


# instance fields
.field private final aZ:Lcom/amazon/identity/auth/device/ds;

.field private final be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

.field private final cm:Lcom/amazon/identity/auth/device/ek;

.field private final cn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;",
            ">;",
            "Lcom/amazon/identity/auth/device/en<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private co:Z

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "dcp_amazon_account_man"

    .line 1021
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 1023
    iget-object p1, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v0, "sso_platform"

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ds;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ab;->aZ:Lcom/amazon/identity/auth/device/ds;

    .line 1025
    new-instance p1, Lcom/amazon/identity/auth/device/ek;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/ek;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ab;->cm:Lcom/amazon/identity/auth/device/ek;

    .line 1027
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1028
    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ab;->cn:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized P()V
    .locals 5

    monitor-enter p0

    .line 1472
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/ab;->co:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1474
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1477
    :try_start_1
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/ab;->co:Z

    .line 1479
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dq()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->di()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1485
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object v0

    .line 1486
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 1489
    monitor-exit p0

    return-void

    .line 1495
    :cond_2
    :try_start_2
    new-instance v1, Lcom/amazon/identity/auth/device/ab$g;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    const/4 v3, 0x0

    .line 1497
    invoke-static {v3}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;->createPrimaryMappingForProfile(I)Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/identity/auth/device/ab$g;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    .line 1500
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1502
    invoke-virtual {v1, v3}, Lcom/amazon/identity/auth/device/ab$d;->S(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    .line 1505
    monitor-exit p0

    return-void

    .line 1509
    :cond_4
    :try_start_3
    sget-object v2, Lcom/amazon/identity/auth/device/ab;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1510
    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/ab$d;->T(Ljava/lang/String;)Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1511
    monitor-exit p0

    return-void

    .line 1482
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private Q()V
    .locals 2

    .line 1536
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7528
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->di()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1538
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAccount write call cannot be called from this app on this platform"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Lcom/amazon/identity/auth/device/ab$a;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1394
    sget-object p1, Lcom/amazon/identity/auth/device/ab;->TAG:Ljava/lang/String;

    const-string v1, "Account Mapping Type given was null. Ignoring"

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1398
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.dcp.sso.property.sessionuser"

    .line 1399
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1401
    new-instance p1, Lcom/amazon/identity/auth/device/ab$i;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-direct {p1, v0, v1}, Lcom/amazon/identity/auth/device/ab$i;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    return-object p1

    :cond_1
    const-string v2, "com.amazon.dcp.sso.property.account.extratokens.account_profiles"

    .line 1403
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1405
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ab;->b(Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Lcom/amazon/identity/auth/device/ab$a;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v2, "com.amazon.dcp.sso.property.account.extratokens.account_packages"

    .line 1407
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1409
    new-instance v0, Lcom/amazon/identity/auth/device/ab$f;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/identity/auth/device/ab$f;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    return-object v0

    :cond_3
    const-string v2, "com.amazon.dcp.sso.property.account.extratokens.custom_keys"

    .line 1411
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1413
    new-instance v0, Lcom/amazon/identity/auth/device/ab$b;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/identity/auth/device/ab$b;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    return-object v0

    :cond_4
    const-string/jumbo v2, "primary_account_type"

    .line 1415
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1417
    new-instance p1, Lcom/amazon/identity/auth/device/ab$c;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-direct {p1, v0, v1}, Lcom/amazon/identity/auth/device/ab$c;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    return-object p1

    :cond_5
    const-string v2, "com.amazon.dcp.sso.property.account.extratokens.account_session_packages"

    .line 1419
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1421
    new-instance v0, Lcom/amazon/identity/auth/device/ab$h;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/identity/auth/device/ab$h;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    return-object v0

    .line 1424
    :cond_6
    sget-object p1, Lcom/amazon/identity/auth/device/ab;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Account mapping type %s was not recongized"

    invoke-static {p1, v1, v2}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    .line 1343
    :cond_0
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 1344
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$e;",
            ">;)V"
        }
    .end annotation

    .line 1292
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    new-instance v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/fk;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 1299
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->cm:Lcom/amazon/identity/auth/device/ek;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ek;->ed()Ljava/util/Set;

    move-result-object v0

    .line 1301
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1302
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/ab$e;

    .line 1304
    iget-object v3, v2, Lcom/amazon/identity/auth/device/ab$e;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 1307
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v2, Lcom/amazon/identity/auth/device/ab$e;->cr:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1308
    iget-object v4, v2, Lcom/amazon/identity/auth/device/ab$e;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1310
    iget-object v2, v2, Lcom/amazon/identity/auth/device/ab$e;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/amazon/identity/auth/device/ab;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 1312
    invoke-direct {p0, v3, v2}, Lcom/amazon/identity/auth/device/ab;->b(Landroid/content/Intent;Ljava/util/Set;)V

    goto :goto_0

    .line 1316
    :cond_1
    iget-object v3, v2, Lcom/amazon/identity/auth/device/ab$e;->cr:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-nez v3, :cond_2

    .line 1319
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1320
    iget-object v4, v2, Lcom/amazon/identity/auth/device/ab$e;->cr:Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    :cond_2
    iget-object v2, v2, Lcom/amazon/identity/auth/device/ab$e;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/amazon/identity/auth/device/ab;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1326
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1328
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1329
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1331
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v0}, Lcom/amazon/identity/auth/device/ab;->b(Landroid/content/Intent;Ljava/util/Set;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/amazon/identity/auth/device/ab;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Lcom/amazon/identity/auth/device/ab$a;
    .locals 3

    .line 1430
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dq()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 1431
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ab;->c(Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z

    move-result v2

    :goto_0
    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1447
    :cond_1
    new-instance p1, Lcom/amazon/identity/auth/device/ab$c;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-direct {p1, v0, v1}, Lcom/amazon/identity/auth/device/ab$c;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    return-object p1

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "UsingUnsupportedProfile"

    .line 1439
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1442
    :cond_3
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ab;->P()V

    .line 1443
    new-instance v0, Lcom/amazon/identity/auth/device/ab$g;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/identity/auth/device/ab$g;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    return-object v0
.end method

.method private b(Landroid/content/Intent;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1350
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1352
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1353
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1355
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v2, "com.amazon.dcp.sso.permission.account.changed"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private varargs c([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;
    .locals 5

    .line 1070
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ab;->d([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/util/List;

    move-result-object p1

    .line 1072
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->o()Ljava/util/Set;

    move-result-object v0

    .line 1074
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/ab$a;

    .line 1076
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1078
    invoke-interface {v1, v3}, Lcom/amazon/identity/auth/device/ab$a;->S(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    .line 1084
    :cond_2
    sget-object p1, Lcom/amazon/identity/auth/device/ab;->TAG:Ljava/lang/String;

    const-string v0, "No account mapping found for any account, returning null"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z
    .locals 1

    .line 1453
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->bc(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ab;->d(Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private varargs d([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$a;",
            ">;"
        }
    .end annotation

    .line 1362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 1368
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    .line 1370
    invoke-direct {p0, v4}, Lcom/amazon/identity/auth/device/ab;->a(Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Lcom/amazon/identity/auth/device/ab$a;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1376
    invoke-interface {v5}, Lcom/amazon/identity/auth/device/ab$a;->R()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 1380
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "Mapping Type %s is not supported on this platform. Ignoring"

    .line 1378
    invoke-static {v4, v5}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1384
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private d(Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1458
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static declared-synchronized g(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ab;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/ab;

    monitor-enter v0

    .line 1033
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/ab;->cl:Lcom/amazon/identity/auth/device/ab;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1035
    :cond_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ab;->generateNewInstance(Landroid/content/Context;)V

    .line 1038
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/ab;->cl:Lcom/amazon/identity/auth/device/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static generateNewInstance(Landroid/content/Context;)V
    .locals 1

    .line 1043
    new-instance v0, Lcom/amazon/identity/auth/device/ab;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/ab;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amazon/identity/auth/device/ab;->cl:Lcom/amazon/identity/auth/device/ab;

    return-void
.end method


# virtual methods
.method public N()V
    .locals 6

    .line 1268
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;->isSupportedOnThisPlatform(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;->createSessionPackageMappingInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    move-result-object v0

    .line 1271
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/ab;->getAccountMappingOwner(Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;

    move-result-object v1

    .line 1273
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/ek;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1275
    sget-object v2, Lcom/amazon/identity/auth/device/ab;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v1, "Session package mapping owner is: %s, but it is already uninstalled from the device. Going to clear the session package mapping."

    invoke-static {v3, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1276
    new-instance v1, Lcom/amazon/identity/auth/device/ab$h;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/identity/auth/device/ab$h;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    .line 1277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1278
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ab$h;->T()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1279
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/ab;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public O()V
    .locals 1

    .line 1286
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->cn:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1287
    sget-object v0, Lcom/amazon/identity/auth/device/ab;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void
.end method

.method public Q(Ljava/lang/String;)Z
    .locals 3

    .line 1119
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1121
    sget-object p1, Lcom/amazon/identity/auth/device/ab;->TAG:Ljava/lang/String;

    const-string v0, "The account does not exist so it cannot be a primary"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-static {v0, v2, p1}, Lcom/amazon/identity/auth/device/ab$g;->c(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 4116
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->C(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public R(Ljava/lang/String;)V
    .locals 6

    .line 1158
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ab;->Q()V

    .line 1160
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1162
    sget-object p1, Lcom/amazon/identity/auth/device/ab;->TAG:Ljava/lang/String;

    const-string v0, "Cannot remove all account mappings since the account doesn\'t exist"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1166
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1167
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 4161
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4162
    invoke-virtual {v2, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->B(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4164
    new-instance v4, Lcom/amazon/identity/auth/device/ab$i;

    invoke-direct {v4, v1, v2}, Lcom/amazon/identity/auth/device/ab$i;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1170
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-static {v1, v2, p1}, Lcom/amazon/identity/auth/device/ab$g;->c(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1173
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-static {v1, v2, p1}, Lcom/amazon/identity/auth/device/ab$f;->b(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1176
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-static {v1, v2, p1}, Lcom/amazon/identity/auth/device/ab$b;->a(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1179
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 4610
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4611
    invoke-virtual {v2, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->B(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4614
    new-instance v4, Lcom/amazon/identity/auth/device/ab$h;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;->createSessionPackageMappingInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    move-result-object v5

    invoke-direct {v4, v1, v5, v2}, Lcom/amazon/identity/auth/device/ab$h;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1183
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ab;->O()V

    .line 1185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/ab$a;

    .line 1188
    invoke-interface {v2, p1}, Lcom/amazon/identity/auth/device/ab$a;->V(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1191
    :cond_3
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/ab;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/ed;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1135
    new-instance v0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    const-string p1, "com.amazon.dcp.sso.property.account.extratokens.account_profiles"

    .line 1138
    invoke-static {v0, p2, p1}, Lcom/amazon/identity/auth/device/ab$d;->a(Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 1141
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 1142
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1146
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1150
    :catch_0
    sget-object v0, Lcom/amazon/identity/auth/device/ab;->TAG:Ljava/lang/String;

    const-string v1, "Ignoring invalid profile id"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public doesAccountHaveMapping(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z
    .locals 2

    .line 1223
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/ab;->a(Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Lcom/amazon/identity/auth/device/ab$a;

    move-result-object v0

    .line 1224
    invoke-interface {v0}, Lcom/amazon/identity/auth/device/ab$a;->R()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1226
    sget-object p1, Lcom/amazon/identity/auth/device/ab;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1228
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Mapping Type %s is not supported on this platform. Ignoring"

    .line 1226
    invoke-static {p1, p2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 1232
    :cond_0
    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/ab$a;->S(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public varargs getAccountForMapping([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;
    .locals 2

    .line 2528
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->di()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1051
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ab;->c([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 3520
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1055
    :goto_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab;->cn:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/en;

    if-nez v1, :cond_2

    .line 1059
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ab;->c([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;

    move-result-object p1

    .line 1060
    new-instance v1, Lcom/amazon/identity/auth/device/en;

    invoke-direct {v1, p1}, Lcom/amazon/identity/auth/device/en;-><init>(Ljava/lang/Object;)V

    .line 1061
    iget-object p1, p0, Lcom/amazon/identity/auth/device/ab;->cn:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/en;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAccountMappingOwner(Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;
    .locals 3

    .line 1238
    instance-of v0, p1, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    if-eqz v0, :cond_0

    .line 1240
    new-instance v0, Lcom/amazon/identity/auth/device/ab$h;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    check-cast p1, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/identity/auth/device/ab$h;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    .line 5579
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ab$h;->V()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1245
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "getAccountMappingOwner() currently only accepts SessionPackageMappingType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIntentToRemoveAccountMapping(Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Landroid/content/Intent;
    .locals 3

    .line 1252
    instance-of v0, p1, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    if-eqz v0, :cond_0

    .line 1254
    new-instance v0, Lcom/amazon/identity/auth/device/ab$h;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab;->o:Lcom/amazon/identity/auth/device/ed;

    check-cast p1, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/identity/auth/device/ab$h;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V

    .line 6579
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ab$h;->W()Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 1259
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "getIntentToRemoveAccountMapping() currently only accepts SessionPackageMappingType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs removeAccountMappings(Ljava/lang/String;[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z
    .locals 3

    .line 1197
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ab;->Q()V

    .line 1199
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/ab;->d([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/util/List;

    move-result-object p2

    .line 1201
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1203
    sget-object p1, Lcom/amazon/identity/auth/device/ab;->TAG:Ljava/lang/String;

    const-string p2, "Cannot remove account mappings since it doesn\'t exist"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1207
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ab;->O()V

    .line 1209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1210
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/ab$a;

    .line 1212
    invoke-interface {v2, p1}, Lcom/amazon/identity/auth/device/ab$a;->U(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1215
    :cond_1
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/ab;->a(Ljava/util/List;)V

    .line 1217
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public varargs setAccountMappings(Ljava/lang/String;[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z
    .locals 3

    .line 1091
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ab;->Q()V

    .line 1093
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/ab;->d([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/util/List;

    move-result-object p2

    .line 1095
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->x(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1101
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ab;->O()V

    .line 1103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/ab$a;

    .line 1106
    invoke-interface {v2, p1}, Lcom/amazon/identity/auth/device/ab$a;->T(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1109
    :cond_1
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/ab;->a(Ljava/util/List;)V

    .line 1111
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1

    .line 1097
    :cond_3
    :goto_1
    sget-object p1, Lcom/amazon/identity/auth/device/ab;->TAG:Ljava/lang/String;

    const-string p2, "Cannot set account mappings since it doesn\'t exist or is deregistering"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
