.class final synthetic Lcom/google/android/gms/internal/ads/zzeih;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdsw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdsw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeih;->zza:Lcom/google/android/gms/internal/ads/zzdsw;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzdsw;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeih;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeih;-><init>(Lcom/google/android/gms/internal/ads/zzdsw;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeih;->zza:Lcom/google/android/gms/internal/ads/zzdsw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsw;->zzb()V

    return-void
.end method
