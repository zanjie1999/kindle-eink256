.class final Lcom/google/android/gms/internal/ads/zzavu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:I

.field final synthetic zzb:I

.field final synthetic zzc:I

.field final synthetic zzd:F

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzavx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzavx;IIIF)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavu;->zze:Lcom/google/android/gms/internal/ads/zzavx;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzavu;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzavu;->zzb:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzavu;->zzc:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzavu;->zzd:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavu;->zze:Lcom/google/android/gms/internal/ads/zzavx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavx;->zza(Lcom/google/android/gms/internal/ads/zzavx;)Lcom/google/android/gms/internal/ads/zzavy;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzavu;->zza:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzavu;->zzb:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzavu;->zzc:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzavu;->zzd:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzavy;->zzn(IIIF)V

    return-void
.end method
