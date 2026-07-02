.class public final Lcom/google/android/gms/internal/ads/zzdsx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcml;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcml;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsx;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsx;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcml;->onPause()V

    :cond_0
    return-void
.end method

.method public final zzb(Landroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsx;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcml;->onResume()V

    :cond_0
    return-void
.end method

.method public final zzbo(Landroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsx;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcml;->destroy()V

    :cond_0
    return-void
.end method
