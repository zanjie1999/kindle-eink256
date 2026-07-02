.class public final Lcom/google/android/gms/internal/ads/zzaho;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final zza:Ljava/lang/Object;

.field public final zzb:I

.field public final zzc:Lcom/google/android/gms/internal/ads/zzagk;

.field public final zzd:Ljava/lang/Object;

.field public final zze:I

.field public final zzf:J

.field public final zzg:J

.field public final zzh:I

.field public final zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzahn;->zza:Lcom/google/android/gms/internal/ads/zzadw;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzagk;Ljava/lang/Object;IJJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zza:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Lcom/google/android/gms/internal/ads/zzagk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzd:Ljava/lang/Object;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzaho;->zze:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzf:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzg:J

    iput p10, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzh:I

    iput p11, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzi:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzaho;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaho;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzb:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaho;->zze:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zze:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzf:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzf:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzg:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzg:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzh:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzh:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzi:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzi:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaho;->zza:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zza:Ljava/lang/Object;

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzflt;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzd:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzd:Ljava/lang/Object;

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzflt;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Lcom/google/android/gms/internal/ads/zzagk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Lcom/google/android/gms/internal/ads/zzagk;

    .line 4
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzflt;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zza:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Lcom/google/android/gms/internal/ads/zzagk;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzd:Ljava/lang/Object;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zze:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzb:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzf:J

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzg:J

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzh:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzi:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
