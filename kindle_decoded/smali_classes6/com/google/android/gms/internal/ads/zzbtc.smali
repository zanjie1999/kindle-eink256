.class final synthetic Lcom/google/android/gms/internal/ads/zzbtc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbsn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbsn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtc;->zza:Lcom/google/android/gms/internal/ads/zzbsn;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzbsn;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbtc;-><init>(Lcom/google/android/gms/internal/ads/zzbsn;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtc;->zza:Lcom/google/android/gms/internal/ads/zzbsn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbsn;->zzi()V

    return-void
.end method
