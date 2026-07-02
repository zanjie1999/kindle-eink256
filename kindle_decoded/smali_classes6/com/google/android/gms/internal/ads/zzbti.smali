.class final Lcom/google/android/gms/internal/ads/zzbti;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzchn;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbtr;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbts;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbts;Lcom/google/android/gms/internal/ads/zzbtr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbti;->zzb:Lcom/google/android/gms/internal/ads/zzbts;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbti;->zza:Lcom/google/android/gms/internal/ads/zzbtr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbti;->zzb:Lcom/google/android/gms/internal/ads/zzbts;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbts;->zza(Lcom/google/android/gms/internal/ads/zzbts;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbti;->zzb:Lcom/google/android/gms/internal/ads/zzbts;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbts;->zzd(Lcom/google/android/gms/internal/ads/zzbts;I)I

    const-string v1, "Failed loading new engine. Marking new engine destroyable."

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbti;->zza:Lcom/google/android/gms/internal/ads/zzbtr;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbtr;->zzc()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
