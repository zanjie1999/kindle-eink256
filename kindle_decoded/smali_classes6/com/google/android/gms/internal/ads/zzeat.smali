.class final synthetic Lcom/google/android/gms/internal/ads/zzeat;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeay;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeag;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeat;->zza:Lcom/google/android/gms/internal/ads/zzeag;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzeag;)Lcom/google/android/gms/internal/ads/zzeay;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeat;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeat;-><init>(Lcom/google/android/gms/internal/ads/zzeag;)V

    return-object v0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeat;->zza:Lcom/google/android/gms/internal/ads/zzeag;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeag;->zzb(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
