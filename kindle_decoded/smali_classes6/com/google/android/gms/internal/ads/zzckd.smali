.class final synthetic Lcom/google/android/gms/internal/ads/zzckd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaty;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcki;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaty;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcki;Lcom/google/android/gms/internal/ads/zzaty;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckd;->zza:Lcom/google/android/gms/internal/ads/zzcki;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckd;->zzb:Lcom/google/android/gms/internal/ads/zzaty;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzatz;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckd;->zza:Lcom/google/android/gms/internal/ads/zzcki;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckd;->zzb:Lcom/google/android/gms/internal/ads/zzaty;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcki;->zzU(Lcom/google/android/gms/internal/ads/zzaty;)Lcom/google/android/gms/internal/ads/zzatz;

    move-result-object v0

    return-object v0
.end method
