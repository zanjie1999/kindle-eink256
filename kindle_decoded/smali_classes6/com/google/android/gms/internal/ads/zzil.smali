.class public final Lcom/google/android/gms/internal/ads/zzil;
.super Lcom/google/android/gms/internal/ads/zzgi;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzic;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzagk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzagj;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzai;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhw;

.field private final zze:Lcom/google/android/gms/internal/ads/zzff;

.field private final zzf:I

.field private zzg:Z

.field private zzh:J

.field private zzi:Z

.field private zzj:Z

.field private zzk:Lcom/google/android/gms/internal/ads/zzay;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzku;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzagk;Lcom/google/android/gms/internal/ads/zzai;Lcom/google/android/gms/internal/ads/zzhw;Lcom/google/android/gms/internal/ads/zzff;Lcom/google/android/gms/internal/ads/zzku;ILcom/google/android/gms/internal/ads/zzik;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgi;-><init>()V

    iget-object p7, p1, Lcom/google/android/gms/internal/ads/zzagk;->zzc:Lcom/google/android/gms/internal/ads/zzagj;

    if-eqz p7, :cond_0

    .line 2
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzil;->zzb:Lcom/google/android/gms/internal/ads/zzagj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzil;->zza:Lcom/google/android/gms/internal/ads/zzagk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzil;->zzc:Lcom/google/android/gms/internal/ads/zzai;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzil;->zzd:Lcom/google/android/gms/internal/ads/zzhw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzil;->zze:Lcom/google/android/gms/internal/ads/zzff;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzil;->zzl:Lcom/google/android/gms/internal/ads/zzku;

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzil;->zzf:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzil;->zzg:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzil;->zzh:J

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private final zzv()V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    new-instance v10, Lcom/google/android/gms/internal/ads/zziy;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzil;->zzh:J

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzil;->zzi:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzj:Z

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzil;->zza:Lcom/google/android/gms/internal/ads/zzagk;

    if-eqz v1, :cond_0

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzagk;->zzd:Lcom/google/android/gms/internal/ads/zzagh;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object/from16 v21, v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v20, v14

    move-wide v14, v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v1, v10

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v16, v11

    move-wide/from16 v10, v22

    .line 2
    invoke-direct/range {v1 .. v21}, Lcom/google/android/gms/internal/ads/zziy;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzagk;Lcom/google/android/gms/internal/ads/zzagh;)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzg:Z

    if-eqz v1, :cond_1

    new-instance v10, Lcom/google/android/gms/internal/ads/zzih;

    move-object/from16 v1, v24

    .line 3
    invoke-direct {v10, v0, v1}, Lcom/google/android/gms/internal/ads/zzih;-><init>(Lcom/google/android/gms/internal/ads/zzil;Lcom/google/android/gms/internal/ads/zzaiq;)V

    goto :goto_1

    :cond_1
    move-object/from16 v1, v24

    move-object v10, v1

    .line 4
    :goto_1
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzgi;->zze(Lcom/google/android/gms/internal/ads/zzaiq;)V

    return-void
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/internal/ads/zzhe;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzig;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzig;->zzu()V

    return-void
.end method

.method public final zzC(Lcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzko;J)Lcom/google/android/gms/internal/ads/zzhe;
    .locals 15

    move-object v13, p0

    .line 1
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzil;->zzc:Lcom/google/android/gms/internal/ads/zzai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzai;->zza()Lcom/google/android/gms/internal/ads/zzaj;

    move-result-object v2

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzil;->zzk:Lcom/google/android/gms/internal/ads/zzay;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzaj;->zza(Lcom/google/android/gms/internal/ads/zzay;)V

    .line 3
    :cond_0
    new-instance v14, Lcom/google/android/gms/internal/ads/zzig;

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzil;->zzb:Lcom/google/android/gms/internal/ads/zzagj;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagj;->zza:Landroid/net/Uri;

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzil;->zzd:Lcom/google/android/gms/internal/ads/zzhw;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhw;->zza()Lcom/google/android/gms/internal/ads/zzhx;

    move-result-object v3

    iget-object v4, v13, Lcom/google/android/gms/internal/ads/zzil;->zze:Lcom/google/android/gms/internal/ads/zzff;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgi;->zzh(Lcom/google/android/gms/internal/ads/zzhf;)Lcom/google/android/gms/internal/ads/zzfa;

    move-result-object v5

    iget-object v6, v13, Lcom/google/android/gms/internal/ads/zzil;->zzl:Lcom/google/android/gms/internal/ads/zzku;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgi;->zzf(Lcom/google/android/gms/internal/ads/zzhf;)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v7

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzil;->zzb:Lcom/google/android/gms/internal/ads/zzagj;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzagj;->zzf:Ljava/lang/String;

    const/4 v10, 0x0

    iget v11, v13, Lcom/google/android/gms/internal/ads/zzil;->zzf:I

    const/4 v12, 0x0

    move-object v0, v14

    move-object v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/zzig;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzhx;Lcom/google/android/gms/internal/ads/zzff;Lcom/google/android/gms/internal/ads/zzfa;Lcom/google/android/gms/internal/ads/zzku;Lcom/google/android/gms/internal/ads/zzho;Lcom/google/android/gms/internal/ads/zzic;Lcom/google/android/gms/internal/ads/zzko;Ljava/lang/String;I[B)V

    return-object v14
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzay;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzil;->zzk:Lcom/google/android/gms/internal/ads/zzay;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzil;->zzv()V

    return-void
.end method

.method public final zzb(JZZ)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzil;->zzh:J

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzg:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzh:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzi:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzj:Z

    if-ne v0, p4, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzil;->zzh:J

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzil;->zzi:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzil;->zzj:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzil;->zzg:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzil;->zzv()V

    return-void
.end method

.method protected final zzd()V
    .locals 0

    return-void
.end method

.method public final zzu()V
    .locals 0

    return-void
.end method

.method public final zzz()Lcom/google/android/gms/internal/ads/zzagk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zza:Lcom/google/android/gms/internal/ads/zzagk;

    return-object v0
.end method
