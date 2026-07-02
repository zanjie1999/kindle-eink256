.class public final Lcom/google/android/gms/internal/ads/zzbjy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbjx;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbka;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbka;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zzb:Lcom/google/android/gms/internal/ads/zzbka;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zza:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjx;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zza:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zzb:Lcom/google/android/gms/internal/ads/zzbka;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zza:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbjx;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/google/android/gms/internal/ads/zzbka;->zzb(Lcom/google/android/gms/internal/ads/zzbjx;J[Ljava/lang/String;)Z

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zza:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbjx;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, p3, p4, v1, v1}, Lcom/google/android/gms/internal/ads/zzbjx;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzbjx;)V

    .line 4
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbka;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zzb:Lcom/google/android/gms/internal/ads/zzbka;

    return-object v0
.end method
