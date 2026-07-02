.class public final Lcom/amazon/identity/auth/device/q;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method public static declared-synchronized a(Ljava/lang/String;Lcom/amazon/identity/auth/device/gc;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gc;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/amazon/identity/auth/device/q;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "overriding_dsn_child_device_types_key"

    .line 1110
    invoke-virtual {p1, p0, v1}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1113
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, ";"

    .line 1116
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/jc;->ap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    .line 1122
    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized a(Lcom/amazon/identity/auth/device/fv;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/amazon/identity/auth/device/q;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "overriding_dsn_child_device_types_key"

    .line 95
    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/fv;->bY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/jc;->ap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 99
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "overriding_dsn_child_device_types_key"

    const-string v2, ";"

    .line 102
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/jc;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {p0, p1, v1}, Lcom/amazon/identity/auth/device/fv;->p(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;Lcom/amazon/identity/auth/device/co;)Z
    .locals 0

    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/amazon/identity/auth/device/features/Feature;->OverrideDeviceAttributes:Lcom/amazon/identity/auth/device/features/Feature;

    invoke-virtual {p1, p0}, Lcom/amazon/identity/auth/device/co;->a(Lcom/amazon/identity/auth/device/features/Feature;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
