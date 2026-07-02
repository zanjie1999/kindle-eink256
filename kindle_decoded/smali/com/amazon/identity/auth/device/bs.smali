.class public final Lcom/amazon/identity/auth/device/bs;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static hA:Lcom/amazon/identity/auth/device/br;

.field private static hB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/br;",
            ">;"
        }
    .end annotation
.end field

.field private static final hz:Lcom/amazon/identity/auth/device/br;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/amazon/identity/auth/device/bt;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/amazon/identity/auth/device/bt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/bs;->hz:Lcom/amazon/identity/auth/device/br;

    .line 19
    sput-object v1, Lcom/amazon/identity/auth/device/bs;->hA:Lcom/amazon/identity/auth/device/br;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/bs;->hB:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized O()V
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/bs;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/bs;->hB:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Lcom/amazon/identity/auth/device/br;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/br;->y()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized aM(Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/amazon/identity/auth/device/bs;

    monitor-enter v0

    .line 86
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    sget-object v2, Lcom/amazon/identity/auth/device/bs;->hB:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 89
    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    sget-object v2, Lcom/amazon/identity/auth/device/bs;->hB:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 99
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/br;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/bs;

    monitor-enter v0

    const/4 v1, 0x0

    .line 69
    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/amazon/identity/auth/device/bs;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/br;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/br;
    .locals 3

    const-class v0, Lcom/amazon/identity/auth/device/bs;

    monitor-enter v0

    .line 33
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    sget-object v1, Lcom/amazon/identity/auth/device/bs;->hB:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/bs;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/br;

    goto :goto_0

    .line 42
    :cond_0
    sget-object v1, Lcom/amazon/identity/auth/device/bs;->hA:Lcom/amazon/identity/auth/device/br;

    .line 44
    :goto_0
    invoke-static {v1}, Lcom/amazon/identity/auth/device/bs;->a(Lcom/amazon/identity/auth/device/br;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 46
    monitor-exit v0

    return-object v1

    .line 49
    :cond_1
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/amazon/identity/auth/device/bu;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/bu;

    move-result-object v1

    if-nez v1, :cond_2

    .line 52
    new-instance v1, Lcom/amazon/identity/auth/device/fw;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/fw;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/fw;->eR()Lcom/amazon/identity/auth/device/br;

    move-result-object v1

    .line 55
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 57
    sget-object p0, Lcom/amazon/identity/auth/device/bs;->hB:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/bs;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 61
    :cond_3
    sput-object v1, Lcom/amazon/identity/auth/device/bs;->hA:Lcom/amazon/identity/auth/device/br;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/br;
    .locals 1

    const-class v0, Lcom/amazon/identity/auth/device/bs;

    monitor-enter v0

    .line 76
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/amazon/identity/auth/device/bs;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/br;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/br;
    .locals 3

    .line 105
    new-instance v0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_3

    .line 106
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/bs;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    sget-object v1, Lcom/amazon/identity/auth/device/bs;->hB:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/br;

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 115
    invoke-static {v1}, Lcom/amazon/identity/auth/device/bs;->a(Lcom/amazon/identity/auth/device/br;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 120
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/amazon/identity/auth/device/bu;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/bu;

    move-result-object p0

    if-nez p0, :cond_2

    .line 123
    sget-object p0, Lcom/amazon/identity/auth/device/bs;->hz:Lcom/amazon/identity/auth/device/br;

    return-object p0

    .line 126
    :cond_2
    sget-object p1, Lcom/amazon/identity/auth/device/bs;->hB:Ljava/util/Map;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 108
    :cond_3
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/amazon/identity/auth/device/bs;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/br;

    move-result-object p0

    return-object p0
.end method

.method private static j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "%s/%s"

    .line 142
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r(Landroid/content/Context;)Lcom/amazon/identity/auth/device/br;
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-static {p0, v0, v0}, Lcom/amazon/identity/auth/device/bs;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/br;

    move-result-object p0

    return-object p0
.end method
