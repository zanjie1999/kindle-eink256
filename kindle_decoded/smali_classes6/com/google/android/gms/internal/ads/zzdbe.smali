.class public final Lcom/google/android/gms/internal/ads/zzdbe;
.super Lcom/google/android/gms/internal/ads/zzdgm;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdgm<",
        "Lcom/google/android/gms/internal/ads/zzdbf;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdbf;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzdih<",
            "Lcom/google/android/gms/internal/ads/zzdbf;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdgm;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final zzbD(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdbd;-><init>(Lcom/google/android/gms/internal/ads/zzbcz;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdgm;->zzk(Lcom/google/android/gms/internal/ads/zzdgl;)V

    return-void
.end method
