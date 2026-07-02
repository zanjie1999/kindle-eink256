.class final synthetic Lcom/google/android/gms/internal/ads/zzcjz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcjb;

.field private final zzb:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcjb;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjz;->zza:Lcom/google/android/gms/internal/ads/zzcjb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjz;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjz;->zza:Lcom/google/android/gms/internal/ads/zzcjb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjz;->zzb:Ljava/util/Map;

    sget v2, Lcom/google/android/gms/internal/ads/zzcki;->zzc:I

    const-string v2, "onGcacheInfoEvent"

    .line 2
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbsi;->zze(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
