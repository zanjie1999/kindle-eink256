.class final synthetic Lcom/google/android/gms/internal/ads/zzclt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzai;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcmb;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcmb;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclt;->zza:Lcom/google/android/gms/internal/ads/zzcmb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclt;->zzb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzclt;->zzc:Z

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzaj;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclt;->zza:Lcom/google/android/gms/internal/ads/zzcmb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclt;->zzb:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzclt;->zzc:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcmb;->zzT(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaj;

    move-result-object v0

    return-object v0
.end method
