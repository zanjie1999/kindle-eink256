.class final Lcom/google/android/gms/internal/ads/zzeha;
.super Lcom/google/android/gms/internal/ads/zzbxg;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzehc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzeef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeef<",
            "Lcom/google/android/gms/internal/ads/zzbxn;",
            "Lcom/google/android/gms/internal/ads/zzefy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzehc;Lcom/google/android/gms/internal/ads/zzeef;Lcom/google/android/gms/internal/ads/zzehb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeef<",
            "Lcom/google/android/gms/internal/ads/zzbxn;",
            "Lcom/google/android/gms/internal/ads/zzefy;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeha;->zza:Lcom/google/android/gms/internal/ads/zzehc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbxg;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeha;->zzb:Lcom/google/android/gms/internal/ads/zzeef;

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbvv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeha;->zza:Lcom/google/android/gms/internal/ads/zzehc;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzehc;->zzc(Lcom/google/android/gms/internal/ads/zzehc;Lcom/google/android/gms/internal/ads/zzbvv;)Lcom/google/android/gms/internal/ads/zzbvv;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeha;->zzb:Lcom/google/android/gms/internal/ads/zzeef;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/internal/ads/zzdcm;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefy;->zzj()V

    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeha;->zzb:Lcom/google/android/gms/internal/ads/zzeef;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/internal/ads/zzdcm;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzefy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzefy;->zzw(ILjava/lang/String;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeha;->zzb:Lcom/google/android/gms/internal/ads/zzeef;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/internal/ads/zzdcm;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzefy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzefy;->zzx(Lcom/google/android/gms/internal/ads/zzbcz;)V

    return-void
.end method
