.class final Lcom/google/android/gms/internal/ads/zzdku;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcxj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcxj<",
        "Lcom/google/android/gms/internal/ads/zzcxn;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzeec<",
            "Lcom/google/android/gms/internal/ads/zzcxn;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzeec<",
            "Lcom/google/android/gms/internal/ads/zzdmh;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzegq<",
            "Lcom/google/android/gms/internal/ads/zzdmh;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzcxj<",
            "Lcom/google/android/gms/internal/ads/zzcvh;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzdmx;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzdmx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzeec<",
            "Lcom/google/android/gms/internal/ads/zzcxn;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzeec<",
            "Lcom/google/android/gms/internal/ads/zzdmh;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzegq<",
            "Lcom/google/android/gms/internal/ads/zzdmh;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzcxj<",
            "Lcom/google/android/gms/internal/ads/zzcvh;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzdmx;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdku;->zza:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdku;->zzb:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdku;->zzc:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdku;->zzd:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdku;->zze:Lcom/google/android/gms/internal/ads/zzdmx;

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzeec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzeec<",
            "Lcom/google/android/gms/internal/ads/zzcxn;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdku;->zza:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeec;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return-object v1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdku;->zzc:Ljava/util/Map;

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzegq;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcxn;->zza(Lcom/google/android/gms/internal/ads/zzegq;)Lcom/google/android/gms/internal/ads/zzeec;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdku;->zzb:Ljava/util/Map;

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeec;

    if-nez p1, :cond_3

    :goto_0
    return-object v1

    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcxn;->zzb(Lcom/google/android/gms/internal/ads/zzeec;)Lcom/google/android/gms/internal/ads/zzeec;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdku;->zze:Lcom/google/android/gms/internal/ads/zzdmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmx;->zzd()Lcom/google/android/gms/internal/ads/zzbns;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdku;->zzd:Lcom/google/android/gms/internal/ads/zzgln;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgln;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcxj;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcxj;->zza(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzeec;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcxn;->zzb(Lcom/google/android/gms/internal/ads/zzeec;)Lcom/google/android/gms/internal/ads/zzeec;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    return-object v1
.end method
