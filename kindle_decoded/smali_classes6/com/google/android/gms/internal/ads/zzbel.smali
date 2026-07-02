.class final Lcom/google/android/gms/internal/ads/zzbel;
.super Lcom/google/android/gms/internal/ads/zzbeq;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbeq<",
        "Lcom/google/android/gms/internal/ads/zzbml;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Landroid/widget/FrameLayout;

.field final synthetic zzb:Landroid/widget/FrameLayout;

.field final synthetic zzc:Landroid/content/Context;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbep;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbep;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzd:Lcom/google/android/gms/internal/ads/zzbep;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbel;->zza:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzb:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzc:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbeq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzc:Landroid/content/Context;

    const-string v1, "native_ad_view_delegate"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbep;->zzi(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbig;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbig;-><init>()V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzc:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzc:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zza:Landroid/widget/FrameLayout;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzb:Landroid/widget/FrameLayout;

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzc:Landroid/content/Context;

    const-string v4, "com.google.android.gms.ads.ChimeraNativeAdViewDelegateCreatorImpl"

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbek;->zza:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 7
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzcgx;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcgv;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbmo;

    const v4, 0xcbe6bb0

    .line 8
    invoke-interface {v3, v0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzbmo;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;I)Landroid/os/IBinder;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbmk;->zzby(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbml;

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

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzd:Lcom/google/android/gms/internal/ads/zzbep;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzc:Landroid/content/Context;

    .line 10
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcar;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcat;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbep;->zzg(Lcom/google/android/gms/internal/ads/zzbep;Lcom/google/android/gms/internal/ads/zzcat;)Lcom/google/android/gms/internal/ads/zzcat;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzd:Lcom/google/android/gms/internal/ads/zzbep;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbep;->zzh(Lcom/google/android/gms/internal/ads/zzbep;)Lcom/google/android/gms/internal/ads/zzcat;

    move-result-object v1

    const-string v2, "ClientApiBroker.createNativeAdViewDelegate"

    .line 11
    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcat;->zzd(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzd:Lcom/google/android/gms/internal/ads/zzbep;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbep;->zzd(Lcom/google/android/gms/internal/ads/zzbep;)Lcom/google/android/gms/internal/ads/zzbog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzc:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbel;->zza:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzb:Landroid/widget/FrameLayout;

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbog;->zza(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/zzbml;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzbfx;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zza:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzb:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbfx;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzbml;

    move-result-object p1

    return-object p1
.end method
