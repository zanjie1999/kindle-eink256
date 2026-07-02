.class public final Lcom/google/android/gms/internal/ads/zznf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzot;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzni;

.field private final zzb:J

.field private final zzc:J

.field private final zzd:J

.field private final zze:J

.field private final zzf:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzni;JJJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznf;->zza:Lcom/google/android/gms/internal/ads/zzni;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zznf;->zzb:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zznf;->zzc:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zznf;->zzd:J

    iput-wide p10, p0, Lcom/google/android/gms/internal/ads/zznf;->zze:J

    iput-wide p12, p0, Lcom/google/android/gms/internal/ads/zznf;->zzf:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zznf;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznf;->zzc:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zznf;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznf;->zzd:J

    return-wide v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zznf;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznf;->zze:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zznf;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznf;->zzf:J

    return-wide v0
.end method


# virtual methods
.method public final zze()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzf(J)Lcom/google/android/gms/internal/ads/zzor;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznf;->zza:Lcom/google/android/gms/internal/ads/zzni;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzni;->zza(J)J

    move-result-wide v1

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zznf;->zzc:J

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zznf;->zzd:J

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zznf;->zze:J

    iget-wide v11, p0, Lcom/google/android/gms/internal/ads/zznf;->zzf:J

    const-wide/16 v3, 0x0

    .line 2
    invoke-static/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/zznh;->zza(JJJJJJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzor;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzou;

    .line 3
    invoke-direct {v3, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzou;-><init>(JJ)V

    .line 4
    invoke-direct {v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzor;-><init>(Lcom/google/android/gms/internal/ads/zzou;Lcom/google/android/gms/internal/ads/zzou;)V

    return-object v2
.end method

.method public final zzg()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznf;->zzb:J

    return-wide v0
.end method

.method public final zzh(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznf;->zza:Lcom/google/android/gms/internal/ads/zzni;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzni;->zza(J)J

    move-result-wide p1

    return-wide p1
.end method
