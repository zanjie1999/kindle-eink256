.class final synthetic Lcom/google/android/gms/internal/ads/zzdch;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgl;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcbz;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcbz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdch;->zza:Lcom/google/android/gms/internal/ads/zzcbz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdch;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdch;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdch;->zza:Lcom/google/android/gms/internal/ads/zzcbz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdch;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdch;->zzc:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdbc;

    .line 2
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdbc;->zzk(Lcom/google/android/gms/internal/ads/zzcbz;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
