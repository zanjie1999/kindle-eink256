.class public final Lcom/google/android/gms/internal/ads/zzdoh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbw;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdmm;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdmr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmm;Lcom/google/android/gms/internal/ads/zzdmr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoh;->zza:Lcom/google/android/gms/internal/ads/zzdmm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdoh;->zzb:Lcom/google/android/gms/internal/ads/zzdmr;

    return-void
.end method


# virtual methods
.method public final zzg()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoh;->zza:Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzU()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoh;->zza:Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzT()Lcom/google/android/gms/internal/ads/zzcml;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoh;->zza:Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdmm;->zzR()Lcom/google/android/gms/internal/ads/zzcml;

    move-result-object v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoh;->zzb:Lcom/google/android/gms/internal/ads/zzdmr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdmr;->zzd()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbsi;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method
