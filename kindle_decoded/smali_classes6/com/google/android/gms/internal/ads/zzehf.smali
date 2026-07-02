.class public final Lcom/google/android/gms/internal/ads/zzehf;
.super Lcom/google/android/gms/internal/ads/zzehh;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzehh<",
        "Lcom/google/android/gms/internal/ads/zzcxn;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcoj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdkw;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdam;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdgp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcoj;Lcom/google/android/gms/internal/ads/zzdkw;Lcom/google/android/gms/internal/ads/zzdam;Lcom/google/android/gms/internal/ads/zzdgp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzehh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehf;->zza:Lcom/google/android/gms/internal/ads/zzcoj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehf;->zzb:Lcom/google/android/gms/internal/ads/zzdkw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehf;->zzc:Lcom/google/android/gms/internal/ads/zzdam;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehf;->zzd:Lcom/google/android/gms/internal/ads/zzdgp;

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
            "Lcom/google/android/gms/internal/ads/zzcxn;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehf;->zza:Lcom/google/android/gms/internal/ads/zzcoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcoj;->zzr()Lcom/google/android/gms/internal/ads/zzdla;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehf;->zzc:Lcom/google/android/gms/internal/ads/zzdam;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdam;->zzf(Lcom/google/android/gms/internal/ads/zzfar;)Lcom/google/android/gms/internal/ads/zzdam;

    .line 3
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzdam;->zzg(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdam;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdam;->zzh()Lcom/google/android/gms/internal/ads/zzdao;

    move-result-object p1

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdla;->zzd(Lcom/google/android/gms/internal/ads/zzdao;)Lcom/google/android/gms/internal/ads/zzdla;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehf;->zzd:Lcom/google/android/gms/internal/ads/zzdgp;

    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdla;->zze(Lcom/google/android/gms/internal/ads/zzdgp;)Lcom/google/android/gms/internal/ads/zzdla;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehf;->zzb:Lcom/google/android/gms/internal/ads/zzdkw;

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdla;->zzc(Lcom/google/android/gms/internal/ads/zzdkw;)Lcom/google/android/gms/internal/ads/zzdla;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcve;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcve;-><init>(Landroid/view/ViewGroup;)V

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdla;->zzb(Lcom/google/android/gms/internal/ads/zzcve;)Lcom/google/android/gms/internal/ads/zzdla;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdla;->zza()Lcom/google/android/gms/internal/ads/zzdlb;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlb;->zzR()Lcom/google/android/gms/internal/ads/zzcyj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcyj;->zzc()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcyj;->zzd(Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
