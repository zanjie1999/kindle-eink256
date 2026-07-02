.class final synthetic Lcom/google/android/gms/internal/ads/zzdso;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdsr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcml;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsr;Lcom/google/android/gms/internal/ads/zzcml;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdso;->zza:Lcom/google/android/gms/internal/ads/zzdsr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdso;->zza:Lcom/google/android/gms/internal/ads/zzdsr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcml;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsr;->zzc(Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzcml;Ljava/util/Map;)V

    return-void
.end method
