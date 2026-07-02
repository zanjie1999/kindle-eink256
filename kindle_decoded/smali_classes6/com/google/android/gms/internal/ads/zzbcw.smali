.class public final Lcom/google/android/gms/internal/ads/zzbcw;
.super Lcom/google/android/gms/internal/ads/zzbew;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbcv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbcv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbew;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcw;->zza:Lcom/google/android/gms/internal/ads/zzbcv;

    return-void
.end method


# virtual methods
.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcw;->zza:Lcom/google/android/gms/internal/ads/zzbcv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbcv;->onAdClicked()V

    return-void
.end method
