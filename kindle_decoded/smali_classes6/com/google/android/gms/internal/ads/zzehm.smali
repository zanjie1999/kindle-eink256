.class public final Lcom/google/android/gms/internal/ads/zzehm;
.super Lcom/google/android/gms/internal/ads/zzehh;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzehh<",
        "Lcom/google/android/gms/internal/ads/zzdrw;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcoj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdam;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdgp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcoj;Lcom/google/android/gms/internal/ads/zzdam;Lcom/google/android/gms/internal/ads/zzdgp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzehh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehm;->zza:Lcom/google/android/gms/internal/ads/zzcoj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzb:Lcom/google/android/gms/internal/ads/zzdam;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzc:Lcom/google/android/gms/internal/ads/zzdgp;

    return-void
.end method


# virtual methods
.method protected final zzc(Lcom/google/android/gms/internal/ads/zzfar;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfar;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzdrw;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehm;->zza:Lcom/google/android/gms/internal/ads/zzcoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcoj;->zzs()Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzb:Lcom/google/android/gms/internal/ads/zzdam;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdam;->zzf(Lcom/google/android/gms/internal/ads/zzfar;)Lcom/google/android/gms/internal/ads/zzdam;

    .line 3
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzdam;->zzg(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdam;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdam;->zzh()Lcom/google/android/gms/internal/ads/zzdao;

    move-result-object p1

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzb(Lcom/google/android/gms/internal/ads/zzdao;)Lcom/google/android/gms/internal/ads/zzdsa;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzc:Lcom/google/android/gms/internal/ads/zzdgp;

    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzc(Lcom/google/android/gms/internal/ads/zzdgp;)Lcom/google/android/gms/internal/ads/zzdsa;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdsa;->zza()Lcom/google/android/gms/internal/ads/zzdsb;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdsb;->zzP()Lcom/google/android/gms/internal/ads/zzcyj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcyj;->zzc()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcyj;->zzd(Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
