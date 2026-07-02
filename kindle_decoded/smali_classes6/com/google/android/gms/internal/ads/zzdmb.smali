.class final synthetic Lcom/google/android/gms/internal/ads/zzdmb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdmu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdmu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zza:Lcom/google/android/gms/internal/ads/zzdmu;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzdmu;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdmb;-><init>(Lcom/google/android/gms/internal/ads/zzdmu;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zza:Lcom/google/android/gms/internal/ads/zzdmu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdmu;->zzy()V

    return-void
.end method
