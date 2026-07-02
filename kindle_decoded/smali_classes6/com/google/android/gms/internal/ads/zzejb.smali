.class final Lcom/google/android/gms/internal/ads/zzejb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcl;


# instance fields
.field zza:Z

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzeef;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzchl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzejc;Lcom/google/android/gms/internal/ads/zzeef;Lcom/google/android/gms/internal/ads/zzchl;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzejb;->zzb:Lcom/google/android/gms/internal/ads/zzeef;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzejb;->zzc:Lcom/google/android/gms/internal/ads/zzchl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzejb;->zza:Z

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzdM:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejb;->zzc:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeeg;

    .line 3
    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzeeg;-><init>(ILcom/google/android/gms/internal/ads/zzbcz;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzchl;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejb;->zzc:Lcom/google/android/gms/internal/ads/zzchl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzchl;->zzc(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzb(I)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejb;->zza:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejb;->zzb:Lcom/google/android/gms/internal/ads/zzeef;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeef;->zza:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzejc;->zze(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcz;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "undefined"

    move-object v1, v0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbcz;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzejb;->zze(Lcom/google/android/gms/internal/ads/zzbcz;)V

    return-void
.end method

.method public final declared-synchronized zzc(ILjava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejb;->zza:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejb;->zza:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzejb;->zzb:Lcom/google/android/gms/internal/ads/zzeef;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzeef;->zza:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzejc;->zze(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v2, p2

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbcz;

    const-string v3, "undefined"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbcz;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;Landroid/os/IBinder;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzejb;->zze(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejb;->zza:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzejb;->zze(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
