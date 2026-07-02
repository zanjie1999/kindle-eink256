.class public final Lcom/google/android/gms/internal/ads/zzer;
.super Lcom/google/android/gms/internal/ads/zzfq;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalp;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdp;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdw;

.field private zze:I

.field private zzf:Z

.field private zzg:Lcom/google/android/gms/internal/ads/zzafv;

.field private zzh:J

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z

.field private zzl:Lcom/google/android/gms/internal/ads/zzahu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfm;Lcom/google/android/gms/internal/ads/zzfs;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzdq;Lcom/google/android/gms/internal/ads/zzdw;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v4, 0x0

    const v5, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfq;-><init>(ILcom/google/android/gms/internal/ads/zzfm;Lcom/google/android/gms/internal/ads/zzfs;ZF)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzb:Landroid/content/Context;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdp;

    .line 3
    invoke-direct {p1, p5, p6}, Lcom/google/android/gms/internal/ads/zzdp;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzdq;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzc:Lcom/google/android/gms/internal/ads/zzdp;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzep;

    const/4 p2, 0x0

    .line 4
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzep;-><init>(Lcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzeq;)V

    invoke-interface {p7, p1}, Lcom/google/android/gms/internal/ads/zzdw;->zza(Lcom/google/android/gms/internal/ads/zzdt;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzdp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzc:Lcom/google/android/gms/internal/ads/zzdp;

    return-object p0
.end method

.method private final zzaa(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfo;->zza:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    sget p1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzb:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzamq;->zzZ(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 3
    :cond_1
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzm:I

    return p1
.end method

.method private final zzab()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzw()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdw;->zzd(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzer;->zzj:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzer;->zzh:J

    .line 2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzh:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzj:Z

    :cond_1
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzahu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzl:Lcom/google/android/gms/internal/ads/zzahu;

    return-object p0
.end method


# virtual methods
.method public final zzA()Lcom/google/android/gms/internal/ads/zzahf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdw;->zzm()Lcom/google/android/gms/internal/ads/zzahf;

    move-result-object v0

    return-object v0
.end method

.method protected final zzB(Lcom/google/android/gms/internal/ads/zzaf;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzi:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzaf;->zzd:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzer;->zzh:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzaf;->zzd:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzh:J

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzi:Z

    :cond_1
    return-void
.end method

.method protected final zzC()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdw;->zzg()V

    return-void
.end method

.method protected final zzD()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdw;->zzi()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdv; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdv;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzdv;->zza:Z

    const/16 v3, 0x138a

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadv;->zzaw(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzafv;ZI)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object v0

    throw v0
.end method

.method public final zzE(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return-void

    .line 1
    :pswitch_0
    check-cast p2, Lcom/google/android/gms/internal/ads/zzahu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzer;->zzl:Lcom/google/android/gms/internal/ads/zzahu;

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    .line 2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdw;->zzp(I)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    .line 3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdw;->zzn(Z)V

    return-void

    .line 4
    :cond_0
    check-cast p2, Lcom/google/android/gms/internal/ads/zzh;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    .line 5
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdw;->zzq(Lcom/google/android/gms/internal/ads/zzh;)V

    return-void

    .line 6
    :cond_1
    check-cast p2, Lcom/google/android/gms/internal/ads/zzg;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    .line 7
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdw;->zzo(Lcom/google/android/gms/internal/ads/zzg;)V

    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdw;->zzr(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final zzF(JJLcom/google/android/gms/internal/ads/zzgh;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzafv;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p6, :cond_6

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzer;->zzg:Lcom/google/android/gms/internal/ads/zzafv;

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    and-int/lit8 p2, p8, 0x2

    if-eqz p2, :cond_1

    if-eqz p5, :cond_0

    .line 9
    invoke-virtual {p5, p7, p4}, Lcom/google/android/gms/internal/ads/zzgh;->zzh(IZ)V

    return p3

    .line 10
    :cond_0
    throw p1

    :cond_1
    if-eqz p12, :cond_3

    if-eqz p5, :cond_2

    .line 1
    invoke-virtual {p5, p7, p4}, Lcom/google/android/gms/internal/ads/zzgh;->zzh(IZ)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    .line 2
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzaz;->zzf:I

    add-int/2addr p2, p9

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaz;->zzf:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdw;->zzg()V

    return p3

    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    .line 4
    invoke-interface {p1, p6, p10, p11, p9}, Lcom/google/android/gms/internal/ads/zzdw;->zzh(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzds; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzdv; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    if-eqz p5, :cond_4

    .line 7
    invoke-virtual {p5, p7, p4}, Lcom/google/android/gms/internal/ads/zzgh;->zzh(IZ)V

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    .line 8
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzaz;->zze:I

    add-int/2addr p2, p9

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaz;->zze:I

    return p3

    :cond_5
    return p4

    :catch_0
    move-exception p1

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzdv;->zza:Z

    const/16 p3, 0x138a

    .line 5
    invoke-virtual {p0, p1, p14, p2, p3}, Lcom/google/android/gms/internal/ads/zzadv;->zzaw(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzafv;ZI)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 11
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzds;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    const/16 p3, 0x1389

    .line 6
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/google/android/gms/internal/ads/zzadv;->zzaw(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzafv;ZI)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object p1

    throw p1

    .line 11
    :cond_6
    throw p1
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method protected final zzd(Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfy;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalt;->zza(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzE:I

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfq;->zzY(Lcom/google/android/gms/internal/ads/zzafv;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    .line 5
    invoke-interface {v4, p2}, Lcom/google/android/gms/internal/ads/zzdw;->zzb(Lcom/google/android/gms/internal/ads/zzafv;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_2

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzge;->zza()Lcom/google/android/gms/internal/ads/zzfo;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    or-int/lit8 p1, v0, 0xc

    return p1

    .line 7
    :cond_3
    :goto_1
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    const-string v4, "audio/raw"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzdw;->zzb(Lcom/google/android/gms/internal/ads/zzafv;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    return v4

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    .line 8
    iget v5, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    iget v6, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    const/4 v7, 0x2

    .line 9
    invoke-static {v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzamq;->zzN(III)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v5

    .line 8
    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/ads/zzdw;->zzb(Lcom/google/android/gms/internal/ads/zzafv;)Z

    move-result v2

    if-nez v2, :cond_6

    return v4

    .line 10
    :cond_6
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzer;->zze(Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzafv;Z)Ljava/util/List;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    return v4

    :cond_7
    if-nez v3, :cond_8

    return v7

    .line 12
    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfo;

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfo;->zzc(Lcom/google/android/gms/internal/ads/zzafv;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_9

    .line 14
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(Lcom/google/android/gms/internal/ads/zzafv;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 v2, 0x10

    :cond_9
    if-eq v4, v1, :cond_a

    const/4 p1, 0x3

    goto :goto_3

    :cond_a
    const/4 p1, 0x4

    :goto_3
    or-int/2addr p1, v2

    or-int/2addr p1, v0

    return p1
.end method

.method protected final zze(Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzafv;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfs;",
            "Lcom/google/android/gms/internal/ads/zzafv;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfy;
        }
    .end annotation

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    .line 3
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzdw;->zzb(Lcom/google/android/gms/internal/ads/zzafv;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzge;->zza()Lcom/google/android/gms/internal/ads/zzfo;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p3, 0x0

    .line 5
    invoke-static {p1, p3, p3}, Lcom/google/android/gms/internal/ads/zzge;->zzc(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzge;->zzd(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzafv;)Ljava/util/List;

    move-result-object p2

    const-string v0, "audio/eac3-joc"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "audio/eac3"

    .line 9
    invoke-static {p2, p3, p3}, Lcom/google/android/gms/internal/ads/zzge;->zzc(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p2

    .line 10
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p2, p1

    .line 11
    :cond_3
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected final zzf(Lcom/google/android/gms/internal/ads/zzafv;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdw;->zzb(Lcom/google/android/gms/internal/ads/zzafv;)Z

    move-result p1

    return p1
.end method

.method protected final zzg(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzfl;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzau()[Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object p3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzer;->zzaa(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result v0

    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 3
    aget-object v5, p3, v4

    .line 4
    invoke-virtual {p1, p2, v5}, Lcom/google/android/gms/internal/ads/zzfo;->zze(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzafv;)Lcom/google/android/gms/internal/ads/zzba;

    move-result-object v6

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzba;->zzd:I

    if-eqz v6, :cond_1

    .line 5
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzaa(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2
    :cond_2
    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zze:I

    .line 6
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzfo;->zza:Ljava/lang/String;

    .line 7
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    const-string v0, "OMX.SEC.aac.dec"

    .line 8
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    sget-object p3, Lcom/google/android/gms/internal/ads/zzamq;->zzc:Ljava/lang/String;

    const-string v0, "samsung"

    .line 9
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    sget-object p3, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v0, "zeroflte"

    .line 10
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    sget-object p3, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v0, "herolte"

    .line 11
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    sget-object p3, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v0, "heroqlte"

    .line 12
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_3
    const/4 p3, 0x1

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    :goto_2
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzer;->zzf:Z

    .line 13
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzfo;->zzc:Ljava/lang/String;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zze:I

    .line 14
    new-instance v4, Landroid/media/MediaFormat;

    invoke-direct {v4}, Landroid/media/MediaFormat;-><init>()V

    const-string v5, "mime"

    .line 15
    invoke-virtual {v4, v5, p3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget p3, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    const-string v5, "channel-count"

    invoke-virtual {v4, v5, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 17
    iget p3, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    const-string v5, "sample-rate"

    invoke-virtual {v4, v5, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 18
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzn:Ljava/util/List;

    invoke-static {v4, p3}, Lcom/google/android/gms/internal/ads/zzalq;->zza(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p3, "max-input-size"

    .line 19
    invoke-static {v4, p3, v0}, Lcom/google/android/gms/internal/ads/zzalq;->zzb(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    sget p3, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v0, 0x17

    if-lt p3, v0, :cond_6

    const-string p3, "priority"

    .line 20
    invoke-virtual {v4, p3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p3, p4, p3

    if-eqz p3, :cond_6

    sget p3, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-ne p3, v0, :cond_5

    sget-object p3, Lcom/google/android/gms/internal/ads/zzamq;->zzd:Ljava/lang/String;

    const-string v0, "ZTE B2017G"

    .line 21
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    sget-object p3, Lcom/google/android/gms/internal/ads/zzamq;->zzd:Ljava/lang/String;

    const-string v0, "AXON 7 mini"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    :cond_5
    const-string p3, "operating-rate"

    .line 22
    invoke-virtual {v4, p3, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_6
    sget p3, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 p4, 0x1c

    if-gt p3, p4, :cond_7

    .line 23
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    const-string p4, "audio/ac4"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    const-string p3, "ac4-is-sync"

    .line 24
    invoke-virtual {v4, p3, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_7
    sget p3, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-lt p3, v1, :cond_8

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    .line 25
    iget p4, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    const/4 v1, 0x4

    .line 26
    invoke-static {v1, p4, v0}, Lcom/google/android/gms/internal/ads/zzamq;->zzN(III)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object p4

    .line 27
    invoke-interface {p3, p4}, Lcom/google/android/gms/internal/ads/zzdw;->zzc(Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_8

    const-string p3, "pcm-encoding"

    .line 28
    invoke-virtual {v4, p3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 29
    :cond_8
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzfo;->zzb:Ljava/lang/String;

    const-string p4, "audio/raw"

    .line 30
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_9

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    .line 31
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    move-object p3, p2

    goto :goto_3

    :cond_9
    move-object p3, v0

    :goto_3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzer;->zzg:Lcom/google/android/gms/internal/ads/zzafv;

    invoke-static {p1, v4, p2, v0}, Lcom/google/android/gms/internal/ads/zzfl;->zza(Lcom/google/android/gms/internal/ads/zzfo;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzafv;Landroid/media/MediaCrypto;)Lcom/google/android/gms/internal/ads/zzfl;

    move-result-object p1

    return-object p1
.end method

.method protected final zzh(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzafv;)Lcom/google/android/gms/internal/ads/zzba;
    .locals 9

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfo;->zze(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzafv;)Lcom/google/android/gms/internal/ads/zzba;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzba;->zze:I

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzer;->zzaa(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzer;->zze:I

    if-le v2, v3, :cond_0

    or-int/lit8 v1, v1, 0x40

    :cond_0
    new-instance v8, Lcom/google/android/gms/internal/ads/zzba;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfo;->zza:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz v1, :cond_1

    move v7, v1

    const/4 v6, 0x0

    goto :goto_0

    .line 4
    :cond_1
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzba;->zzd:I

    move v6, v0

    const/4 v7, 0x0

    :goto_0
    move-object v2, v8

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzba;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzafv;II)V

    return-object v8
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzalp;
    .locals 0

    return-object p0
.end method

.method protected final zzj(FLcom/google/android/gms/internal/ads/zzafv;[Lcom/google/android/gms/internal/ads/zzafv;)F
    .locals 4

    .line 1
    array-length p2, p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    .line 2
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    if-eq v3, v0, :cond_0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_2
    int-to-float p2, v2

    mul-float p2, p2, p1

    return p2
.end method

.method protected final zzk(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzc:Lcom/google/android/gms/internal/ads/zzdp;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdp;->zzb(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected final zzl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzc:Lcom/google/android/gms/internal/ads/zzdp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdp;->zzf(Ljava/lang/String;)V

    return-void
.end method

.method protected final zzm(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzaln;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzc:Lcom/google/android/gms/internal/ads/zzdp;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdp;->zzj(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final zzn(Lcom/google/android/gms/internal/ads/zzafw;)Lcom/google/android/gms/internal/ads/zzba;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfq;->zzn(Lcom/google/android/gms/internal/ads/zzafw;)Lcom/google/android/gms/internal/ads/zzba;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzc:Lcom/google/android/gms/internal/ads/zzdp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzafw;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    .line 2
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdp;->zzc(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzba;)V

    return-object v0
.end method

.method protected final zzo(Lcom/google/android/gms/internal/ads/zzafv;Landroid/media/MediaFormat;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzg:Lcom/google/android/gms/internal/ads/zzafv;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzZ()Lcom/google/android/gms/internal/ads/zzgh;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 1
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzA:I

    goto :goto_0

    .line 3
    :cond_2
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_3

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "v-bits-per-sample"

    .line 4
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamq;->zzO(I)I

    move-result v0

    goto :goto_0

    .line 6
    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzA:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    .line 2
    :goto_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaft;

    .line 9
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 10
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 11
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzac(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzB:I

    .line 12
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzad(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzC:I

    .line 13
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzae(I)Lcom/google/android/gms/internal/ads/zzaft;

    const-string v0, "channel-count"

    .line 14
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzaa(I)Lcom/google/android/gms/internal/ads/zzaft;

    const-string v0, "sample-rate"

    .line 15
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzaft;->zzab(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object p2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzf:Z

    if-eqz v0, :cond_6

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_6

    .line 17
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    if-ge v0, v3, :cond_6

    .line 18
    new-array v2, v0, [I

    const/4 v0, 0x0

    .line 19
    :goto_1
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    if-ge v0, v3, :cond_6

    .line 20
    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move-object p1, p2

    .line 21
    :goto_2
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    invoke-interface {p2, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdw;->zze(Lcom/google/android/gms/internal/ads/zzafv;I[I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdr; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzdr;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    const/16 v0, 0x1389

    .line 22
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzadv;->zzaw(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzafv;ZI)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object p1

    .line 23
    throw p1
.end method

.method protected final zzp()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzj:Z

    return-void
.end method

.method protected final zzq(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfq;->zzq(ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzc:Lcom/google/android/gms/internal/ads/zzdp;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdp;->zza(Lcom/google/android/gms/internal/ads/zzaz;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzav()Lcom/google/android/gms/internal/ads/zzahx;

    return-void
.end method

.method protected final zzr(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfq;->zzr(JZ)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    .line 2
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzdw;->zzt()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzh:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzi:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzj:Z

    return-void
.end method

.method protected final zzs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdw;->zzf()V

    return-void
.end method

.method protected final zzt()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzab()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdw;->zzs()V

    return-void
.end method

.method protected final zzu()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzk:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdw;->zzt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzu()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzc:Lcom/google/android/gms/internal/ads/zzdp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdp;->zzg(Lcom/google/android/gms/internal/ads/zzaz;)V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzc:Lcom/google/android/gms/internal/ads/zzdp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdp;->zzg(Lcom/google/android/gms/internal/ads/zzaz;)V

    .line 4
    throw v0

    :catchall_1
    move-exception v0

    .line 2
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzu()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzc:Lcom/google/android/gms/internal/ads/zzdp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdp;->zzg(Lcom/google/android/gms/internal/ads/zzaz;)V

    .line 5
    throw v0

    :catchall_2
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzc:Lcom/google/android/gms/internal/ads/zzdp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdp;->zzg(Lcom/google/android/gms/internal/ads/zzaz;)V

    .line 4
    throw v0
.end method

.method protected final zzv()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzv()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzk:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzk:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdw;->zzu()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzer;->zzk:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzk:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdw;->zzu()V

    .line 3
    :goto_0
    throw v1
.end method

.method public final zzw()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdw;->zzj()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzx()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdw;->zzk()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzx()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzy()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzaf()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzab()V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzh:J

    return-wide v0
.end method

.method public final zzz(Lcom/google/android/gms/internal/ads/zzahf;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Lcom/google/android/gms/internal/ads/zzdw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdw;->zzl(Lcom/google/android/gms/internal/ads/zzahf;)V

    return-void
.end method
