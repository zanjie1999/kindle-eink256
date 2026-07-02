.class public final Lcom/google/android/gms/internal/ads/zzczu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzddx;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfar;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/zzg;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdxk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfar;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/zzdxk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczu;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzc:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzd:Lcom/google/android/gms/ads/internal/util/zzg;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzczu;->zze:Lcom/google/android/gms/internal/ads/zzdxk;

    return-void
.end method


# virtual methods
.method public final zzbG(Lcom/google/android/gms/internal/ads/zzcbj;)V
    .locals 4

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzct:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzd:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzn()Lcom/google/android/gms/internal/ads/zzcfz;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/ads/internal/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczu;->zza:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzc:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfar;->zzf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/ads/internal/zze;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcfz;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczu;->zze:Lcom/google/android/gms/internal/ads/zzdxk;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdxk;->zzi()V

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzfal;)V
    .locals 0

    return-void
.end method
