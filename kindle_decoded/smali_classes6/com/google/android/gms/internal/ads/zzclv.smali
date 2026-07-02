.class final synthetic Lcom/google/android/gms/internal/ads/zzclv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzai;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcmb;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcmb;Lcom/google/android/gms/internal/ads/zzai;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclv;->zza:Lcom/google/android/gms/internal/ads/zzcmb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzb:Lcom/google/android/gms/internal/ads/zzai;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzaj;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclv;->zza:Lcom/google/android/gms/internal/ads/zzcmb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzb:Lcom/google/android/gms/internal/ads/zzai;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcmb;->zzo(Lcom/google/android/gms/internal/ads/zzai;)Lcom/google/android/gms/internal/ads/zzaj;

    move-result-object v0

    return-object v0
.end method
