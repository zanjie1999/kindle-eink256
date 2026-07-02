.class final Lcom/google/android/gms/internal/ads/zzayw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzchl;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzayx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayx;Lcom/google/android/gms/internal/ads/zzchl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzb:Lcom/google/android/gms/internal/ads/zzayx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayw;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzb:Lcom/google/android/gms/internal/ads/zzayx;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayx;->zzd(Lcom/google/android/gms/internal/ads/zzayx;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Connection failed."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzchl;->zzd(Ljava/lang/Throwable;)Z

    .line 2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
