.class final Lcom/google/android/gms/internal/ads/zzavv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/view/Surface;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzavx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzavx;Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzb:Lcom/google/android/gms/internal/ads/zzavx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavv;->zza:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzb:Lcom/google/android/gms/internal/ads/zzavx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavx;->zza(Lcom/google/android/gms/internal/ads/zzavx;)Lcom/google/android/gms/internal/ads/zzavy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavv;->zza:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzavy;->zzo(Landroid/view/Surface;)V

    return-void
.end method
