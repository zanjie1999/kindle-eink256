.class public final Lcom/google/android/gms/internal/ads/zzdwt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwh;


# instance fields
.field private final zza:J

.field private final zzb:Lcom/google/android/gms/internal/ads/zzelq;


# direct methods
.method constructor <init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdwm;Lcom/google/android/gms/internal/ads/zzcoj;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdwt;->zza:J

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzcoj;->zzq()Lcom/google/android/gms/internal/ads/zzeye;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzeye;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzeye;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbdl;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>()V

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzeye;->zzb(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/zzeye;

    .line 3
    invoke-interface {p1, p6}, Lcom/google/android/gms/internal/ads/zzeye;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeye;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeye;->zza()Lcom/google/android/gms/internal/ads/zzeyf;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeyf;->zza()Lcom/google/android/gms/internal/ads/zzelq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwt;->zzb:Lcom/google/android/gms/internal/ads/zzelq;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdws;

    .line 6
    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/internal/ads/zzdws;-><init>(Lcom/google/android/gms/internal/ads/zzdwt;Lcom/google/android/gms/internal/ads/zzdwm;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzelq;->zzo(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzdwt;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdwt;->zza:J

    return-wide v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbdg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwt;->zzb:Lcom/google/android/gms/internal/ads/zzelq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzelq;->zzl(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwt;->zzb:Lcom/google/android/gms/internal/ads/zzelq;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzelq;->zzZ(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwt;->zzb:Lcom/google/android/gms/internal/ads/zzelq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelq;->zzj()V

    return-void
.end method
