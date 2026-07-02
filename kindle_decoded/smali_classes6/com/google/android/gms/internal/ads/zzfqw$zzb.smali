.class final Lcom/google/android/gms/internal/ads/zzfqw$zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzfqw$zzb;

.field static final zzb:Lcom/google/android/gms/internal/ads/zzfqw$zzb;


# instance fields
.field final zzc:Z

.field final zzd:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqw;->zzf()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfqw$zzb;->zzb:Lcom/google/android/gms/internal/ads/zzfqw$zzb;

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfqw$zzb;->zza:Lcom/google/android/gms/internal/ads/zzfqw$zzb;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqw$zzb;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfqw$zzb;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqw$zzb;->zzb:Lcom/google/android/gms/internal/ads/zzfqw$zzb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqw$zzb;

    const/4 v2, 0x1

    .line 3
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfqw$zzb;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqw$zzb;->zza:Lcom/google/android/gms/internal/ads/zzfqw$zzb;

    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfqw$zzb;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfqw$zzb;->zzd:Ljava/lang/Throwable;

    return-void
.end method
