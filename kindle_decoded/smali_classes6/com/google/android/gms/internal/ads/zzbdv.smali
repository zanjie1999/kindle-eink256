.class final Lcom/google/android/gms/internal/ads/zzbdv;
.super Lcom/google/android/gms/internal/ads/zzbeq;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbeq<",
        "Lcom/google/android/gms/internal/ads/zzbzq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Landroid/app/Activity;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbep;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbep;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzb:Lcom/google/android/gms/internal/ads/zzbep;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zza:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbeq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zza:Landroid/app/Activity;

    const-string v1, "ad_overlay"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbep;->zzi(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zza:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjl;->zza(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzgW:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zza:Landroid/app/Activity;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zza:Landroid/app/Activity;

    const-string v2, "com.google.android.gms.ads.ChimeraAdOverlayCreatorImpl"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbdu;->zza:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 5
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcgx;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcgv;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbzt;

    .line 6
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbzt;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbzp;->zzF(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbzq;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcgw; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzb:Lcom/google/android/gms/internal/ads/zzbep;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zza:Landroid/app/Activity;

    .line 7
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcar;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcat;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbep;->zzg(Lcom/google/android/gms/internal/ads/zzbep;Lcom/google/android/gms/internal/ads/zzcat;)Lcom/google/android/gms/internal/ads/zzcat;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzb:Lcom/google/android/gms/internal/ads/zzbep;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbep;->zzh(Lcom/google/android/gms/internal/ads/zzbep;)Lcom/google/android/gms/internal/ads/zzcat;

    move-result-object v1

    const-string v2, "ClientApiBroker.createAdOverlay"

    .line 8
    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcat;->zzd(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzb:Lcom/google/android/gms/internal/ads/zzbep;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbep;->zze(Lcom/google/android/gms/internal/ads/zzbep;)Lcom/google/android/gms/internal/ads/zzbzn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zza:Landroid/app/Activity;

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzn;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzbzq;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzbfx;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zza:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfx;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzbzq;

    move-result-object p1

    return-object p1
.end method
