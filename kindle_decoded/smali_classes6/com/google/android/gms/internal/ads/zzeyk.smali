.class final synthetic Lcom/google/android/gms/internal/ads/zzeyk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcbz;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcbz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyk;->zza:Lcom/google/android/gms/internal/ads/zzcbz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeyk;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeyk;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyk;->zza:Lcom/google/android/gms/internal/ads/zzcbz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeyk;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeyk;->zzc:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcda;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcdj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcbz;->zzb()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcbz;->zzc()I

    move-result v0

    .line 2
    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzcdj;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p1, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzcda;->zze(Lcom/google/android/gms/internal/ads/zzccp;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
