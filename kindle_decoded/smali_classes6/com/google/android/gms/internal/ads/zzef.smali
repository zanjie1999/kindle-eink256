.class public final Lcom/google/android/gms/internal/ads/zzef;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:[Lcom/google/android/gms/internal/ads/zzde;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzet;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzev;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zzde;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzet;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzet;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzev;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzev;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzde;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzef;->zza:[Lcom/google/android/gms/internal/ads/zzde;

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v3, v2, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzef;->zzb:Lcom/google/android/gms/internal/ads/zzet;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzef;->zzc:Lcom/google/android/gms/internal/ads/zzev;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzef;->zza:[Lcom/google/android/gms/internal/ads/zzde;

    aput-object v0, p1, v3

    const/4 v0, 0x1

    aput-object v1, p1, v0

    return-void
.end method


# virtual methods
.method public final zza()[Lcom/google/android/gms/internal/ads/zzde;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzef;->zza:[Lcom/google/android/gms/internal/ads/zzde;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzahf;)Lcom/google/android/gms/internal/ads/zzahf;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzef;->zzc:Lcom/google/android/gms/internal/ads/zzev;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzahf;->zzb:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzev;->zzi(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzef;->zzc:Lcom/google/android/gms/internal/ads/zzev;

    .line 2
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzahf;->zzc:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzev;->zzj(F)V

    return-object p1
.end method

.method public final zzc(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzef;->zzb:Lcom/google/android/gms/internal/ads/zzet;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzet;->zzo(Z)V

    return p1
.end method

.method public final zzd(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzef;->zzc:Lcom/google/android/gms/internal/ads/zzev;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzev;->zzk(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zze()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzef;->zzb:Lcom/google/android/gms/internal/ads/zzet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzet;->zzp()J

    move-result-wide v0

    return-wide v0
.end method
