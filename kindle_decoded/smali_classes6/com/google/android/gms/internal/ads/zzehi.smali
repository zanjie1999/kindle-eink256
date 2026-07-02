.class public final Lcom/google/android/gms/internal/ads/zzehi;
.super Lcom/google/android/gms/internal/ads/zzehh;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzehh<",
        "Lcom/google/android/gms/internal/ads/zzcvh;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcoj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdam;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzejq;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdgp;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdkw;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzddr;

.field private final zzg:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcoj;Lcom/google/android/gms/internal/ads/zzdam;Lcom/google/android/gms/internal/ads/zzejq;Lcom/google/android/gms/internal/ads/zzdgp;Lcom/google/android/gms/internal/ads/zzdkw;Lcom/google/android/gms/internal/ads/zzddr;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzehh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehi;->zza:Lcom/google/android/gms/internal/ads/zzcoj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehi;->zzb:Lcom/google/android/gms/internal/ads/zzdam;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehi;->zzc:Lcom/google/android/gms/internal/ads/zzejq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehi;->zzd:Lcom/google/android/gms/internal/ads/zzdgp;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzehi;->zze:Lcom/google/android/gms/internal/ads/zzdkw;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzehi;->zzf:Lcom/google/android/gms/internal/ads/zzddr;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzehi;->zzg:Landroid/view/ViewGroup;

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
            "Lcom/google/android/gms/internal/ads/zzcvh;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehi;->zza:Lcom/google/android/gms/internal/ads/zzcoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcoj;->zzk()Lcom/google/android/gms/internal/ads/zzcwd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehi;->zzb:Lcom/google/android/gms/internal/ads/zzdam;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdam;->zzf(Lcom/google/android/gms/internal/ads/zzfar;)Lcom/google/android/gms/internal/ads/zzdam;

    .line 3
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzdam;->zzg(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdam;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdam;->zzh()Lcom/google/android/gms/internal/ads/zzdao;

    move-result-object p1

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcwd;->zzi(Lcom/google/android/gms/internal/ads/zzdao;)Lcom/google/android/gms/internal/ads/zzcwd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehi;->zzd:Lcom/google/android/gms/internal/ads/zzdgp;

    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcwd;->zzj(Lcom/google/android/gms/internal/ads/zzdgp;)Lcom/google/android/gms/internal/ads/zzcwd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehi;->zzc:Lcom/google/android/gms/internal/ads/zzejq;

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcwd;->zze(Lcom/google/android/gms/internal/ads/zzejq;)Lcom/google/android/gms/internal/ads/zzcwd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehi;->zze:Lcom/google/android/gms/internal/ads/zzdkw;

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcwd;->zzb(Lcom/google/android/gms/internal/ads/zzdkw;)Lcom/google/android/gms/internal/ads/zzcwd;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcxa;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzehi;->zzf:Lcom/google/android/gms/internal/ads/zzddr;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcxa;-><init>(Lcom/google/android/gms/internal/ads/zzddr;)V

    .line 8
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcwd;->zzd(Lcom/google/android/gms/internal/ads/zzcxa;)Lcom/google/android/gms/internal/ads/zzcwd;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcve;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzehi;->zzg:Landroid/view/ViewGroup;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcve;-><init>(Landroid/view/ViewGroup;)V

    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcwd;->zzc(Lcom/google/android/gms/internal/ads/zzcve;)Lcom/google/android/gms/internal/ads/zzcwd;

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcwd;->zza()Lcom/google/android/gms/internal/ads/zzcwe;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwe;->zzY()Lcom/google/android/gms/internal/ads/zzcyj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcyj;->zzc()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcyj;->zzd(Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
