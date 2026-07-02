.class public final Lcom/google/android/gms/internal/ads/zzbsh;
.super Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;"
    }
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbdk;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbfn;

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/ads/zzbvd;

.field private zzf:Lcom/google/android/gms/ads/admanager/AppEventListener;

.field private zzg:Lcom/google/android/gms/ads/FullScreenContentCallback;

.field private zzh:Lcom/google/android/gms/ads/OnPaidEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbvd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbvd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsh;->zze:Lcom/google/android/gms/internal/ads/zzbvd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsh;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsh;->zzd:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdk;->zza:Lcom/google/android/gms/internal/ads/zzbdk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsh;->zzb:Lcom/google/android/gms/internal/ads/zzbdk;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zzb()Lcom/google/android/gms/internal/ads/zzbep;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbsh;->zze:Lcom/google/android/gms/internal/ads/zzbvd;

    .line 3
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbep;->zzk(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;)Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsh;->zzc:Lcom/google/android/gms/internal/ads/zzbfn;

    return-void
.end method


# virtual methods
.method public final setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsh;->zzg:Lcom/google/android/gms/ads/FullScreenContentCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsh;->zzc:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbeu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbeu;-><init>(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaa(Lcom/google/android/gms/internal/ads/zzbgb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsh;->zzc:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzQ(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "The activity for show is null, will proceed with show using the context provided when loading the ad."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsh;->zzc:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzZ(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbhj;Lcom/google/android/gms/ads/AdLoadCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbhj;",
            "Lcom/google/android/gms/ads/AdLoadCallback<",
            "TAdT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsh;->zzc:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsh;->zze:Lcom/google/android/gms/internal/ads/zzbvd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbhj;->zzn()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbvd;->zze(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsh;->zzc:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsh;->zzb:Lcom/google/android/gms/internal/ads/zzbdk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbsh;->zza:Landroid/content/Context;

    .line 2
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzbdk;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbhj;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdc;

    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/ads/zzbdc;-><init>(Lcom/google/android/gms/ads/AdLoadCallback;Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzY(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/zzbfd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/ads/LoadAdError;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "Internal Error."

    const-string v4, "com.google.android.gms.ads"

    move-object v1, p1

    .line 5
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/LoadAdError;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdError;Lcom/google/android/gms/ads/ResponseInfo;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    return-void
.end method
