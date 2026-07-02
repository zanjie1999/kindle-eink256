.class final Lcom/google/android/gms/internal/ads/zzezv;
.super Lcom/google/android/gms/internal/ads/zzfid;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbfr;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzezw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzezw;Lcom/google/android/gms/internal/ads/zzbfr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezv;->zzb:Lcom/google/android/gms/internal/ads/zzezw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzezv;->zza:Lcom/google/android/gms/internal/ads/zzbfr;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfid;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezv;->zzb:Lcom/google/android/gms/internal/ads/zzezw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzezw;->zzw(Lcom/google/android/gms/internal/ads/zzezw;)Lcom/google/android/gms/internal/ads/zzdrw;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezv;->zza:Lcom/google/android/gms/internal/ads/zzbfr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfr;->zze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
