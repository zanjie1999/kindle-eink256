.class public final Lcom/amazon/identity/auth/device/fj;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field public static mA:Lcom/amazon/identity/auth/device/mr;

.field public static mz:Landroid/content/Context;


# direct methods
.method public static bQ(Ljava/lang/String;)V
    .locals 2

    .line 49
    invoke-static {}, Lcom/amazon/identity/auth/device/fj;->ey()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 51
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mm;->eQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "NetworkFailure"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/fj;->c(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 66
    sget-object v0, Lcom/amazon/identity/auth/device/fj;->mA:Lcom/amazon/identity/auth/device/mr;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "GenericMetrics_WebserviceCall"

    .line 71
    invoke-interface {v0, v1, p0, p1}, Lcom/amazon/identity/auth/device/mr;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized ey()V
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/fj;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/fj;->mz:Landroid/content/Context;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazon/identity/auth/device/fj;->mA:Lcom/amazon/identity/auth/device/mr;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    sget-object v1, Lcom/amazon/identity/auth/device/fj;->mz:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/mn;->aP(Landroid/content/Context;)Lcom/amazon/identity/auth/device/mr;

    move-result-object v1

    sput-object v1, Lcom/amazon/identity/auth/device/fj;->mA:Lcom/amazon/identity/auth/device/mr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit v0

    return-void

    .line 58
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
