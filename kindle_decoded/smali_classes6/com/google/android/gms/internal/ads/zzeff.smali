.class final synthetic Lcom/google/android/gms/internal/ads/zzeff;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcxe;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfbi;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfbi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeff;->zza:Lcom/google/android/gms/internal/ads/zzfbi;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzfbi;)Lcom/google/android/gms/internal/ads/zzcxe;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeff;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeff;-><init>(Lcom/google/android/gms/internal/ads/zzfbi;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbhc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeff;->zza:Lcom/google/android/gms/internal/ads/zzfbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbi;->zzt()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    return-object v0
.end method
