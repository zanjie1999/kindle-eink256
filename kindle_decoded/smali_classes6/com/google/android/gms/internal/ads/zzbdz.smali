.class final Lcom/google/android/gms/internal/ads/zzbdz;
.super Lcom/google/android/gms/internal/ads/zzbeq;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbeq<",
        "Lcom/google/android/gms/internal/ads/zzbze;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Landroid/content/Context;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbvg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbep;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbvg;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zzb:Lcom/google/android/gms/internal/ads/zzbvg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbeq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zza:Landroid/content/Context;

    const-string v2, "com.google.android.gms.ads.DynamiteOfflineUtilsCreatorImpl"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbdy;->zza:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 2
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcgx;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcgv;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbzh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zzb:Lcom/google/android/gms/internal/ads/zzbvg;

    const v3, 0xcbe6bb0

    .line 3
    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbzh;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzbze;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcgw; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzbfx;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zzb:Lcom/google/android/gms/internal/ads/zzbvg;

    const v2, 0xcbe6bb0

    .line 2
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbfx;->zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzbze;

    move-result-object p1

    return-object p1
.end method
