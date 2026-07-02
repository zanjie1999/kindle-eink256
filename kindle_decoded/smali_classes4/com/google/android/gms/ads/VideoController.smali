.class public final Lcom/google/android/gms/ads/VideoController;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/Object;

.field private zzb:Lcom/google/android/gms/internal/ads/zzbhc;

.field private zzc:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public setVideoLifecycleCallbacks(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const-string v0, "VideoLifecycleCallbacks may not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/VideoController;->zzc:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzb:Lcom/google/android/gms/internal/ads/zzbhc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbir;

    .line 2
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzbir;-><init>(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzl(Lcom/google/android/gms/internal/ads/zzbhf;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "Unable to call setVideoLifecycleCallbacks on video controller."

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbhc;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/VideoController;->zzb:Lcom/google/android/gms/internal/ads/zzbhc;

    iget-object p1, p0, Lcom/google/android/gms/ads/VideoController;->zzc:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/VideoController;->setVideoLifecycleCallbacks(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V

    .line 2
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzbhc;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzb:Lcom/google/android/gms/internal/ads/zzbhc;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
