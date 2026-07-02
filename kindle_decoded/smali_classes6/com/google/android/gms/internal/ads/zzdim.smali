.class public final Lcom/google/android/gms/internal/ads/zzdim;
.super Lcom/google/android/gms/internal/ads/zzdgm;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdio;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdgm<",
        "Lcom/google/android/gms/internal/ads/zzdio;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdio;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzdih<",
            "Lcom/google/android/gms/internal/ads/zzdio;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdgm;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final zzb()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdil;->zza:Lcom/google/android/gms/internal/ads/zzdgl;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdgm;->zzk(Lcom/google/android/gms/internal/ads/zzdgl;)V

    return-void
.end method
