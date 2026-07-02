.class final synthetic Lcom/google/android/gms/internal/ads/zzpf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzni;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzoh;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzoh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zza:Lcom/google/android/gms/internal/ads/zzoh;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzoh;)Lcom/google/android/gms/internal/ads/zzni;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzpf;-><init>(Lcom/google/android/gms/internal/ads/zzoh;)V

    return-object v0
.end method


# virtual methods
.method public final zza(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zza:Lcom/google/android/gms/internal/ads/zzoh;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzoh;->zzb(J)J

    move-result-wide p1

    return-wide p1
.end method
