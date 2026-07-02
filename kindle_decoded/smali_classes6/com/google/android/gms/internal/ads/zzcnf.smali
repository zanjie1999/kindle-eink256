.class final synthetic Lcom/google/android/gms/internal/ads/zzcnf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcnh;

.field private final zzb:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnh;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zza:Lcom/google/android/gms/internal/ads/zzcnh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zza:Lcom/google/android/gms/internal/ads/zzcnh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zzb:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcnh;->zzu(Ljava/util/Map;)V

    return-void
.end method
