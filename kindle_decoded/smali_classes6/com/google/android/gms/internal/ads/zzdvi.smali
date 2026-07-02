.class public final Lcom/google/android/gms/internal/ads/zzdvi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdvn;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Ljava/util/Map;
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
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdvn;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvi;->zza:Lcom/google/android/gms/internal/ads/zzdvn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdvn;->zza()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvi;->zzc:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdvi;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdvi;)Lcom/google/android/gms/internal/ads/zzdvn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdvi;->zza:Lcom/google/android/gms/internal/ads/zzdvn;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdvi;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdvi;->zzb:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdvi;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdvi;->zzc:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final zzd()Lcom/google/android/gms/internal/ads/zzdvh;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdvh;-><init>(Lcom/google/android/gms/internal/ads/zzdvi;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdvh;->zza(Lcom/google/android/gms/internal/ads/zzdvh;)Lcom/google/android/gms/internal/ads/zzdvh;

    return-object v0
.end method
