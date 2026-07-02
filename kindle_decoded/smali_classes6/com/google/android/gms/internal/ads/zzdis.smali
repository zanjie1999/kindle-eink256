.class public final Lcom/google/android/gms/internal/ads/zzdis;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzffu;

.field private zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzffu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzezz;->zzp:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdis;->zza:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdis;->zzb:Lcom/google/android/gms/internal/ads/zzffu;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdis;->zzc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdis;->zzb:Lcom/google/android/gms/internal/ads/zzffu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdis;->zza:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzffu;->zza(Ljava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdis;->zzc:Z

    :cond_0
    return-void
.end method
