.class public final Lcom/google/android/gms/internal/ads/zzdus;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzdur;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzazb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzfem;",
            "Lcom/google/android/gms/internal/ads/zzduq;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzazb;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzfem;",
            "Lcom/google/android/gms/internal/ads/zzduq;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdus;->zza:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzb:Lcom/google/android/gms/internal/ads/zzgln;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdur;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdus;->zza:Lcom/google/android/gms/internal/ads/zzgln;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgln;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzazb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzb:Lcom/google/android/gms/internal/ads/zzgln;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgle;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgle;->zzd()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdur;

    .line 2
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdur;-><init>(Lcom/google/android/gms/internal/ads/zzazb;Ljava/util/Map;)V

    return-object v2
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdus;->zza()Lcom/google/android/gms/internal/ads/zzdur;

    move-result-object v0

    return-object v0
.end method
