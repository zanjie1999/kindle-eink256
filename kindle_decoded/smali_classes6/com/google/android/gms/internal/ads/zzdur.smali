.class public final Lcom/google/android/gms/internal/ads/zzdur;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfet;


# instance fields
.field private final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzfem;",
            "Lcom/google/android/gms/internal/ads/zzduq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzazb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazb;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzazb;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzfem;",
            "Lcom/google/android/gms/internal/ads/zzduq;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdur;->zza:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzb:Lcom/google/android/gms/internal/ads/zzazb;

    return-void
.end method


# virtual methods
.method public final zzbE(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzbF(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdur;->zza:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzb:Lcom/google/android/gms/internal/ads/zzazb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdur;->zza:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzduq;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzduq;->zza:I

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzazb;->zzc(I)V

    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdur;->zza:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzb:Lcom/google/android/gms/internal/ads/zzazb;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdur;->zza:Ljava/util/Map;

    .line 2
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzduq;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzduq;->zzc:I

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzazb;->zzc(I)V

    :cond_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdur;->zza:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzb:Lcom/google/android/gms/internal/ads/zzazb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdur;->zza:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzduq;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzduq;->zzb:I

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzazb;->zzc(I)V

    :cond_0
    return-void
.end method
