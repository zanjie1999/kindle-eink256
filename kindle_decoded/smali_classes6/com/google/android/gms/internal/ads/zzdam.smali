.class public final Lcom/google/android/gms/internal/ads/zzdam;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zza:Landroid/content/Context;

.field private zzb:Lcom/google/android/gms/internal/ads/zzfar;

.field private zzc:Landroid/os/Bundle;

.field private zzd:Lcom/google/android/gms/internal/ads/zzfam;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdam;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdam;->zza:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdam;)Lcom/google/android/gms/internal/ads/zzfar;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdam;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdam;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdam;->zzc:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzdam;)Lcom/google/android/gms/internal/ads/zzfam;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdam;->zzd:Lcom/google/android/gms/internal/ads/zzfam;

    return-object p0
.end method


# virtual methods
.method public final zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdam;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdam;->zza:Landroid/content/Context;

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzfar;)Lcom/google/android/gms/internal/ads/zzdam;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdam;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    return-object p0
.end method

.method public final zzg(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdam;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdam;->zzc:Landroid/os/Bundle;

    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzdao;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdao;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzdao;-><init>(Lcom/google/android/gms/internal/ads/zzdam;Lcom/google/android/gms/internal/ads/zzdan;)V

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzfam;)Lcom/google/android/gms/internal/ads/zzdam;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdam;->zzd:Lcom/google/android/gms/internal/ads/zzfam;

    return-object p0
.end method
