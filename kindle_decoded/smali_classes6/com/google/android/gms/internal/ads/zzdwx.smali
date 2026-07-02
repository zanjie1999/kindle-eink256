.class public final Lcom/google/android/gms/internal/ads/zzdwx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwh;


# instance fields
.field private final zza:J

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdwm;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzezq;


# direct methods
.method constructor <init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdwm;Lcom/google/android/gms/internal/ads/zzcoj;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdwx;->zza:J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdwx;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdwx;->zzc:Lcom/google/android/gms/internal/ads/zzdwm;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzcoj;->zzt()Lcom/google/android/gms/internal/ads/zzezs;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzezs;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzezs;

    .line 2
    invoke-interface {p1, p6}, Lcom/google/android/gms/internal/ads/zzezs;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzezs;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzezs;->zza()Lcom/google/android/gms/internal/ads/zzezt;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzezt;->zzb()Lcom/google/android/gms/internal/ads/zzezq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwx;->zzd:Lcom/google/android/gms/internal/ads/zzezq;

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzdwx;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdwx;->zza:J

    return-wide v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzdwx;)Lcom/google/android/gms/internal/ads/zzdwm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdwx;->zzc:Lcom/google/android/gms/internal/ads/zzdwm;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbdg;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwx;->zzd:Lcom/google/android/gms/internal/ads/zzezq;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdwv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdwv;-><init>(Lcom/google/android/gms/internal/ads/zzdwx;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzezq;->zzc(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/zzccz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwx;->zzd:Lcom/google/android/gms/internal/ads/zzezq;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdww;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdww;-><init>(Lcom/google/android/gms/internal/ads/zzdwx;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzezq;->zze(Lcom/google/android/gms/internal/ads/zzccv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwx;->zzd:Lcom/google/android/gms/internal/ads/zzezq;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzezq;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method
