.class final Lcom/google/android/gms/common/api/internal/zaai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;


# instance fields
.field private final zaa:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/internal/zaar;",
            ">;"
        }
    .end annotation
.end field

.field private final zab:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "*>;"
        }
    .end annotation
.end field

.field private final zac:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zaar;",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaai;->zaa:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaai;->zab:Lcom/google/android/gms/common/api/Api;

    iput-boolean p3, p0, Lcom/google/android/gms/common/api/internal/zaai;->zac:Z

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zaai;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/api/internal/zaai;->zac:Z

    return p0
.end method


# virtual methods
.method public final onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaai;->zaa:Ljava/lang/ref/WeakReference;

    .line 1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaar;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zal(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/common/api/internal/zabd;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zaaz;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "onReportServiceBinding must be called on the GoogleApiClient handler thread"

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zak(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5
    :try_start_0
    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/internal/zaar;->zav(Lcom/google/android/gms/common/api/internal/zaar;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zak(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 6
    :goto_1
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 7
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaai;->zab:Lcom/google/android/gms/common/api/Api;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/zaai;->zac:Z

    .line 8
    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/internal/zaar;->zaw(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V

    .line 9
    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zax(Lcom/google/android/gms/common/api/internal/zaar;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zau(Lcom/google/android/gms/common/api/internal/zaar;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zak(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zak(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    throw p1
.end method
