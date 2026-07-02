.class final synthetic Lcom/google/android/gms/internal/ads/zzeyj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcbz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcbz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyj;->zza:Lcom/google/android/gms/internal/ads/zzcbz;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyj;->zza:Lcom/google/android/gms/internal/ads/zzcbz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzccv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcbz;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcbz;->zzc()I

    move-result v0

    .line 2
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcdj;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzccv;->zzg(Lcom/google/android/gms/internal/ads/zzccp;)V

    return-void
.end method
