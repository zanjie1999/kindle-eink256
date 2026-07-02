.class final Lcom/google/android/gms/internal/ads/zzcbq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final zza:J

.field public final zzb:Lcom/google/android/gms/internal/ads/zzcbo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcbr;Lcom/google/android/gms/internal/ads/zzcbo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcbq;->zza:J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbq;->zzb:Lcom/google/android/gms/internal/ads/zzcbo;

    return-void
.end method
