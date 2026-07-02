.class final Lcom/google/android/gms/internal/ads/zzevc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrz;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzelx;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzevd;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzevf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzevf;Lcom/google/android/gms/internal/ads/zzelx;Lcom/google/android/gms/internal/ads/zzevd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzc:Lcom/google/android/gms/internal/ads/zzevf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzevc;->zza:Lcom/google/android/gms/internal/ads/zzelx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzb:Lcom/google/android/gms/internal/ads/zzevd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzc:Lcom/google/android/gms/internal/ads/zzevf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzevf;->zzf(Lcom/google/android/gms/internal/ads/zzevf;)Lcom/google/android/gms/internal/ads/zzexo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzexo;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzfbm;->zzb(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzeeh;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v2

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdal;->zzP()Lcom/google/android/gms/internal/ads/zzcyj;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzcyj;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v2

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzc:Lcom/google/android/gms/internal/ads/zzevf;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzc:Lcom/google/android/gms/internal/ads/zzevf;

    .line 4
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzevf;->zzg(Lcom/google/android/gms/internal/ads/zzevf;Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfsm;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcup;->zzO()Lcom/google/android/gms/internal/ads/zzdbe;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdbe;->zzbD(Lcom/google/android/gms/internal/ads/zzbcz;)V

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzfP:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzc:Lcom/google/android/gms/internal/ads/zzevf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzevf;->zzd(Lcom/google/android/gms/internal/ads/zzevf;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzevb;

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzevb;-><init>(Lcom/google/android/gms/internal/ads/zzevc;Lcom/google/android/gms/internal/ads/zzbcz;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzc:Lcom/google/android/gms/internal/ads/zzevf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzevf;->zze(Lcom/google/android/gms/internal/ads/zzevf;)Lcom/google/android/gms/internal/ads/zzevv;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzevv;->zzbD(Lcom/google/android/gms/internal/ads/zzbcz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzc:Lcom/google/android/gms/internal/ads/zzevf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzb:Lcom/google/android/gms/internal/ads/zzevd;

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzevf;->zzh(Lcom/google/android/gms/internal/ads/zzevf;Lcom/google/android/gms/internal/ads/zzexm;)Lcom/google/android/gms/internal/ads/zzdak;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdak;->zzf()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcup;

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdal;->zzP()Lcom/google/android/gms/internal/ads/zzcyj;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcyj;->zze()Lcom/google/android/gms/internal/ads/zzdgh;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgh;->zzp()V

    .line 15
    :cond_2
    :goto_1
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzbcz;->zza:I

    const-string v1, "AppOpenAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfbh;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzevc;->zza:Lcom/google/android/gms/internal/ads/zzelx;

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzelx;->zza()V

    .line 17
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcxg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzc:Lcom/google/android/gms/internal/ads/zzevf;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzc:Lcom/google/android/gms/internal/ads/zzevf;

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzevf;->zzg(Lcom/google/android/gms/internal/ads/zzevf;Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfsm;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzfP:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxg;->zzo()Lcom/google/android/gms/internal/ads/zzdfj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzc:Lcom/google/android/gms/internal/ads/zzevf;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzevf;->zze(Lcom/google/android/gms/internal/ads/zzevf;)Lcom/google/android/gms/internal/ads/zzevv;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdfj;->zzc(Lcom/google/android/gms/internal/ads/zzevv;)Lcom/google/android/gms/internal/ads/zzdfj;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzevc;->zza:Lcom/google/android/gms/internal/ads/zzelx;

    .line 7
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzelx;->zzb(Ljava/lang/Object;)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
