.class final synthetic Lcom/google/android/gms/internal/ads/zzezi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzezj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbcz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzezj;Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezi;->zza:Lcom/google/android/gms/internal/ads/zzezj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzezi;->zzb:Lcom/google/android/gms/internal/ads/zzbcz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezi;->zza:Lcom/google/android/gms/internal/ads/zzezj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezi;->zzb:Lcom/google/android/gms/internal/ads/zzbcz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzezj;->zzc:Lcom/google/android/gms/internal/ads/zzezm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzezm;->zzd(Lcom/google/android/gms/internal/ads/zzezm;)Lcom/google/android/gms/internal/ads/zzezc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzezc;->zzbD(Lcom/google/android/gms/internal/ads/zzbcz;)V

    return-void
.end method
