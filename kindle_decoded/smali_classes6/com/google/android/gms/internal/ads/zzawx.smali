.class public final Lcom/google/android/gms/internal/ads/zzawx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/lang/Object;

.field private zzb:Lcom/google/android/gms/internal/ads/zzawv;

.field private zzc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawx;->zza:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawx;->zzb:Lcom/google/android/gms/internal/ads/zzawv;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawx;->zzc:Z

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawx;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzawx;->zzc:Z

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, p1

    .line 2
    :cond_0
    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_1

    .line 3
    check-cast v1, Landroid/app/Application;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    const-string p1, "Can not cast Context to Application"

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 5
    monitor-exit v0

    return-void

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawx;->zzb:Lcom/google/android/gms/internal/ads/zzawv;

    if-nez v2, :cond_3

    .line 6
    new-instance v2, Lcom/google/android/gms/internal/ads/zzawv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzawv;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzawx;->zzb:Lcom/google/android/gms/internal/ads/zzawv;

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawx;->zzb:Lcom/google/android/gms/internal/ads/zzawv;

    .line 7
    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzawv;->zzf(Landroid/app/Application;Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzawx;->zzc:Z

    .line 8
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaww;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawx;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawx;->zzb:Lcom/google/android/gms/internal/ads/zzawv;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzawv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzawv;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzawx;->zzb:Lcom/google/android/gms/internal/ads/zzawv;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawx;->zzb:Lcom/google/android/gms/internal/ads/zzawv;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzawv;->zzg(Lcom/google/android/gms/internal/ads/zzaww;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaww;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawx;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawx;->zzb:Lcom/google/android/gms/internal/ads/zzawv;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 1
    :cond_0
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzawv;->zzh(Lcom/google/android/gms/internal/ads/zzaww;)V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzd()Landroid/app/Activity;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawx;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawx;->zzb:Lcom/google/android/gms/internal/ads/zzawv;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawv;->zzi()Landroid/app/Activity;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zze()Landroid/content/Context;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawx;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawx;->zzb:Lcom/google/android/gms/internal/ads/zzawv;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawv;->zzj()Landroid/content/Context;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
