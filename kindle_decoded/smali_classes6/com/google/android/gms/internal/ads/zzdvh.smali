.class public final Lcom/google/android/gms/internal/ads/zzdvh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdvi;

.field private final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdvi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zza:Lcom/google/android/gms/internal/ads/zzdvi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzb:Ljava/util/Map;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdvh;)Lcom/google/android/gms/internal/ads/zzdvh;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzb:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zza:Lcom/google/android/gms/internal/ads/zzdvi;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdvi;->zzc(Lcom/google/android/gms/internal/ads/zzdvi;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzfac;)Lcom/google/android/gms/internal/ads/zzdvh;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzb:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfac;->zzb:Ljava/lang/String;

    const-string v1, "gqi"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzezz;)Lcom/google/android/gms/internal/ads/zzdvh;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzb:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzezz;->zzw:Ljava/lang/String;

    const-string v1, "aai"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zza:Lcom/google/android/gms/internal/ads/zzdvi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdvi;->zzb(Lcom/google/android/gms/internal/ads/zzdvi;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdvg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdvg;-><init>(Lcom/google/android/gms/internal/ads/zzdvh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzf()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zza:Lcom/google/android/gms/internal/ads/zzdvi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdvi;->zza(Lcom/google/android/gms/internal/ads/zzdvi;)Lcom/google/android/gms/internal/ads/zzdvn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzb:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvp;->zzc(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zza:Lcom/google/android/gms/internal/ads/zzdvi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdvi;->zza(Lcom/google/android/gms/internal/ads/zzdvi;)Lcom/google/android/gms/internal/ads/zzdvn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzb:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvp;->zzb(Ljava/util/Map;)V

    return-void
.end method
