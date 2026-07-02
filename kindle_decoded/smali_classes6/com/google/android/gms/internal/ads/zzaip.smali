.class public final Lcom/google/android/gms/internal/ads/zzaip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zza:Ljava/lang/Object;

.field private static final zzq:Ljava/lang/Object;

.field private static final zzr:Lcom/google/android/gms/internal/ads/zzagk;


# instance fields
.field public zzb:Ljava/lang/Object;

.field public zzc:Lcom/google/android/gms/internal/ads/zzagk;

.field public zzd:J

.field public zze:J

.field public zzf:J

.field public zzg:Z

.field public zzh:Z

.field public zzi:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public zzj:Lcom/google/android/gms/internal/ads/zzagh;

.field public zzk:Z

.field public zzl:J

.field public zzm:J

.field public zzn:I

.field public zzo:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaip;->zza:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaip;->zzq:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzagb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzagb;-><init>()V

    const-string v1, "com.google.android.exoplayer2.Timeline"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzagb;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzagb;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzagb;->zzb(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzagb;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagb;->zzc()Lcom/google/android/gms/internal/ads/zzagk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaip;->zzr:Lcom/google/android/gms/internal/ads/zzagk;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaio;->zza:Lcom/google/android/gms/internal/ads/zzadw;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaip;->zza:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaip;->zzr:Lcom/google/android/gms/internal/ads/zzagk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzc:Lcom/google/android/gms/internal/ads/zzagk;

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
    const-class v2, Lcom/google/android/gms/internal/ads/zzaip;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaip;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Ljava/lang/Object;

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzc:Lcom/google/android/gms/internal/ads/zzagk;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzc:Lcom/google/android/gms/internal/ads/zzagk;

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 5
    invoke-static {v2, v2}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzj:Lcom/google/android/gms/internal/ads/zzagh;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzj:Lcom/google/android/gms/internal/ads/zzagh;

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzd:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzd:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaip;->zze:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzaip;->zze:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzf:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzf:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzg:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzg:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzh:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzh:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzk:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzk:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzm:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzm:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzn:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzn:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzo:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzo:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzc:Lcom/google/android/gms/internal/ads/zzagk;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzj:Lcom/google/android/gms/internal/ads/zzagh;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagh;->hashCode()I

    move-result v1

    .line 2
    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzd:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaip;->zze:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzf:J

    iget-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzg:Z

    iget-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzh:Z

    iget-boolean v10, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzk:Z

    iget-wide v11, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzm:J

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v13, v2, v1

    xor-long/2addr v2, v13

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v2, v6, v1

    xor-long/2addr v2, v6

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v8

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v9

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v10

    mul-int/lit16 v0, v0, 0x3c1

    ushr-long v1, v11, v1

    xor-long/2addr v1, v11

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzn:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzo:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzagk;Ljava/lang/Object;JJJZZLcom/google/android/gms/internal/ads/zzagh;JJIIJ)Lcom/google/android/gms/internal/ads/zzaip;
    .locals 5

    move-object v0, p0

    move-object/from16 v1, p12

    move-object v2, p1

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Ljava/lang/Object;

    if-eqz p2, :cond_0

    move-object v2, p2

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaip;->zzr:Lcom/google/android/gms/internal/ads/zzagk;

    :goto_0
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaip;->zzc:Lcom/google/android/gms/internal/ads/zzagk;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaip;->zzd:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaip;->zze:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaip;->zzf:J

    move v2, p10

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaip;->zzg:Z

    move/from16 v2, p11

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaip;->zzh:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaip;->zzi:Z

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaip;->zzj:Lcom/google/android/gms/internal/ads/zzagh;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaip;->zzl:J

    move-wide/from16 v3, p15

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaip;->zzm:J

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaip;->zzn:I

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaip;->zzo:I

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaip;->zzk:Z

    return-object v0
.end method

.method public final zzb()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzi:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzj:Lcom/google/android/gms/internal/ads/zzagh;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzj:Lcom/google/android/gms/internal/ads/zzagh;

    if-eqz v0, :cond_2

    return v3

    :cond_2
    return v2
.end method
