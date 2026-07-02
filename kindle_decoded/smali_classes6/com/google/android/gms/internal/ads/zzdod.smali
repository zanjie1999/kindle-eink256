.class final synthetic Lcom/google/android/gms/internal/ads/zzdod;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcnx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdoe;

.field private final zzb:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdoe;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdod;->zza:Lcom/google/android/gms/internal/ads/zzdoe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdod;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdod;->zza:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdod;->zzb:Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdoe;->zzc(Ljava/util/Map;Z)V

    return-void
.end method
