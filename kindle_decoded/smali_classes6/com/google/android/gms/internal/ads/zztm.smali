.class public final Lcom/google/android/gms/internal/ads/zztm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzuc;

.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/gms/internal/ads/zzox;

.field private zzd:Lcom/google/android/gms/internal/ads/zztl;

.field private zze:Z

.field private final zzf:[Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zztq;

.field private final zzh:Lcom/google/android/gms/internal/ads/zztq;

.field private final zzi:Lcom/google/android/gms/internal/ads/zztq;

.field private final zzj:Lcom/google/android/gms/internal/ads/zztq;

.field private final zzk:Lcom/google/android/gms/internal/ads/zztq;

.field private zzl:J

.field private zzm:J

.field private final zzn:Lcom/google/android/gms/internal/ads/zzamf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzuc;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztm;->zza:Lcom/google/android/gms/internal/ads/zzuc;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzf:[Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zztq;

    const/16 v0, 0x80

    const/16 v1, 0x20

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zztq;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzg:Lcom/google/android/gms/internal/ads/zztq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zztq;

    const/16 v1, 0x21

    .line 2
    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zztq;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzh:Lcom/google/android/gms/internal/ads/zztq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zztq;

    const/16 v1, 0x22

    .line 3
    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zztq;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzi:Lcom/google/android/gms/internal/ads/zztq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zztq;

    const/16 v1, 0x27

    .line 4
    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zztq;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzj:Lcom/google/android/gms/internal/ads/zztq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zztq;

    const/16 v1, 0x28

    .line 5
    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zztq;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzk:Lcom/google/android/gms/internal/ads/zztq;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzm:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    .line 6
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzn:Lcom/google/android/gms/internal/ads/zzamf;

    return-void
.end method

.method private final zzf([BII)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzd:Lcom/google/android/gms/internal/ads/zztl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztl;->zzc([BII)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zze:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzg:Lcom/google/android/gms/internal/ads/zztq;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztq;->zzd([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzh:Lcom/google/android/gms/internal/ads/zztq;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztq;->zzd([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzi:Lcom/google/android/gms/internal/ads/zztq;

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztq;->zzd([BII)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzj:Lcom/google/android/gms/internal/ads/zztq;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztq;->zzd([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzk:Lcom/google/android/gms/internal/ads/zztq;

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztq;->zzd([BII)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzl:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzm:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzf:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalw;->zze([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzg:Lcom/google/android/gms/internal/ads/zztq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztq;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzh:Lcom/google/android/gms/internal/ads/zztq;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztq;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzi:Lcom/google/android/gms/internal/ads/zztq;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztq;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzj:Lcom/google/android/gms/internal/ads/zztq;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztq;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzk:Lcom/google/android/gms/internal/ads/zztq;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztq;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzd:Lcom/google/android/gms/internal/ads/zztl;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztl;->zza()V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzb()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzc:Lcom/google/android/gms/internal/ads/zzox;

    new-instance v1, Lcom/google/android/gms/internal/ads/zztl;

    .line 4
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zztl;-><init>(Lcom/google/android/gms/internal/ads/zzox;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzd:Lcom/google/android/gms/internal/ads/zztl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zza:Lcom/google/android/gms/internal/ads/zzuc;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzuc;->zza(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V

    return-void
.end method

.method public final zzc(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzm:J

    :cond_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzamf;)V
    .locals 29

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztm;->zzc:Lcom/google/android/gms/internal/ads/zzox;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v1

    if-lez v1, :cond_29

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zztm;->zzl:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zztm;->zzl:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zztm;->zzc:Lcom/google/android/gms/internal/ads/zzox;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v5

    move-object/from16 v6, p1

    .line 3
    invoke-static {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zztm;->zzf:[Z

    .line 4
    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzalw;->zzd([BII[Z)I

    move-result v4

    if-eq v4, v2, :cond_28

    add-int/lit8 v5, v4, 0x3

    .line 5
    aget-byte v7, v3, v5

    and-int/lit8 v7, v7, 0x7e

    const/4 v8, 0x1

    shr-int/2addr v7, v8

    sub-int v9, v4, v1

    if-lez v9, :cond_1

    .line 6
    invoke-direct {v0, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zztm;->zzf([BII)V

    :cond_1
    sub-int v12, v2, v4

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zztm;->zzl:J

    int-to-long v13, v12

    sub-long/2addr v10, v13

    if-gez v9, :cond_2

    neg-int v4, v9

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zztm;->zzm:J

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zztm;->zzd:Lcom/google/android/gms/internal/ads/zztl;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zztm;->zze:Z

    .line 7
    invoke-virtual {v9, v10, v11, v12, v15}, Lcom/google/android/gms/internal/ads/zztl;->zzd(JIZ)V

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zztm;->zze:Z

    if-nez v9, :cond_24

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zztm;->zzg:Lcom/google/android/gms/internal/ads/zztq;

    .line 8
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zztq;->zze(I)Z

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zztm;->zzh:Lcom/google/android/gms/internal/ads/zztq;

    .line 9
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zztq;->zze(I)Z

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zztm;->zzi:Lcom/google/android/gms/internal/ads/zztq;

    .line 10
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zztq;->zze(I)Z

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zztm;->zzg:Lcom/google/android/gms/internal/ads/zztq;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zztq;->zzb()Z

    move-result v9

    if-eqz v9, :cond_24

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zztm;->zzh:Lcom/google/android/gms/internal/ads/zztq;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zztq;->zzb()Z

    move-result v9

    if-eqz v9, :cond_24

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zztm;->zzi:Lcom/google/android/gms/internal/ads/zztq;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zztq;->zzb()Z

    move-result v9

    if-eqz v9, :cond_24

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zztm;->zzc:Lcom/google/android/gms/internal/ads/zzox;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zztm;->zzb:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zztm;->zzg:Lcom/google/android/gms/internal/ads/zztq;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztm;->zzh:Lcom/google/android/gms/internal/ads/zztq;

    move/from16 v17, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zztm;->zzi:Lcom/google/android/gms/internal/ads/zztq;

    iget v6, v8, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    move/from16 v18, v2

    iget v2, v1, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    add-int/2addr v2, v6

    move-object/from16 v19, v3

    iget v3, v5, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    add-int/2addr v2, v3

    .line 11
    new-array v2, v2, [B

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    move/from16 v20, v7

    const/4 v7, 0x0

    .line 12
    invoke-static {v3, v7, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    iget v6, v8, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    move/from16 v21, v12

    iget v12, v1, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    .line 13
    invoke-static {v3, v7, v2, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    iget v6, v8, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    add-int/2addr v6, v8

    iget v5, v5, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    .line 14
    invoke-static {v3, v7, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzamg;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    iget v6, v1, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    .line 15
    invoke-direct {v3, v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzamg;-><init>([BII)V

    const/16 v5, 0x2c

    .line 16
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzamg;->zzc(I)V

    const/4 v5, 0x3

    .line 17
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzamg;->zze(I)I

    move-result v7

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzb()V

    const/16 v6, 0x58

    .line 19
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzamg;->zzc(I)V

    const/16 v6, 0x8

    .line 20
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzamg;->zzc(I)V

    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v8, v7, :cond_5

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzd()Z

    move-result v22

    if-eqz v22, :cond_3

    add-int/lit8 v12, v12, 0x59

    .line 22
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzd()Z

    move-result v22

    if-eqz v22, :cond_4

    add-int/lit8 v12, v12, 0x8

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 23
    :cond_5
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzamg;->zzc(I)V

    if-lez v7, :cond_6

    rsub-int/lit8 v8, v7, 0x8

    add-int/2addr v8, v8

    .line 24
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzamg;->zzc(I)V

    .line 25
    :cond_6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    move-result v8

    if-ne v8, v5, :cond_7

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzb()V

    const/4 v8, 0x3

    .line 28
    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    move-result v12

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    move-result v22

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzd()Z

    move-result v23

    const/4 v6, 0x2

    if-eqz v23, :cond_b

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    move-result v23

    .line 32
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    move-result v24

    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    move-result v25

    .line 34
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    move-result v26

    const/4 v5, 0x1

    if-eq v8, v5, :cond_9

    if-ne v8, v6, :cond_8

    const/4 v8, 0x2

    goto :goto_3

    :cond_8
    const/16 v27, 0x1

    goto :goto_4

    :cond_9
    :goto_3
    const/16 v27, 0x2

    :goto_4
    if-ne v8, v5, :cond_a

    const/4 v5, 0x2

    goto :goto_5

    :cond_a
    const/4 v5, 0x1

    :goto_5
    add-int v23, v23, v24

    mul-int v27, v27, v23

    sub-int v12, v12, v27

    add-int v25, v25, v26

    mul-int v5, v5, v25

    sub-int v22, v22, v5

    .line 35
    :cond_b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    .line 36
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    .line 37
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    move-result v5

    .line 38
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzd()Z

    move-result v8

    const/4 v6, 0x1

    if-eq v6, v8, :cond_c

    move v6, v7

    goto :goto_6

    :cond_c
    const/4 v6, 0x0

    :goto_6
    if-gt v6, v7, :cond_d

    .line 39
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    .line 40
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    .line 41
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 42
    :cond_d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    .line 43
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    .line 44
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    .line 45
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    .line 46
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzd()Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_13

    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzd()Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v7, :cond_13

    const/4 v8, 0x0

    :goto_8
    const/4 v7, 0x6

    if-ge v8, v7, :cond_12

    .line 50
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzd()Z

    move-result v7

    if-nez v7, :cond_f

    .line 51
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    move-wide/from16 v27, v10

    :cond_e
    const/4 v7, 0x3

    goto :goto_a

    :cond_f
    const/16 v7, 0x40

    add-int v25, v6, v6

    const/16 v24, 0x4

    add-int/lit8 v25, v25, 0x4

    move-wide/from16 v27, v10

    const/4 v10, 0x1

    shl-int v11, v10, v25

    .line 52
    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-le v6, v10, :cond_10

    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzg()I

    :cond_10
    const/4 v10, 0x0

    :goto_9
    if-ge v10, v7, :cond_e

    .line 54
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzg()I

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :goto_a
    if-ne v6, v7, :cond_11

    const/4 v10, 0x3

    goto :goto_b

    :cond_11
    const/4 v10, 0x1

    :goto_b
    add-int/2addr v8, v10

    move-wide/from16 v10, v27

    goto :goto_8

    :cond_12
    move-wide/from16 v27, v10

    const/4 v7, 0x3

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x4

    goto :goto_7

    :cond_13
    move-wide/from16 v27, v10

    const/4 v6, 0x2

    .line 55
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzamg;->zzc(I)V

    .line 56
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzd()Z

    move-result v6

    if-eqz v6, :cond_14

    const/16 v6, 0x8

    .line 57
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzamg;->zzc(I)V

    .line 58
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    .line 59
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    .line 60
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzb()V

    .line 61
    :cond_14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_c
    if-ge v7, v6, :cond_1b

    if-eqz v7, :cond_15

    .line 62
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzd()Z

    move-result v8

    :cond_15
    if-eqz v8, :cond_18

    .line 63
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzb()V

    .line 64
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    const/4 v11, 0x0

    :goto_d
    if-gt v11, v10, :cond_17

    .line 65
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzd()Z

    move-result v25

    if-eqz v25, :cond_16

    .line 66
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzb()V

    :cond_16
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_17
    move/from16 v26, v6

    goto :goto_10

    .line 67
    :cond_18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    move-result v10

    .line 68
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    move-result v11

    add-int v25, v10, v11

    move/from16 v26, v6

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v10, :cond_19

    .line 69
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    .line 70
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzb()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_19
    const/4 v6, 0x0

    :goto_f
    if-ge v6, v11, :cond_1a

    .line 71
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    .line 72
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzb()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_1a
    move/from16 v10, v25

    :goto_10
    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v26

    goto :goto_c

    .line 73
    :cond_1b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzd()Z

    move-result v6

    if-eqz v6, :cond_1c

    const/4 v7, 0x0

    .line 74
    :goto_11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    move-result v6

    if-ge v7, v6, :cond_1c

    const/4 v6, 0x5

    add-int/lit8 v8, v5, 0x5

    .line 75
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzamg;->zzc(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_1c
    const/4 v5, 0x2

    .line 76
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzamg;->zzc(I)V

    .line 77
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzd()Z

    move-result v5

    const/16 v6, 0x18

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v5, :cond_23

    .line 78
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzd()Z

    move-result v5

    if-eqz v5, :cond_1f

    const/16 v5, 0x8

    .line 79
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzamg;->zze(I)I

    move-result v5

    const/16 v8, 0xff

    if-ne v5, v8, :cond_1d

    const/16 v5, 0x10

    .line 80
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzamg;->zze(I)I

    move-result v8

    .line 81
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzamg;->zze(I)I

    move-result v5

    if-eqz v8, :cond_1f

    if-eqz v5, :cond_1f

    int-to-float v7, v8

    int-to-float v5, v5

    div-float/2addr v7, v5

    goto :goto_12

    :cond_1d
    const/16 v8, 0x11

    if-ge v5, v8, :cond_1e

    .line 124
    sget-object v7, Lcom/google/android/gms/internal/ads/zzalw;->zzb:[F

    .line 82
    aget v5, v7, v5

    move v7, v5

    goto :goto_12

    :cond_1e
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v10, 0x2e

    .line 83
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "H265Reader"

    .line 84
    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1f
    :goto_12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzd()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 86
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzb()V

    .line 87
    :cond_20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzd()Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v5, 0x4

    .line 88
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzamg;->zzc(I)V

    .line 89
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzd()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 90
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzamg;->zzc(I)V

    .line 91
    :cond_21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzd()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 92
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    .line 93
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzf()I

    .line 94
    :cond_22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzb()V

    .line 95
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzd()Z

    move-result v5

    if-eqz v5, :cond_23

    add-int v22, v22, v22

    :cond_23
    move/from16 v5, v22

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    const/4 v10, 0x0

    .line 96
    invoke-virtual {v3, v8, v10, v1}, Lcom/google/android/gms/internal/ads/zzamg;->zza([BII)V

    .line 97
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzamg;->zzc(I)V

    .line 98
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzakv;->zzb(Lcom/google/android/gms/internal/ads/zzamg;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaft;

    .line 99
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 100
    invoke-virtual {v3, v15}, Lcom/google/android/gms/internal/ads/zzaft;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    const-string v6, "video/hevc"

    .line 101
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 102
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 103
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzaft;->zzS(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 104
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzT(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 105
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzaft;->zzW(F)Lcom/google/android/gms/internal/ads/zzaft;

    .line 106
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 107
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v1

    .line 108
    invoke-interface {v9, v1}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zztm;->zze:Z

    goto :goto_13

    :cond_24
    move/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v17, v5

    move/from16 v20, v7

    move-wide/from16 v27, v10

    move/from16 v21, v12

    :goto_13
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztm;->zzj:Lcom/google/android/gms/internal/ads/zztq;

    .line 109
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zztq;->zze(I)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztm;->zzj:Lcom/google/android/gms/internal/ads/zztq;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    .line 110
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzalw;->zza([BI)I

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zztm;->zzn:Lcom/google/android/gms/internal/ads/zzamf;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zztm;->zzj:Lcom/google/android/gms/internal/ads/zztq;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    .line 111
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzb([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztm;->zzn:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v2, 0x5

    .line 112
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztm;->zza:Lcom/google/android/gms/internal/ads/zzuc;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zztm;->zzn:Lcom/google/android/gms/internal/ads/zzamf;

    .line 113
    invoke-virtual {v1, v13, v14, v2}, Lcom/google/android/gms/internal/ads/zzuc;->zzb(JLcom/google/android/gms/internal/ads/zzamf;)V

    :cond_25
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztm;->zzk:Lcom/google/android/gms/internal/ads/zztq;

    .line 114
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zztq;->zze(I)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztm;->zzk:Lcom/google/android/gms/internal/ads/zztq;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    .line 115
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzalw;->zza([BI)I

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zztm;->zzn:Lcom/google/android/gms/internal/ads/zzamf;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zztm;->zzk:Lcom/google/android/gms/internal/ads/zztq;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    .line 116
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzb([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztm;->zzn:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v2, 0x5

    .line 117
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztm;->zza:Lcom/google/android/gms/internal/ads/zzuc;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zztm;->zzn:Lcom/google/android/gms/internal/ads/zzamf;

    .line 118
    invoke-virtual {v1, v13, v14, v2}, Lcom/google/android/gms/internal/ads/zzuc;->zzb(JLcom/google/android/gms/internal/ads/zzamf;)V

    :cond_26
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zztm;->zzm:J

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zztm;->zzd:Lcom/google/android/gms/internal/ads/zztl;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zztm;->zze:Z

    move-wide/from16 v10, v27

    move/from16 v12, v21

    move/from16 v13, v20

    move/from16 v16, v1

    .line 119
    invoke-virtual/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zztl;->zzb(JIIJZ)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zztm;->zze:Z

    if-nez v1, :cond_27

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztm;->zzg:Lcom/google/android/gms/internal/ads/zztq;

    move/from16 v2, v20

    .line 120
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zztq;->zzc(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztm;->zzh:Lcom/google/android/gms/internal/ads/zztq;

    .line 121
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zztq;->zzc(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztm;->zzi:Lcom/google/android/gms/internal/ads/zztq;

    .line 122
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zztq;->zzc(I)V

    goto :goto_14

    :cond_27
    move/from16 v2, v20

    :goto_14
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztm;->zzj:Lcom/google/android/gms/internal/ads/zztq;

    .line 123
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zztq;->zzc(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztm;->zzk:Lcom/google/android/gms/internal/ads/zztq;

    .line 124
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zztq;->zzc(I)V

    move-object/from16 v6, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    goto/16 :goto_0

    .line 125
    :cond_28
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zztm;->zzf([BII)V

    :cond_29
    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method
