.class public final Lcom/google/android/gms/internal/ads/zzcue;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Landroid/view/View;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcml;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfaa;

.field private final zzd:I

.field private final zze:Z

.field private final zzf:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzfaa;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcue;->zza:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzc:Lcom/google/android/gms/internal/ads/zzfaa;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzd:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzcue;->zze:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzf:Z

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcml;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    return-object v0
.end method

.method public final zzb()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcue;->zza:Landroid/view/View;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzfaa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzc:Lcom/google/android/gms/internal/ads/zzfaa;

    return-object v0
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzd:I

    return v0
.end method

.method public final zze()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcue;->zze:Z

    return v0
.end method

.method public final zzf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcue;->zzf:Z

    return v0
.end method
