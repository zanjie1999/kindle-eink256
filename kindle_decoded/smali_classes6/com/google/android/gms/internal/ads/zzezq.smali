.class public final Lcom/google/android/gms/internal/ads/zzezq;
.super Lcom/google/android/gms/internal/ads/zzccr;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzezm;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzezc;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfam;

.field private final zze:Landroid/content/Context;

.field private zzf:Lcom/google/android/gms/internal/ads/zzdrw;

.field private zzg:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzezm;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzezc;Lcom/google/android/gms/internal/ads/zzfam;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzccr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzc:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzezq;->zza:Lcom/google/android/gms/internal/ads/zzezm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzb:Lcom/google/android/gms/internal/ads/zzezc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzd:Lcom/google/android/gms/internal/ads/zzfam;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzezq;->zze:Landroid/content/Context;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzat:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzg:Z

    return-void
.end method

.method static synthetic zzr(Lcom/google/android/gms/internal/ads/zzezq;)Lcom/google/android/gms/internal/ads/zzdrw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzf:Lcom/google/android/gms/internal/ads/zzdrw;

    return-object p0
.end method

.method static synthetic zzs(Lcom/google/android/gms/internal/ads/zzezq;Lcom/google/android/gms/internal/ads/zzdrw;)Lcom/google/android/gms/internal/ads/zzdrw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzf:Lcom/google/android/gms/internal/ads/zzdrw;

    return-object p1
.end method

.method private final declared-synchronized zzt(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/zzccz;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzb:Lcom/google/android/gms/internal/ads/zzezc;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzezc;->zzc(Lcom/google/android/gms/internal/ads/zzccz;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzezq;->zze:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzK(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzbdg;->zzs:Lcom/google/android/gms/internal/ads/zzbcx;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Failed to load the ad because app ID is missing."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzb:Lcom/google/android/gms/internal/ads/zzezc;

    const/4 p2, 0x4

    .line 7
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzfbm;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzezc;->zzbD(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 3
    :cond_1
    :goto_0
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzf:Lcom/google/android/gms/internal/ads/zzdrw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzeze;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzeze;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->zza:Lcom/google/android/gms/internal/ads/zzezm;

    .line 4
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzezm;->zzi(I)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzezq;->zza:Lcom/google/android/gms/internal/ads/zzezm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzc:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzezp;

    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzezp;-><init>(Lcom/google/android/gms/internal/ads/zzezq;)V

    invoke-virtual {p3, p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzezm;->zza(Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzelw;Lcom/google/android/gms/internal/ads/zzelx;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzg:Z

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzezq;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/zzccz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzezq;->zzt(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/zzccz;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/zzccz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x3

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzezq;->zzt(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/zzccz;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzccv;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzb:Lcom/google/android/gms/internal/ads/zzezc;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzezc;->zzd(Lcom/google/android/gms/internal/ads/zzccv;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzbgt;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzb:Lcom/google/android/gms/internal/ads/zzezc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzezc;->zze(Lcom/google/android/gms/internal/ads/zzfid;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzb:Lcom/google/android/gms/internal/ads/zzezc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzezo;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzezo;-><init>(Lcom/google/android/gms/internal/ads/zzezq;Lcom/google/android/gms/internal/ads/zzbgt;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzezc;->zze(Lcom/google/android/gms/internal/ads/zzfid;)V

    return-void
.end method

.method public final zzg()Landroid/os/Bundle;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzf:Lcom/google/android/gms/internal/ads/zzdrw;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrw;->zzg()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0
.end method

.method public final declared-synchronized zzh(Lcom/google/android/gms/internal/ads/zzcdg;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzd:Lcom/google/android/gms/internal/ads/zzfam;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcdg;->zza:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfam;->zza:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcdg;->zzb:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzfam;->zzb:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzi()Z
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzf:Lcom/google/android/gms/internal/ads/zzdrw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrw;->zzb()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized zzj()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzf:Lcom/google/android/gms/internal/ads/zzdrw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxg;->zzm()Lcom/google/android/gms/internal/ads/zzdav;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzf:Lcom/google/android/gms/internal/ads/zzdrw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxg;->zzm()Lcom/google/android/gms/internal/ads/zzdav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdav;->zze()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzf:Lcom/google/android/gms/internal/ads/zzdrw;

    if-nez v0, :cond_0

    const-string p1, "Rewarded can not be shown before loaded"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzb:Lcom/google/android/gms/internal/ads/zzezc;

    const/16 p2, 0x9

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzfbm;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzezc;->zzn(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzf:Lcom/google/android/gms/internal/ads/zzdrw;

    .line 6
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdrw;->zza(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzl()Lcom/google/android/gms/internal/ads/zzccp;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzf:Lcom/google/android/gms/internal/ads/zzdrw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrw;->zzc()Lcom/google/android/gms/internal/ads/zzccp;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/internal/ads/zzbgz;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzfb:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzf:Lcom/google/android/gms/internal/ads/zzdrw;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxg;->zzm()Lcom/google/android/gms/internal/ads/zzdav;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzbgw;)V
    .locals 1

    const-string v0, "setOnPaidEventListener must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzb:Lcom/google/android/gms/internal/ads/zzezc;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzezc;->zzg(Lcom/google/android/gms/internal/ads/zzbgw;)V

    return-void
.end method

.method public final declared-synchronized zzo(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setImmersiveMode must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzg:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzcda;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->zzb:Lcom/google/android/gms/internal/ads/zzezc;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzezc;->zzr(Lcom/google/android/gms/internal/ads/zzcda;)V

    return-void
.end method
