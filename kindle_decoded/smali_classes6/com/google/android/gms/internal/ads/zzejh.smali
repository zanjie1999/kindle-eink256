.class final Lcom/google/android/gms/internal/ads/zzejh;
.super Lcom/google/android/gms/internal/ads/zzcvo;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzejj;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzcxe;Lcom/google/android/gms/internal/ads/zzfaa;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p2, p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzcvo;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzcxe;Lcom/google/android/gms/internal/ads/zzfaa;)V

    return-void
.end method


# virtual methods
.method public final zze(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzdco;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzdih<",
            "Lcom/google/android/gms/internal/ads/zzdcq;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/zzdco;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdco;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdco;-><init>(Ljava/util/Set;)V

    return-object p1
.end method
