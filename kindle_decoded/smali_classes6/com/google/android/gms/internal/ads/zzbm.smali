.class final synthetic Lcom/google/android/gms/internal/ads/zzbm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcz;

.field private final zzb:I

.field private final zzc:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcz;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbm;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbm;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzbm;->zzc:J

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbm;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbm;->zzb:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbm;->zzc:J

    check-cast p1, Lcom/google/android/gms/internal/ads/zzda;

    .line 2
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzda;->zzj(Lcom/google/android/gms/internal/ads/zzcz;IJ)V

    return-void
.end method
