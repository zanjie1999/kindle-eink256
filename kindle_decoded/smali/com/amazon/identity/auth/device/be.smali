.class public final Lcom/amazon/identity/auth/device/be;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method static a(Landroid/content/Context;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    const-string v1, "bootstrap.sso.authority.signature.store"

    invoke-direct {v0, p0, v1}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gm;->fG()Z

    .line 76
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p0

    const-string v1, "bootstrap.sso.authority.signature.array.size"

    invoke-virtual {v0, v1, p0}, Lcom/amazon/identity/auth/device/gm;->e(Ljava/lang/String;I)Z

    .line 78
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bootstrap.sso.authority.signature.key."

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/gm;->O(Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized k(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/amazon/identity/auth/device/be;

    monitor-enter v0

    .line 33
    :try_start_0
    new-instance v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1056
    :goto_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->isAppInStaticIsolatedMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 34
    invoke-static {p0}, Lcom/amazon/identity/auth/device/bg;->o(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-static {p0}, Lcom/amazon/identity/auth/device/be;->m(Landroid/content/Context;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized l(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/amazon/identity/auth/device/be;

    monitor-enter v0

    .line 49
    :try_start_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/bg;->o(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {p0}, Lcom/amazon/identity/auth/device/be;->m(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 51
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/amazon/identity/auth/device/be;->n(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static m(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "AuthoritySignature"

    .line 61
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/bj;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 63
    new-instance v2, Lcom/amazon/identity/auth/device/bf;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, p0, v1}, Lcom/amazon/identity/auth/device/bf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    new-instance v1, Lcom/amazon/identity/auth/device/bg;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/bg;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v1, v2, v0}, Lcom/amazon/identity/auth/device/bg;->a(Lcom/amazon/identity/auth/device/bf;Lcom/amazon/identity/auth/device/ej;)Ljava/util/Set;

    move-result-object v0

    .line 66
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/be;->a(Landroid/content/Context;Ljava/util/Set;)V

    return-object v0
.end method

.method static declared-synchronized n(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/amazon/identity/auth/device/be;

    monitor-enter v0

    .line 89
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 90
    new-instance v2, Lcom/amazon/identity/auth/device/gm;

    const-string v3, "bootstrap.sso.authority.signature.store"

    invoke-direct {v2, p0, v3}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "bootstrap.sso.authority.signature.array.size"

    .line 91
    invoke-virtual {v2, p0}, Lcom/amazon/identity/auth/device/gm;->getIntValue(Ljava/lang/String;)I

    move-result p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_0

    const-string v4, "bootstrap.sso.authority.signature.key."

    .line 95
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazon/identity/auth/device/gm;->cr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
