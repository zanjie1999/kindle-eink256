.class final synthetic Lcom/google/android/gms/internal/ads/zzefu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzefw;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfal;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzezz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzefw;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefu;->zza:Lcom/google/android/gms/internal/ads/zzefw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzb:Lcom/google/android/gms/internal/ads/zzfal;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefu;->zza:Lcom/google/android/gms/internal/ads/zzefw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzb:Lcom/google/android/gms/internal/ads/zzfal;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefu;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzefw;->zzf(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)V

    return-void
.end method
