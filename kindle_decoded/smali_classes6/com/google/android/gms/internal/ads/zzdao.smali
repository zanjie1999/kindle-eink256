.class public final Lcom/google/android/gms/internal/ads/zzdao;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfar;

.field private final zzc:Landroid/os/Bundle;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfam;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdam;Lcom/google/android/gms/internal/ads/zzdan;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdam;->zza(Lcom/google/android/gms/internal/ads/zzdam;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdao;->zza:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdam;->zzb(Lcom/google/android/gms/internal/ads/zzdam;)Lcom/google/android/gms/internal/ads/zzfar;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdam;->zzc(Lcom/google/android/gms/internal/ads/zzdam;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzc:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdam;->zzd(Lcom/google/android/gms/internal/ads/zzdam;)Lcom/google/android/gms/internal/ads/zzfam;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzd:Lcom/google/android/gms/internal/ads/zzfam;

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/ads/zzdam;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdam;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdam;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdao;->zza:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdam;->zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdam;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdam;->zzf(Lcom/google/android/gms/internal/ads/zzfar;)Lcom/google/android/gms/internal/ads/zzdam;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzc:Landroid/os/Bundle;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdam;->zzg(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdam;

    return-object v0
.end method

.method final zzb()Lcom/google/android/gms/internal/ads/zzfar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    return-object v0
.end method

.method final zzc()Lcom/google/android/gms/internal/ads/zzfam;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzd:Lcom/google/android/gms/internal/ads/zzfam;

    return-object v0
.end method

.method final zzd()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdao;->zzc:Landroid/os/Bundle;

    return-object v0
.end method

.method final zze(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdao;->zza:Landroid/content/Context;

    return-object p1
.end method
