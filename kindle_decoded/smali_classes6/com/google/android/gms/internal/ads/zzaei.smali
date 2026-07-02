.class public final Lcom/google/android/gms/internal/ads/zzaei;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaia;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzahy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaia;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaia;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzahy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zza:Lcom/google/android/gms/internal/ads/zzaia;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzjz;)Lcom/google/android/gms/internal/ads/zzaei;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zza:Lcom/google/android/gms/internal/ads/zzaia;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaia;->zzl(Lcom/google/android/gms/internal/ads/zzjz;)Lcom/google/android/gms/internal/ads/zzaia;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzafy;)Lcom/google/android/gms/internal/ads/zzaei;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zza:Lcom/google/android/gms/internal/ads/zzaia;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaia;->zzm(Lcom/google/android/gms/internal/ads/zzafy;)Lcom/google/android/gms/internal/ads/zzaia;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzaie;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zza:Lcom/google/android/gms/internal/ads/zzaia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaia;->zzn()Lcom/google/android/gms/internal/ads/zzaie;

    move-result-object v0

    return-object v0
.end method
