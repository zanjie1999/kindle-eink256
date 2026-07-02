.class final Lcom/google/android/gms/internal/ads/zzbtg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbtr;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbsn;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbts;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbts;Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzbsn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtg;->zzc:Lcom/google/android/gms/internal/ads/zzbts;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtg;->zza:Lcom/google/android/gms/internal/ads/zzbtr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtg;->zzb:Lcom/google/android/gms/internal/ads/zzbsn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtg;->zzc:Lcom/google/android/gms/internal/ads/zzbts;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbts;->zza(Lcom/google/android/gms/internal/ads/zzbts;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtg;->zza:Lcom/google/android/gms/internal/ads/zzbtr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzchs;->zzi()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtg;->zza:Lcom/google/android/gms/internal/ads/zzbtr;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzchs;->zzi()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtg;->zza:Lcom/google/android/gms/internal/ads/zzbtr;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzchs;->zzh()V

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzchg;->zze:Lcom/google/android/gms/internal/ads/zzfsn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtg;->zzb:Lcom/google/android/gms/internal/ads/zzbsn;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbtf;->zza(Lcom/google/android/gms/internal/ads/zzbsn;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-string v1, "Could not receive loaded message in a timely manner. Rejecting."

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 7
    monitor-exit v0

    return-void

    .line 3
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
