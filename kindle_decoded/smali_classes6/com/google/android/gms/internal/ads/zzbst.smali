.class final synthetic Lcom/google/android/gms/internal/ads/zzbst;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcny;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbsm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbsm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbst;->zza:Lcom/google/android/gms/internal/ads/zzbsm;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzbsm;)Lcom/google/android/gms/internal/ads/zzcny;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbst;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbst;-><init>(Lcom/google/android/gms/internal/ads/zzbsm;)V

    return-object v0
.end method


# virtual methods
.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbst;->zza:Lcom/google/android/gms/internal/ads/zzbsm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbsm;->zza()V

    return-void
.end method
