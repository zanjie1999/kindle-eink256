.class final Lcom/google/android/gms/internal/ads/zzqh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:[B

.field private zzb:Z

.field private zzc:I

.field private zzd:J

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zza:[B

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzb:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzc:I

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzb:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zza:[B

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zznp;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2, v3}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqh;->zza:[B

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzna;->zza:I

    const/4 v0, 0x4

    aget-byte v0, p1, v0

    const/4 v1, -0x8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_2

    const/4 v0, 0x6

    aget-byte v0, p1, v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_2

    const/4 v0, 0x7

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xfe

    const/16 v0, 0xba

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzb:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzqg;JIII)V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.output"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzb:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzc:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzc:I

    if-nez v0, :cond_1

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzd:J

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzqh;->zze:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzf:I

    :cond_1
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzf:I

    add-int/2addr p2, p5

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzf:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzg:I

    const/16 p2, 0x10

    if-lt v1, p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzqh;->zzd(Lcom/google/android/gms/internal/ads/zzqg;)V

    :cond_2
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzqg;)V
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.output"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzc:I

    if-lez v0, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzqg;->zzV:Lcom/google/android/gms/internal/ads/zzox;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzd:J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzqh;->zze:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzf:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzg:I

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzqg;->zzi:Lcom/google/android/gms/internal/ads/zzow;

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzc:I

    :cond_0
    return-void
.end method
