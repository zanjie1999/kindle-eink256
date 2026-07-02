.class final Lcom/google/android/gms/internal/ads/zzeho;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrz;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzezz;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfac;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzehp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzehp;JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzfac;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeho;->zze:Lcom/google/android/gms/internal/ads/zzehp;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzeho;->zza:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeho;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeho;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeho;->zzd:Lcom/google/android/gms/internal/ads/zzfac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeho;->zze:Lcom/google/android/gms/internal/ads/zzehp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Lcom/google/android/gms/internal/ads/zzehp;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzeho;->zza:J

    sub-long/2addr v0, v2

    .line 2
    instance-of v2, p1, Ljava/util/concurrent/TimeoutException;

    const/4 v3, 0x6

    const/4 v11, 0x3

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 3
    :cond_0
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzehe;

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 4
    :cond_1
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    .line 5
    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzfaw;

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    goto :goto_0

    .line 6
    :cond_3
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzdym;

    if-eqz v2, :cond_4

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfbm;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbcz;->zza:I

    if-ne v2, v11, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    .line 2
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeho;->zze:Lcom/google/android/gms/internal/ads/zzehp;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeho;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeho;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    .line 8
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzezz;->zzac:Ljava/lang/String;

    move v6, v2

    move-wide v7, v0

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Lcom/google/android/gms/internal/ads/zzehp;Ljava/lang/String;IJLjava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeho;->zze:Lcom/google/android/gms/internal/ads/zzehp;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Lcom/google/android/gms/internal/ads/zzehp;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeho;->zze:Lcom/google/android/gms/internal/ads/zzehp;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Lcom/google/android/gms/internal/ads/zzehp;)Lcom/google/android/gms/internal/ads/zzehq;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeho;->zzd:Lcom/google/android/gms/internal/ads/zzfac;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzeho;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    .line 9
    instance-of v3, p1, Lcom/google/android/gms/internal/ads/zzeeg;

    if-eqz v3, :cond_5

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeeg;

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    move-object v8, v3

    move v7, v2

    move-wide v9, v0

    .line 10
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzehq;->zza(Lcom/google/android/gms/internal/ads/zzfac;Lcom/google/android/gms/internal/ads/zzezz;ILcom/google/android/gms/internal/ads/zzeeg;J)V

    .line 11
    :cond_6
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbjl;->zzfX:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfbm;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object p1

    .line 14
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzbcz;->zza:I

    if-eq v2, v11, :cond_7

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbcz;->zzd:Lcom/google/android/gms/internal/ads/zzbcz;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbcz;->zzc:Ljava/lang/String;

    const-string v3, "com.google.android.gms.ads"

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeeg;

    const/16 v3, 0xd

    .line 16
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbcz;->zzd:Lcom/google/android/gms/internal/ads/zzbcz;

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzeeg;-><init>(ILcom/google/android/gms/internal/ads/zzbcz;)V

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfbm;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object p1

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeho;->zze:Lcom/google/android/gms/internal/ads/zzehp;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzehp;->zzd(Lcom/google/android/gms/internal/ads/zzehp;)Lcom/google/android/gms/internal/ads/zzeeh;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeho;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    .line 18
    invoke-virtual {v2, v3, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeeh;->zzc(Lcom/google/android/gms/internal/ads/zzezz;JLcom/google/android/gms/internal/ads/zzbcz;)V

    :cond_9
    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeho;->zze:Lcom/google/android/gms/internal/ads/zzehp;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Lcom/google/android/gms/internal/ads/zzehp;)Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzeho;->zza:J

    sub-long/2addr v0, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeho;->zze:Lcom/google/android/gms/internal/ads/zzehp;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeho;->zzb:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeho;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    .line 2
    iget-object v9, p1, Lcom/google/android/gms/internal/ads/zzezz;->zzac:Ljava/lang/String;

    const/4 v6, 0x0

    move-wide v7, v0

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzehp;->zzf(Lcom/google/android/gms/internal/ads/zzehp;Ljava/lang/String;IJLjava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeho;->zze:Lcom/google/android/gms/internal/ads/zzehp;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Lcom/google/android/gms/internal/ads/zzehp;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeho;->zze:Lcom/google/android/gms/internal/ads/zzehp;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Lcom/google/android/gms/internal/ads/zzehp;)Lcom/google/android/gms/internal/ads/zzehq;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeho;->zzd:Lcom/google/android/gms/internal/ads/zzfac;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzeho;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v9, v0

    .line 3
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzehq;->zza(Lcom/google/android/gms/internal/ads/zzfac;Lcom/google/android/gms/internal/ads/zzezz;ILcom/google/android/gms/internal/ads/zzeeg;J)V

    .line 4
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzfX:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeho;->zze:Lcom/google/android/gms/internal/ads/zzehp;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzehp;->zzd(Lcom/google/android/gms/internal/ads/zzehp;)Lcom/google/android/gms/internal/ads/zzeeh;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeho;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzeeh;->zzc(Lcom/google/android/gms/internal/ads/zzezz;JLcom/google/android/gms/internal/ads/zzbcz;)V

    :cond_1
    return-void
.end method
