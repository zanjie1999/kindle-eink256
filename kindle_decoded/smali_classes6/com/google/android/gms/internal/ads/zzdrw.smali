.class public final Lcom/google/android/gms/internal/ads/zzdrw;
.super Lcom/google/android/gms/internal/ads/zzcxg;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzcml;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzdkn;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdhy;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdbp;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdcw;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcya;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzccp;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzfit;

.field private zzl:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcxf;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzdhy;Lcom/google/android/gms/internal/ads/zzdbp;Lcom/google/android/gms/internal/ads/zzdcw;Lcom/google/android/gms/internal/ads/zzcya;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzfit;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcxg;-><init>(Lcom/google/android/gms/internal/ads/zzcxf;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzl:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zze:Lcom/google/android/gms/internal/ads/zzdkn;

    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzd:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzf:Lcom/google/android/gms/internal/ads/zzdhy;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzg:Lcom/google/android/gms/internal/ads/zzdbp;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzh:Lcom/google/android/gms/internal/ads/zzdcw;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzi:Lcom/google/android/gms/internal/ads/zzcya;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzk:Lcom/google/android/gms/internal/ads/zzfit;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcdj;

    iget-object p2, p9, Lcom/google/android/gms/internal/ads/zzezz;->zzm:Lcom/google/android/gms/internal/ads/zzccl;

    if-eqz p2, :cond_0

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzccl;->zza:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    if-eqz p2, :cond_1

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzccl;->zzb:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    .line 3
    :goto_1
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzcdj;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzj:Lcom/google/android/gms/internal/ads/zzccp;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcml;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzeZ:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzl:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzchg;->zze:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdrv;->zza(Lcom/google/android/gms/internal/ads/zzcml;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    throw v0
.end method

.method public final zza(ZLandroid/app/Activity;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzar:Lcom/google/android/gms/internal/ads/zzbjd;

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

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzJ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzg:Lcom/google/android/gms/internal/ads/zzdbp;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbp;->zzd()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzas:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzk:Lcom/google/android/gms/internal/ads/zzfit;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxg;->zza:Lcom/google/android/gms/internal/ads/zzfal;

    .line 14
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfac;->zzb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfit;->zza(Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzl:Z

    if-eqz v0, :cond_2

    const-string p1, "The rewarded ad have been showed."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzg:Lcom/google/android/gms/internal/ads/zzdbp;

    const/16 p2, 0xa

    const/4 v0, 0x0

    .line 4
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzfbm;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdbp;->zza(Lcom/google/android/gms/internal/ads/zzbcz;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzl:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzf:Lcom/google/android/gms/internal/ads/zzdhy;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdhy;->zza()V

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzc:Landroid/content/Context;

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zze:Lcom/google/android/gms/internal/ads/zzdkn;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzg:Lcom/google/android/gms/internal/ads/zzdbp;

    .line 7
    invoke-interface {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzdkn;->zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdbp;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzf:Lcom/google/android/gms/internal/ads/zzdhy;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhy;->zzb()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdkm; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzg:Lcom/google/android/gms/internal/ads/zzdbp;

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdbp;->zzb(Lcom/google/android/gms/internal/ads/zzdkm;)V

    return v1
.end method

.method public final zzb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzl:Z

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzccp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzj:Lcom/google/android/gms/internal/ads/zzccp;

    return-object v0
.end method

.method public final zze()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzi:Lcom/google/android/gms/internal/ads/zzcya;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcya;->zzg()Z

    move-result v0

    return v0
.end method

.method public final zzf()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcml;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->zzaA()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzh:Lcom/google/android/gms/internal/ads/zzdcw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdcw;->zzb()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
