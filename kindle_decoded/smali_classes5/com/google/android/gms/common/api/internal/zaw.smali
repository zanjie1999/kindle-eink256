.class final Lcom/google/android/gms/common/api/internal/zaw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabt;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zax;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zax;Lcom/google/android/gms/common/api/internal/zau;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa(Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 1
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    .line 2
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/zax;->zax(Lcom/google/android/gms/common/api/internal/zax;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zax;->zap(Lcom/google/android/gms/common/api/internal/zax;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw p1
.end method

.method public final zab(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zax;->zax(Lcom/google/android/gms/common/api/internal/zax;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zax;->zap(Lcom/google/android/gms/common/api/internal/zax;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw p1
.end method

.method public final zac(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zax;->zas(Lcom/google/android/gms/common/api/internal/zax;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zax;->zau(Lcom/google/android/gms/common/api/internal/zax;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/zax;->zav(Lcom/google/android/gms/common/api/internal/zax;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    const/4 v0, 0x1

    .line 5
    invoke-static {p2, v0}, Lcom/google/android/gms/common/api/internal/zax;->zau(Lcom/google/android/gms/common/api/internal/zax;Z)Z

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/zax;->zay(Lcom/google/android/gms/common/api/internal/zax;)Lcom/google/android/gms/common/api/internal/zabd;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/zabd;->onConnectionSuspended(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/zax;->zao(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    .line 4
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw p1
.end method
