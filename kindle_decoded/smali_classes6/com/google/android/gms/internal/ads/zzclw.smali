.class final synthetic Lcom/google/android/gms/internal/ads/zzclw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzai;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzai;

.field private final zzb:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzai;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclw;->zza:Lcom/google/android/gms/internal/ads/zzai;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzb:[B

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzaj;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->zza:Lcom/google/android/gms/internal/ads/zzai;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzb:[B

    sget v2, Lcom/google/android/gms/internal/ads/zzcmb;->zzc:I

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzai;->zza()Lcom/google/android/gms/internal/ads/zzaj;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzkj;

    .line 3
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzkj;-><init>([B)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzclq;

    .line 4
    array-length v1, v1

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzclq;-><init>(Lcom/google/android/gms/internal/ads/zzaj;ILcom/google/android/gms/internal/ads/zzaj;)V

    return-object v3
.end method
