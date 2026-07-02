.class final Lcom/google/android/gms/common/api/internal/zaap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaar;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/api/internal/zaah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaar;->zar(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object p1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaar;->zao(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/signin/zae;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/signin/zae;

    new-instance v0, Lcom/google/android/gms/common/api/internal/zaao;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/zaao;-><init>(Lcom/google/android/gms/common/api/internal/zaar;)V

    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/gms/signin/zae;->zaa(Lcom/google/android/gms/signin/internal/zae;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zak(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zaar;->zas(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaar;->zat(Lcom/google/android/gms/common/api/internal/zaar;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaar;->zau(Lcom/google/android/gms/common/api/internal/zaar;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zaar;->zam(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaar;->zak(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zak(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
