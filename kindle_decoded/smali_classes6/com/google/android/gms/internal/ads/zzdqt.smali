.class public final Lcom/google/android/gms/internal/ads/zzdqt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbpr<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbnl;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdrh;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgku;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgku<",
            "Lcom/google/android/gms/internal/ads/zzdqp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmx;Lcom/google/android/gms/internal/ads/zzdmm;Lcom/google/android/gms/internal/ads/zzdrh;Lcom/google/android/gms/internal/ads/zzgku;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdmx;",
            "Lcom/google/android/gms/internal/ads/zzdmm;",
            "Lcom/google/android/gms/internal/ads/zzdrh;",
            "Lcom/google/android/gms/internal/ads/zzgku<",
            "Lcom/google/android/gms/internal/ads/zzdqp;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdmm;->zzQ()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdmx;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbnl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqt;->zza:Lcom/google/android/gms/internal/ads/zzbnl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqt;->zzb:Lcom/google/android/gms/internal/ads/zzdrh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdqt;->zzc:Lcom/google/android/gms/internal/ads/zzgku;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "asset"

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqt;->zza:Lcom/google/android/gms/internal/ads/zzbnl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqt;->zzc:Lcom/google/android/gms/internal/ads/zzgku;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgku;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbnb;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzbnl;->zze(Lcom/google/android/gms/internal/ads/zzbnb;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x28

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to call onCustomClick for asset "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqt;->zza:Lcom/google/android/gms/internal/ads/zzbnl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqt;->zzb:Lcom/google/android/gms/internal/ads/zzdrh;

    const-string v1, "/nativeAdCustomClick"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzdrh;->zze(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V

    return-void
.end method
