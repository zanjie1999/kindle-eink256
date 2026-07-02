.class final synthetic Lcom/google/android/gms/internal/ads/zzckb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaty;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcki;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcki;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckb;->zza:Lcom/google/android/gms/internal/ads/zzcki;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckb;->zzb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzckb;->zzc:Z

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzatz;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckb;->zza:Lcom/google/android/gms/internal/ads/zzcki;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckb;->zzb:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzckb;->zzc:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcki;->zzX(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzatz;

    move-result-object v0

    return-object v0
.end method
