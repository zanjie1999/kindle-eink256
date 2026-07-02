.class public final Lcom/google/android/gms/internal/ads/zzazd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzazf;

.field private final zzb:[B

.field private zzc:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzazf;[BLcom/google/android/gms/internal/ads/zzaze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazd;->zza:Lcom/google/android/gms/internal/ads/zzazf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzazd;->zzb:[B

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazd;->zza:Lcom/google/android/gms/internal/ads/zzazf;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzazf;->zzb:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzazf;->zza:Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazd;->zzb:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzamu;->zzh([B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazd;->zza:Lcom/google/android/gms/internal/ads/zzazf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzazf;->zza:Lcom/google/android/gms/internal/ads/zzamu;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzamu;->zzi(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazd;->zza:Lcom/google/android/gms/internal/ads/zzazf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzazf;->zza:Lcom/google/android/gms/internal/ads/zzamu;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzazd;->zzc:I

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzamu;->zzj(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazd;->zza:Lcom/google/android/gms/internal/ads/zzazf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzazf;->zza:Lcom/google/android/gms/internal/ads/zzamu;

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzamu;->zzg([I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazd;->zza:Lcom/google/android/gms/internal/ads/zzazf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzazf;->zza:Lcom/google/android/gms/internal/ads/zzamu;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamu;->zzf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Clearcut log failed"

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzazd;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazd;->zzc:I

    return-object p0
.end method
