.class public final Lcom/google/android/gms/internal/ads/zzdnw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdss;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdrh;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcua;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdmu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdss;Lcom/google/android/gms/internal/ads/zzdrh;Lcom/google/android/gms/internal/ads/zzcua;Lcom/google/android/gms/internal/ads/zzdmu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zza:Lcom/google/android/gms/internal/ads/zzdss;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzb:Lcom/google/android/gms/internal/ads/zzdrh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzc:Lcom/google/android/gms/internal/ads/zzcua;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzd:Lcom/google/android/gms/internal/ads/zzdmu;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcmw;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zza:Lcom/google/android/gms/internal/ads/zzdss;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdl;->zzb()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdss;->zzb(Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzfac;)Lcom/google/android/gms/internal/ads/zzcml;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    .line 2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdnq;

    .line 3
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdnq;-><init>(Lcom/google/android/gms/internal/ads/zzdnw;)V

    const-string v3, "/sendMessageToSdk"

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzcml;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdnr;

    .line 4
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdnr;-><init>(Lcom/google/android/gms/internal/ads/zzdnw;)V

    const-string v3, "/adMuted"

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzcml;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzb:Lcom/google/android/gms/internal/ads/zzdrh;

    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdns;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ads/zzdns;-><init>(Lcom/google/android/gms/internal/ads/zzdnw;)V

    const-string v5, "/loadHtml"

    invoke-virtual {v2, v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzdrh;->zzi(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzb:Lcom/google/android/gms/internal/ads/zzdrh;

    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdnt;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ads/zzdnt;-><init>(Lcom/google/android/gms/internal/ads/zzdnw;)V

    const-string v5, "/showOverlay"

    invoke-virtual {v2, v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzdrh;->zzi(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzb:Lcom/google/android/gms/internal/ads/zzdrh;

    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdnu;-><init>(Lcom/google/android/gms/internal/ads/zzdnw;)V

    const-string v4, "/hideOverlay"

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzdrh;->zzi(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V

    return-object v1
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzcml;Ljava/util/Map;)V
    .locals 0

    const-string p2, "Hiding native ads overlay."

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzh(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcml;->zzH()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzc:Lcom/google/android/gms/internal/ads/zzcua;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcua;->zze(Z)V

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzcml;Ljava/util/Map;)V
    .locals 0

    const-string p2, "Showing native ads overlay."

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzh(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcml;->zzH()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzc:Lcom/google/android/gms/internal/ads/zzcua;

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcua;->zze(Z)V

    return-void
.end method

.method final synthetic zzd(Ljava/util/Map;Z)V
    .locals 2

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "messageType"

    const-string v1, "htmlLoaded"

    .line 2
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzb:Lcom/google/android/gms/internal/ads/zzdrh;

    const-string v0, "sendMessageToNativeJs"

    .line 4
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdrh;->zzg(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzcml;Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzd:Lcom/google/android/gms/internal/ads/zzdmu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdmu;->zzw()V

    return-void
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzcml;Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzb:Lcom/google/android/gms/internal/ads/zzdrh;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdrh;->zzg(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
