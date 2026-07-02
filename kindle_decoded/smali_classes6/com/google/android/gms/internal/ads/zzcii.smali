.class public abstract Lcom/google/android/gms/internal/ads/zzcii;
.super Landroid/view/TextureView;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcje;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzciv;

.field protected final zzb:Lcom/google/android/gms/internal/ads/zzcjf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzciv;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzciv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->zza:Lcom/google/android/gms/internal/ads/zzciv;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjf;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzcjf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcje;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->zzb:Lcom/google/android/gms/internal/ads/zzcjf;

    return-void
.end method


# virtual methods
.method public zzA(I)V
    .locals 0

    return-void
.end method

.method public zzB(I)V
    .locals 0

    return-void
.end method

.method public abstract zzd()Ljava/lang/String;
.end method

.method public abstract zze(Lcom/google/android/gms/internal/ads/zzcih;)V
.end method

.method public abstract zzf(Ljava/lang/String;)V
.end method

.method public abstract zzg()V
.end method

.method public abstract zzh()V
.end method

.method public abstract zzi()V
.end method

.method public abstract zzj()I
.end method

.method public abstract zzk()I
.end method

.method public abstract zzl(I)V
.end method

.method public abstract zzm(FF)V
.end method

.method public abstract zzn()I
.end method

.method public abstract zzo()I
.end method

.method public abstract zzp()J
.end method

.method public abstract zzq()J
.end method

.method public abstract zzr()J
.end method

.method public abstract zzs()I
.end method

.method public abstract zzt()V
.end method

.method public zzw(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcii;->zzf(Ljava/lang/String;)V

    return-void
.end method

.method public zzx(I)V
    .locals 0

    return-void
.end method

.method public zzy(I)V
    .locals 0

    return-void
.end method

.method public zzz(I)V
    .locals 0

    return-void
.end method
