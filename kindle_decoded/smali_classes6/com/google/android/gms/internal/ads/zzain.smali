.class public final Lcom/google/android/gms/internal/ads/zzain;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public zza:Ljava/lang/Object;

.field public zzb:Ljava/lang/Object;

.field public zzc:I

.field public zzd:J

.field public zze:J

.field public zzf:Z

.field private zzh:Lcom/google/android/gms/internal/ads/zzd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaim;->zza:Lcom/google/android/gms/internal/ads/zzadw;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzd;->zza:Lcom/google/android/gms/internal/ads/zzd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzain;->zzh:Lcom/google/android/gms/internal/ads/zzd;

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
    const-class v2, Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzain;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzain;->zza:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzain;->zza:Ljava/lang/Object;

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzain;->zzb:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzain;->zzb:Ljava/lang/Object;

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzain;->zzd:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzain;->zzd:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzain;->zzf:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzain;->zzf:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzain;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzain;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    .line 5
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzain;->zza:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzain;->zzb:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 3
    :goto_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzain;->zzd:J

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v1, v3, v1

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3c1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzain;->zzf:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzain;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzd;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/gms/internal/ads/zzd;Z)Lcom/google/android/gms/internal/ads/zzain;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzain;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzain;->zzb:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzain;->zzd:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzain;->zze:J

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzain;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzain;->zzf:Z

    return-object p0
.end method

.method public final zzb(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzain;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzd;->zza(I)Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzc;->zza:J

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzc(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzain;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzd;->zza(I)Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzc;->zza(I)I

    move-result p1

    return p1
.end method

.method public final zzd(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzain;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzd;->zza(I)Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzc;->zza(I)I

    move-result p1

    return p1
.end method

.method public final zze(J)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public final zzf(J)I
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzain;->zzd:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    cmp-long v2, p1, v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final zzg(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzain;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzd;->zza(I)Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzc;->zzb:I

    return p1
.end method

.method public final zzh(II)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzain;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzd;->zza(I)Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p1

    .line 2
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzc;->zzb:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzc;->zze:[J

    aget-wide v0, p1, p2

    return-wide v0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public final zzi()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzain;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzd;->zzb:J

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzj(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzain;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzd;->zza(I)Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzc;->zzg:Z

    const/4 p1, 0x0

    return p1
.end method

.method public final zzk(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzain;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzd;->zza(I)Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzc;->zzf:J

    const-wide/16 v0, 0x0

    return-wide v0
.end method
