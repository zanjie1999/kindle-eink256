.class final synthetic Lcom/google/android/gms/internal/ads/zzeey;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcxe;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcml;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcml;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeey;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzcml;)Lcom/google/android/gms/internal/ads/zzcxe;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeey;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeey;-><init>(Lcom/google/android/gms/internal/ads/zzcml;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbhc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeey;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->zzh()Lcom/google/android/gms/internal/ads/zzcnh;

    move-result-object v0

    return-object v0
.end method
