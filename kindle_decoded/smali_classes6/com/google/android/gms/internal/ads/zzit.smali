.class public final Lcom/google/android/gms/internal/ads/zzit;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzox;


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzafv;

.field private zzB:Z

.field private zzC:Z

.field private zzD:Lcom/google/android/gms/internal/ads/zzfg;

.field private final zza:Lcom/google/android/gms/internal/ads/zzin;

.field private final zzb:Lcom/google/android/gms/internal/ads/zziq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzja;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzja<",
            "Lcom/google/android/gms/internal/ads/zzir;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzff;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfa;

.field private final zzf:Landroid/os/Looper;

.field private zzg:Lcom/google/android/gms/internal/ads/zzis;

.field private zzh:Lcom/google/android/gms/internal/ads/zzafv;

.field private zzi:I

.field private zzj:[I

.field private zzk:[J

.field private zzl:[I

.field private zzm:[I

.field private zzn:[J

.field private zzo:[Lcom/google/android/gms/internal/ads/zzow;

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:I

.field private zzt:J

.field private zzu:J

.field private zzv:J

.field private zzw:Z

.field private zzx:Z

.field private zzy:Z

.field private zzz:Lcom/google/android/gms/internal/ads/zzafv;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzko;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzff;Lcom/google/android/gms/internal/ads/zzfa;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzf:Landroid/os/Looper;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzd:Lcom/google/android/gms/internal/ads/zzff;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzit;->zze:Lcom/google/android/gms/internal/ads/zzfa;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzin;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzin;-><init>(Lcom/google/android/gms/internal/ads/zzko;[B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zza:Lcom/google/android/gms/internal/ads/zzin;

    new-instance p1, Lcom/google/android/gms/internal/ads/zziq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zziq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzb:Lcom/google/android/gms/internal/ads/zziq;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzi:I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzj:[I

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzk:[J

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzn:[J

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzm:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzl:[I

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzow;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzo:[Lcom/google/android/gms/internal/ads/zzow;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzja;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzio;->zza:Lcom/google/android/gms/internal/ads/zzakx;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzja;-><init>(Lcom/google/android/gms/internal/ads/zzakx;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzc:Lcom/google/android/gms/internal/ads/zzja;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzt:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzu:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzv:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzy:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzx:Z

    return-void
.end method

.method private final declared-synchronized zzA(Lcom/google/android/gms/internal/ads/zzafw;Lcom/google/android/gms/internal/ads/zzaf;ZZLcom/google/android/gms/internal/ads/zziq;)I
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzaf;->zzc:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzit;->zzG()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_4

    if-nez p4, :cond_3

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzit;->zzw:Z

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzA:Lcom/google/android/gms/internal/ads/zzafv;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzh:Lcom/google/android/gms/internal/ads/zzafv;

    if-eq p2, p3, :cond_2

    .line 2
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzit;->zzH(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzafw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_2
    monitor-exit p0

    return v2

    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 1
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzz;->zzf(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    .line 2
    :cond_4
    :try_start_2
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzit;->zzc:Lcom/google/android/gms/internal/ads/zzja;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzq:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    add-int/2addr v0, v4

    .line 3
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzja;->zza(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzir;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    if-nez p3, :cond_8

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzh:Lcom/google/android/gms/internal/ads/zzafv;

    if-eq p4, p3, :cond_5

    goto :goto_1

    .line 4
    :cond_5
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzit;->zzL(I)I

    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzit;->zzI(I)Z

    move-result p3

    if-nez p3, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzaf;->zzc:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_6
    :try_start_3
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzm:[I

    .line 6
    aget p3, p3, p1

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzz;->zzf(I)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzn:[J

    .line 7
    aget-wide v0, p3, p1

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzaf;->zzd:J

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzt:J

    cmp-long v2, v0, p3

    if-gez v2, :cond_7

    const/high16 p3, -0x80000000

    .line 8
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzz;->zzg(I)V

    :cond_7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzl:[I

    .line 9
    aget p2, p2, p1

    iput p2, p5, Lcom/google/android/gms/internal/ads/zziq;->zza:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzk:[J

    .line 10
    aget-wide p3, p2, p1

    iput-wide p3, p5, Lcom/google/android/gms/internal/ads/zziq;->zzb:J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzo:[Lcom/google/android/gms/internal/ads/zzow;

    .line 11
    aget-object p1, p2, p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zziq;->zzc:Lcom/google/android/gms/internal/ads/zzow;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v3

    .line 4
    :cond_8
    :goto_1
    :try_start_4
    invoke-direct {p0, p4, p1}, Lcom/google/android/gms/internal/ads/zzit;->zzH(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzafw;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzB(Lcom/google/android/gms/internal/ads/zzafv;)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzy:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzA:Lcom/google/android/gms/internal/ads/zzafv;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzc:Lcom/google/android/gms/internal/ads/zzja;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzja;->zzf()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzc:Lcom/google/android/gms/internal/ads/zzja;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzja;->zzc()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzir;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzafv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzc:Lcom/google/android/gms/internal/ads/zzja;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzja;->zzc()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzir;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzA:Lcom/google/android/gms/internal/ads/zzafv;

    goto :goto_0

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzA:Lcom/google/android/gms/internal/ads/zzafv;

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzA:Lcom/google/android/gms/internal/ads/zzafv;

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzi:Ljava/lang/String;

    .line 6
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzalt;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzB:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzC:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzC(JZZ)J
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzp:I

    const-wide/16 v0, -0x1

    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzn:[J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzit;->zzr:I

    aget-wide v5, v2, v4

    cmp-long v2, p1, v5

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    if-eq p4, p3, :cond_1

    add-int/lit8 p3, p4, 0x1

    :cond_1
    move v5, p3

    const/4 v8, 0x0

    move-object v3, p0

    move-wide v6, p1

    .line 2
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzit;->zzJ(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    monitor-exit p0

    return-wide v0

    .line 3
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzit;->zzK(I)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 1
    :cond_3
    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzD()J
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzit;->zzK(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzE()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzD:Lcom/google/android/gms/internal/ads/zzfg;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzD:Lcom/google/android/gms/internal/ads/zzfg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzh:Lcom/google/android/gms/internal/ads/zzafv;

    :cond_0
    return-void
.end method

.method private final declared-synchronized zzF(JIJILcom/google/android/gms/internal/ads/zzow;)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzp:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzit;->zzL(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzk:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzl:[I

    aget v0, v3, v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v4, p4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    :cond_1
    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzw:Z

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzv:J

    .line 2
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzv:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzp:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzit;->zzL(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzn:[J

    .line 3
    aput-wide p1, v3, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzk:[J

    .line 4
    aput-wide p4, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzl:[I

    .line 5
    aput p6, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzm:[I

    .line 6
    aput p3, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzo:[Lcom/google/android/gms/internal/ads/zzow;

    .line 7
    aput-object p7, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzj:[I

    .line 8
    aput v2, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzc:Lcom/google/android/gms/internal/ads/zzja;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzja;->zzf()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzc:Lcom/google/android/gms/internal/ads/zzja;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzja;->zzc()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzir;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzA:Lcom/google/android/gms/internal/ads/zzafv;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzafv;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 11
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Lcom/google/android/gms/internal/ads/zzfe;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzc:Lcom/google/android/gms/internal/ads/zzja;

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzq:I

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzit;->zzp:I

    add-int/2addr p3, p4

    new-instance p4, Lcom/google/android/gms/internal/ads/zzir;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzit;->zzA:Lcom/google/android/gms/internal/ads/zzafv;

    const/4 p6, 0x0

    if-eqz p5, :cond_6

    .line 12
    invoke-direct {p4, p5, p1, p6}, Lcom/google/android/gms/internal/ads/zzir;-><init>(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzfe;Lcom/google/android/gms/internal/ads/zzip;)V

    .line 13
    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzja;->zzb(ILjava/lang/Object;)V

    :cond_4
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzp:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzp:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzi:I

    if-ne p1, p2, :cond_5

    add-int/lit16 p1, p2, 0x3e8

    .line 14
    new-array p3, p1, [I

    .line 15
    new-array p4, p1, [J

    .line 16
    new-array p5, p1, [J

    .line 17
    new-array p6, p1, [I

    .line 18
    new-array p7, p1, [I

    .line 19
    new-array v0, p1, [Lcom/google/android/gms/internal/ads/zzow;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzr:I

    sub-int/2addr p2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzk:[J

    .line 20
    invoke-static {v3, v1, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzn:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzr:I

    .line 21
    invoke-static {v1, v3, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzm:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzr:I

    .line 22
    invoke-static {v1, v3, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzl:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzr:I

    .line 23
    invoke-static {v1, v3, p7, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzo:[Lcom/google/android/gms/internal/ads/zzow;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzr:I

    .line 24
    invoke-static {v1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzj:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzr:I

    .line 25
    invoke-static {v1, v3, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzr:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzk:[J

    .line 26
    invoke-static {v3, v2, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzn:[J

    .line 27
    invoke-static {v3, v2, p5, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzm:[I

    .line 28
    invoke-static {v3, v2, p6, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzl:[I

    .line 29
    invoke-static {v3, v2, p7, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzo:[Lcom/google/android/gms/internal/ads/zzow;

    .line 30
    invoke-static {v3, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzj:[I

    .line 31
    invoke-static {v3, v2, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzit;->zzk:[J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzit;->zzn:[J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzit;->zzm:[I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzit;->zzl:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzo:[Lcom/google/android/gms/internal/ads/zzow;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzj:[I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzr:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzi:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    .line 32
    :cond_6
    :try_start_1
    throw p6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final zzG()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzp:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzH(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzafw;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzh:Lcom/google/android/gms/internal/ads/zzafv;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 1
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzo:Lcom/google/android/gms/internal/ads/zzn;

    .line 2
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzh:Lcom/google/android/gms/internal/ads/zzafv;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzo:Lcom/google/android/gms/internal/ads/zzn;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzit;->zzd:Lcom/google/android/gms/internal/ads/zzff;

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzff;->zza(Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzafv;->zzb(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v4

    iput-object v4, p2, Lcom/google/android/gms/internal/ads/zzafw;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzit;->zzD:Lcom/google/android/gms/internal/ads/zzfg;

    iput-object v4, p2, Lcom/google/android/gms/internal/ads/zzafw;->zzb:Lcom/google/android/gms/internal/ads/zzfg;

    if-eqz v0, :cond_2

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzo:Lcom/google/android/gms/internal/ads/zzn;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzey;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfi;

    const/4 v2, 0x1

    .line 4
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzfi;-><init>(I)V

    const/16 v2, 0x1771

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzey;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfg;-><init>(Lcom/google/android/gms/internal/ads/zzey;)V

    .line 3
    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzD:Lcom/google/android/gms/internal/ads/zzfg;

    iput-object v1, p2, Lcom/google/android/gms/internal/ads/zzafw;->zzb:Lcom/google/android/gms/internal/ads/zzfg;

    return-void
.end method

.method private final zzI(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzD:Lcom/google/android/gms/internal/ads/zzfg;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzm:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private final zzJ(IIJZ)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_3

    .line 1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzn:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_3

    if-eqz p5, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzit;->zzm:[I

    .line 2
    aget v4, v4, p1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    :cond_0
    move v1, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzi:I

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method private final zzK(I)J
    .locals 11

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzu:J

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v5, -0x1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, p1, -0x1

    .line 6
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/zzit;->zzL(I)I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p1, :cond_3

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzit;->zzn:[J

    .line 1
    aget-wide v9, v8, v6

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzit;->zzm:[I

    .line 2
    aget v8, v8, v6

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, -0x1

    if-ne v6, v5, :cond_2

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzit;->zzi:I

    add-int/2addr v6, v5

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3
    :cond_3
    :goto_1
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzu:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzp:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzp:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzq:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzq:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzr:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzr:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzi:I

    if-lt v1, v3, :cond_4

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzr:I

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    if-gez v1, :cond_5

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzc:Lcom/google/android/gms/internal/ads/zzja;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzja;->zzd(I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzp:I

    if-nez p1, :cond_7

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzr:I

    if-nez p1, :cond_6

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzi:I

    :cond_6
    add-int/2addr p1, v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzk:[J

    .line 5
    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzl:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzk:[J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzr:I

    .line 6
    aget-wide v0, p1, v0

    return-wide v0
.end method

.method private final zzL(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzr:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzi:I

    if-ge v0, p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr v0, p1

    return v0
.end method

.method static final synthetic zzw(Lcom/google/android/gms/internal/ads/zzir;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzir;->zzb:Lcom/google/android/gms/internal/ads/zzfe;

    return-void
.end method

.method private final declared-synchronized zzz()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zza:Lcom/google/android/gms/internal/ads/zzin;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzin;->zzb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzit;->zzb(Z)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzit;->zzE()V

    return-void
.end method

.method public final zzb(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zza:Lcom/google/android/gms/internal/ads/zzin;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzin;->zza()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzq:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzr:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzx:Z

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzt:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzu:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzv:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzw:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzc:Lcom/google/android/gms/internal/ads/zzja;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzja;->zze()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzz:Lcom/google/android/gms/internal/ads/zzafv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzA:Lcom/google/android/gms/internal/ads/zzafv;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzy:Z

    :cond_0
    return-void
.end method

.method public final zzc(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzt:J

    return-void
.end method

.method public final zzd()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzq:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzp:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zze()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzit;->zzq()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzit;->zzE()V

    return-void
.end method

.method public final zzf()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzD:Lcom/google/android/gms/internal/ads/zzfg;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfg;->zza()Lcom/google/android/gms/internal/ads/zzey;

    move-result-object v0

    throw v0
.end method

.method public final zzg()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzq:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized zzh()Lcom/google/android/gms/internal/ads/zzafv;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzA:Lcom/google/android/gms/internal/ads/zzafv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzi()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzv:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzj()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzk(Z)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzit;->zzG()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzw:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzA:Lcom/google/android/gms/internal/ads/zzafv;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzh:Lcom/google/android/gms/internal/ads/zzafv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzc:Lcom/google/android/gms/internal/ads/zzja;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzq:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzja;->zza(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzir;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzir;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzh:Lcom/google/android/gms/internal/ads/zzafv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v0, :cond_4

    monitor-exit p0

    return v1

    :cond_4
    :try_start_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzit;->zzL(I)I

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzit;->zzI(I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzafw;Lcom/google/android/gms/internal/ads/zzaf;IZ)I
    .locals 8

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 1
    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzit;->zzb:Lcom/google/android/gms/internal/ads/zziq;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzit;->zzA(Lcom/google/android/gms/internal/ads/zzafw;Lcom/google/android/gms/internal/ads/zzaf;ZZLcom/google/android/gms/internal/ads/zziq;)I

    move-result p1

    const/4 p4, -0x4

    if-ne p1, p4, :cond_5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzz;->zzc()Z

    move-result p1

    if-nez p1, :cond_4

    and-int/lit8 p1, p3, 0x1

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zza:Lcom/google/android/gms/internal/ads/zzin;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzb:Lcom/google/android/gms/internal/ads/zziq;

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzin;->zzd(Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zziq;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zza:Lcom/google/android/gms/internal/ads/zzin;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzb:Lcom/google/android/gms/internal/ads/zziq;

    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzin;->zzc(Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zziq;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    return p4

    :cond_4
    :goto_2
    const/4 p1, -0x4

    :cond_5
    return p1
.end method

.method public final declared-synchronized zzm(JZ)Z
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzit;->zzz()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzit;->zzL(I)I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzit;->zzG()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzn:[J

    .line 2
    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzv:J

    cmp-long v3, p1, v0

    if-lez v3, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzp:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzit;->zzJ(IIJZ)I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    monitor-exit p0

    return v7

    :cond_1
    :try_start_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzt:J

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_2
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzn(JZ)I
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzit;->zzL(I)I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzit;->zzG()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzn:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzv:J

    cmp-long v3, p1, v0

    if-lez v3, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzp:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, p2

    monitor-exit p0

    return p1

    .line 1
    :cond_2
    :goto_0
    :try_start_1
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzp:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzit;->zzJ(IIJZ)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, -0x1

    monitor-exit p0

    if-ne p1, p2, :cond_3

    return v7

    :cond_3
    return p1

    .line 1
    :cond_4
    :goto_1
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzo(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 1
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzp:I

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final zzp(JZZ)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzit;->zza:Lcom/google/android/gms/internal/ads/zzin;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/android/gms/internal/ads/zzit;->zzC(JZZ)J

    move-result-wide p1

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzin;->zze(J)V

    return-void
.end method

.method public final zzq()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zza:Lcom/google/android/gms/internal/ads/zzin;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzit;->zzD()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzin;->zze(J)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzis;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzg:Lcom/google/android/gms/internal/ads/zzis;

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzafv;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzz:Lcom/google/android/gms/internal/ads/zzafv;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzit;->zzB(Lcom/google/android/gms/internal/ads/zzafv;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzg:Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzis;->zzF(Lcom/google/android/gms/internal/ads/zzafv;)V

    :cond_0
    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzah;IZI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzit;->zza:Lcom/google/android/gms/internal/ads/zzin;

    invoke-virtual {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzin;->zzg(Lcom/google/android/gms/internal/ads/zzah;IZ)I

    move-result p1

    return p1
.end method

.method public final zzu(Lcom/google/android/gms/internal/ads/zzamf;II)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzit;->zza:Lcom/google/android/gms/internal/ads/zzin;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzin;->zzh(Lcom/google/android/gms/internal/ads/zzamf;I)V

    return-void
.end method

.method public final zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V
    .locals 8

    and-int/lit8 v0, p3, 0x1

    .line 1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzx:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzx:Z

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzB:Z

    if-eqz v1, :cond_4

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzt:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_2

    return-void

    :cond_2
    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzC:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzA:Lcom/google/android/gms/internal/ads/zzafv;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Overriding unexpected non-sync sample for format: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SampleQueue"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzC:Z

    :cond_3
    or-int/lit8 p3, p3, 0x1

    :cond_4
    move v3, p3

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzit;->zza:Lcom/google/android/gms/internal/ads/zzin;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzin;->zzf()J

    move-result-wide v0

    int-to-long v4, p4

    sub-long/2addr v0, v4

    int-to-long v4, p5

    sub-long v4, v0, v4

    move-object v0, p0

    move-wide v1, p1

    move v6, p4

    move-object v7, p6

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzit;->zzF(JIJILcom/google/android/gms/internal/ads/zzow;)V

    return-void
.end method

.method public final zzx(Lcom/google/android/gms/internal/ads/zzah;IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzov;->zza(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzah;IZ)I

    move-result p1

    return p1
.end method

.method public final zzy(Lcom/google/android/gms/internal/ads/zzamf;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    return-void
.end method
