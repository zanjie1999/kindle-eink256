.class public final Lcom/google/android/gms/internal/ads/zzcvb;
.super Lcom/google/android/gms/internal/ads/zzaxv;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcva;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbfn;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzevv;

.field private zzd:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcva;Lcom/google/android/gms/internal/ads/zzbfn;Lcom/google/android/gms/internal/ads/zzevv;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaxv;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcvb;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvb;->zza:Lcom/google/android/gms/internal/ads/zzcva;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvb;->zzb:Lcom/google/android/gms/internal/ads/zzbfn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvb;->zzc:Lcom/google/android/gms/internal/ads/zzevv;

    return-void
.end method


# virtual methods
.method public final zze()Lcom/google/android/gms/internal/ads/zzbfn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvb;->zzb:Lcom/google/android/gms/internal/ads/zzbfn;

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzayd;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvb;->zzc:Lcom/google/android/gms/internal/ads/zzevv;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzevv;->zzi(Lcom/google/android/gms/internal/ads/zzayd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvb;->zza:Lcom/google/android/gms/internal/ads/zzcva;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcvb;->zzd:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcva;->zzb(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzayd;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzbgz;
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

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvb;->zza:Lcom/google/android/gms/internal/ads/zzcva;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxg;->zzm()Lcom/google/android/gms/internal/ads/zzdav;

    move-result-object v0

    return-object v0
.end method

.method public final zzh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcvb;->zzd:Z

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzbgw;)V
    .locals 1

    const-string v0, "setOnPaidEventListener must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvb;->zzc:Lcom/google/android/gms/internal/ads/zzevv;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzevv;->zzl(Lcom/google/android/gms/internal/ads/zzbgw;)V

    :cond_0
    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzaya;)V
    .locals 0

    return-void
.end method
