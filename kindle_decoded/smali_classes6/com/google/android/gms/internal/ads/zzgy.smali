.class public final Lcom/google/android/gms/internal/ads/zzgy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhe;
.implements Lcom/google/android/gms/internal/ads/zzhd;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzhf;

.field private final zzb:J

.field private zzc:Lcom/google/android/gms/internal/ads/zzhh;

.field private zzd:Lcom/google/android/gms/internal/ads/zzhe;

.field private zze:Lcom/google/android/gms/internal/ads/zzhd;

.field private zzf:J

.field private final zzg:Lcom/google/android/gms/internal/ads/zzko;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzko;J[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgy;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzg:Lcom/google/android/gms/internal/ads/zzko;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzb:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzf:J

    return-void
.end method

.method private final zzv(J)J
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzf:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzb:J

    return-wide v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhd;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgy;->zze:Lcom/google/android/gms/internal/ads/zzhd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzd:Lcom/google/android/gms/internal/ads/zzhe;

    if-eqz p1, :cond_0

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzb:J

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzgy;->zzv(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzhe;->zzb(Lcom/google/android/gms/internal/ads/zzhd;J)V

    :cond_0
    return-void
.end method

.method public final zzc()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzd:Lcom/google/android/gms/internal/ads/zzhe;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhe;->zzc()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzc:Lcom/google/android/gms/internal/ads/zzhh;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhh;->zzu()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 3
    throw v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzs;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzd:Lcom/google/android/gms/internal/ads/zzhe;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhe;->zzd()Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v0

    return-object v0
.end method

.method public final zze(JZ)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzd:Lcom/google/android/gms/internal/ads/zzhe;

    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzhe;->zze(JZ)V

    return-void
.end method

.method public final zzf(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzd:Lcom/google/android/gms/internal/ads/zzhe;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhe;->zzf(J)V

    return-void
.end method

.method public final zzg()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzd:Lcom/google/android/gms/internal/ads/zzhe;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhe;->zzg()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzh()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzd:Lcom/google/android/gms/internal/ads/zzhe;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhe;->zzh()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzi(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzd:Lcom/google/android/gms/internal/ads/zzhe;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhe;->zzi(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzj(JLcom/google/android/gms/internal/ads/zzahz;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzd:Lcom/google/android/gms/internal/ads/zzhe;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhe;->zzj(JLcom/google/android/gms/internal/ads/zzahz;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzk()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzd:Lcom/google/android/gms/internal/ads/zzhe;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhe;->zzk()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzd:Lcom/google/android/gms/internal/ads/zzhe;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhe;->zzl(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzm()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzd:Lcom/google/android/gms/internal/ads/zzhe;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhe;->zzm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzhe;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgy;->zze:Lcom/google/android/gms/internal/ads/zzhd;

    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzhd;->zzn(Lcom/google/android/gms/internal/ads/zzhe;)V

    return-void
.end method

.method public final zzo(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzf:J

    return-void
.end method

.method public final bridge synthetic zzp(Lcom/google/android/gms/internal/ads/zziw;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhe;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgy;->zze:Lcom/google/android/gms/internal/ads/zzhd;

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zziv;->zzp(Lcom/google/android/gms/internal/ads/zziw;)V

    return-void
.end method

.method public final zzq([Lcom/google/android/gms/internal/ads/zzjg;[Z[Lcom/google/android/gms/internal/ads/zziu;[ZJ)J
    .locals 15

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzgy;->zzf:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzgy;->zzb:J

    cmp-long v7, p5, v5

    if-nez v7, :cond_0

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzgy;->zzf:J

    move-wide v13, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p5

    :goto_0
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzgy;->zzd:Lcom/google/android/gms/internal/ads/zzhe;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 2
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzhe;->zzq([Lcom/google/android/gms/internal/ads/zzjg;[Z[Lcom/google/android/gms/internal/ads/zziu;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public final zzr()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzf:J

    return-wide v0
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzhh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzc:Lcom/google/android/gms/internal/ads/zzhh;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzc:Lcom/google/android/gms/internal/ads/zzhh;

    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzhf;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzb:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgy;->zzv(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzc:Lcom/google/android/gms/internal/ads/zzhh;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzg:Lcom/google/android/gms/internal/ads/zzko;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzhh;->zzC(Lcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzko;J)Lcom/google/android/gms/internal/ads/zzhe;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzd:Lcom/google/android/gms/internal/ads/zzhe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgy;->zze:Lcom/google/android/gms/internal/ads/zzhd;

    if-eqz v2, :cond_0

    .line 2
    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzhe;->zzb(Lcom/google/android/gms/internal/ads/zzhd;J)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final zzu()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzd:Lcom/google/android/gms/internal/ads/zzhe;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgy;->zzc:Lcom/google/android/gms/internal/ads/zzhh;

    if-eqz v1, :cond_0

    .line 1
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzhh;->zzA(Lcom/google/android/gms/internal/ads/zzhe;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0

    :cond_1
    return-void
.end method
