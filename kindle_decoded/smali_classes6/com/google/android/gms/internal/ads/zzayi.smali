.class final Lcom/google/android/gms/internal/ads/zzayi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzayj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayi;->zza:Lcom/google/android/gms/internal/ads/zzayj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayi;->zza:Lcom/google/android/gms/internal/ads/zzayj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayj;->zza(Lcom/google/android/gms/internal/ads/zzayj;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayi;->zza:Lcom/google/android/gms/internal/ads/zzayj;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzayj;->zzk(Lcom/google/android/gms/internal/ads/zzayj;Lcom/google/android/gms/internal/ads/zzayp;)Lcom/google/android/gms/internal/ads/zzayp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayi;->zza:Lcom/google/android/gms/internal/ads/zzayj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayj;->zzb(Lcom/google/android/gms/internal/ads/zzayj;)Lcom/google/android/gms/internal/ads/zzaym;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayi;->zza:Lcom/google/android/gms/internal/ads/zzayj;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzayj;->zzc(Lcom/google/android/gms/internal/ads/zzayj;Lcom/google/android/gms/internal/ads/zzaym;)Lcom/google/android/gms/internal/ads/zzaym;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayi;->zza:Lcom/google/android/gms/internal/ads/zzayj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayj;->zza(Lcom/google/android/gms/internal/ads/zzayj;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
