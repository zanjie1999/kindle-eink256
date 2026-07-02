.class public final Lcom/google/android/gms/internal/ads/zzfki;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfkk;

.field private final zzb:[B

.field private zzc:I

.field private zzd:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfkk;[BLcom/google/android/gms/internal/ads/zzfkj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfki;->zza:Lcom/google/android/gms/internal/ads/zzfkk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfki;->zzb:[B

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfki;->zza:Lcom/google/android/gms/internal/ads/zzfkk;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfkk;->zza:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfkk;->zzb:Lcom/google/android/gms/internal/ads/zzfkl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfki;->zzb:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfkl;->zzg([B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfki;->zza:Lcom/google/android/gms/internal/ads/zzfkk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfkk;->zzb:Lcom/google/android/gms/internal/ads/zzfkl;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfki;->zzc:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfkl;->zzh(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfki;->zza:Lcom/google/android/gms/internal/ads/zzfkk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfkk;->zzb:Lcom/google/android/gms/internal/ads/zzfkl;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfki;->zzd:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfkl;->zzi(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfki;->zza:Lcom/google/android/gms/internal/ads/zzfkk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfkk;->zzb:Lcom/google/android/gms/internal/ads/zzfkl;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfkl;->zzf([I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfki;->zza:Lcom/google/android/gms/internal/ads/zzfkk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfkk;->zzb:Lcom/google/android/gms/internal/ads/zzfkl;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkl;->zze()V
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

    monitor-exit p0

    throw v0

    .line 6
    :catch_0
    monitor-exit p0

    return-void
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzfki;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfki;->zzc:I

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzfki;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfki;->zzd:I

    return-object p0
.end method
