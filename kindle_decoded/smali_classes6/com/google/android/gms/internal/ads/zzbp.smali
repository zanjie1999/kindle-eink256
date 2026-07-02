.class final synthetic Lcom/google/android/gms/internal/ads/zzbp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbp;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbp;->zzb:Lcom/google/android/gms/internal/ads/zzy;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbp;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbp;->zzb:Lcom/google/android/gms/internal/ads/zzy;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzda;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzda;->zzl(Lcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzy;)V

    .line 3
    iget p1, v1, Lcom/google/android/gms/internal/ads/zzy;->zzb:I

    iget p1, v1, Lcom/google/android/gms/internal/ads/zzy;->zzc:I

    iget p1, v1, Lcom/google/android/gms/internal/ads/zzy;->zzd:I

    iget p1, v1, Lcom/google/android/gms/internal/ads/zzy;->zze:F

    return-void
.end method
