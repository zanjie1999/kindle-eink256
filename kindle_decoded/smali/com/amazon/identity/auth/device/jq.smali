.class public abstract Lcom/amazon/identity/auth/device/jq;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static rB:Lcom/amazon/identity/auth/device/jr;


# direct methods
.method public static declared-synchronized hb()Lcom/amazon/identity/auth/device/jq;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/jq;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/jq;->rB:Lcom/amazon/identity/auth/device/jr;

    if-eqz v1, :cond_0

    .line 24
    sget-object v1, Lcom/amazon/identity/auth/device/jq;->rB:Lcom/amazon/identity/auth/device/jr;

    invoke-interface {v1}, Lcom/amazon/identity/auth/device/jr;->hb()Lcom/amazon/identity/auth/device/jq;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 26
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract cs()Z
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract gZ()Ljava/lang/String;
.end method

.method public abstract ha()Ljava/lang/String;
.end method
