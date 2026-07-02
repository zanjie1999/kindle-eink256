.class final Lcom/google/android/gms/internal/ads/zzbeh;
.super Lcom/google/android/gms/internal/ads/zzbeq;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbeq<",
        "Lcom/google/android/gms/internal/ads/zzbfj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Landroid/content/Context;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbvg;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbep;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbep;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zzd:Lcom/google/android/gms/internal/ads/zzbep;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zzc:Lcom/google/android/gms/internal/ads/zzbvg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbeq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zza:Landroid/content/Context;

    const-string v1, "native_ad"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbep;->zzi(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbib;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbib;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zza:Landroid/content/Context;

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

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zza:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zza:Landroid/content/Context;

    const-string v3, "com.google.android.gms.ads.ChimeraAdLoaderBuilderCreatorImpl"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbeg;->zza:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 5
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcgx;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcgv;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbfk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zzc:Lcom/google/android/gms/internal/ads/zzbvg;

    const v5, 0xcbe6bb0

    .line 6
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbfk;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;I)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    .line 7
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 8
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzbfj;

    if-eqz v3, :cond_1

    .line 9
    check-cast v2, Lcom/google/android/gms/internal/ads/zzbfj;

    :goto_0
    move-object v1, v2

    goto :goto_2

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbfh;

    .line 10
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzbfh;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcgw; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 13
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zzd:Lcom/google/android/gms/internal/ads/zzbep;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zza:Landroid/content/Context;

    .line 11
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcar;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcat;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzbep;->zzg(Lcom/google/android/gms/internal/ads/zzbep;Lcom/google/android/gms/internal/ads/zzcat;)Lcom/google/android/gms/internal/ads/zzcat;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zzd:Lcom/google/android/gms/internal/ads/zzbep;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbep;->zzh(Lcom/google/android/gms/internal/ads/zzbep;)Lcom/google/android/gms/internal/ads/zzcat;

    move-result-object v2

    const-string v3, "ClientApiBroker.createAdLoaderBuilder"

    .line 12
    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzcat;->zzd(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zzd:Lcom/google/android/gms/internal/ads/zzbep;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbep;->zzb(Lcom/google/android/gms/internal/ads/zzbep;)Lcom/google/android/gms/internal/ads/zzbdd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zza:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zzc:Lcom/google/android/gms/internal/ads/zzbvg;

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbdd;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;)Lcom/google/android/gms/internal/ads/zzbfj;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzbfx;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbeh;->zzc:Lcom/google/android/gms/internal/ads/zzbvg;

    const v3, 0xcbe6bb0

    .line 2
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfx;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzbfj;

    move-result-object p1

    return-object p1
.end method
