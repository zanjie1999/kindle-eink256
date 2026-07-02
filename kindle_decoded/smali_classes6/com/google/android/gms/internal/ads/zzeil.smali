.class final synthetic Lcom/google/android/gms/internal/ads/zzeil;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcny;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcml;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcml;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeil;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzcml;)Lcom/google/android/gms/internal/ads/zzcny;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeil;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeil;-><init>(Lcom/google/android/gms/internal/ads/zzcml;)V

    return-object v0
.end method


# virtual methods
.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeil;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->zzK()V

    return-void
.end method
