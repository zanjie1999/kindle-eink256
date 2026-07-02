.class final Lcom/google/android/gms/internal/ads/zzanf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzanc;


# instance fields
.field private final zza:[Lcom/google/android/gms/internal/ads/zzanr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzatu;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzats;

.field private final zzd:Landroid/os/Handler;

.field private final zze:Lcom/google/android/gms/internal/ads/zzank;

.field private final zzf:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/gms/internal/ads/zzamz;",
            ">;"
        }
    .end annotation
.end field

.field private final zzg:Lcom/google/android/gms/internal/ads/zzanw;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzanv;

.field private zzi:Z

.field private zzj:Z

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:Z

.field private zzo:Lcom/google/android/gms/internal/ads/zzanx;

.field private zzp:Ljava/lang/Object;

.field private zzq:Lcom/google/android/gms/internal/ads/zzatg;

.field private zzr:Lcom/google/android/gms/internal/ads/zzats;

.field private zzs:Lcom/google/android/gms/internal/ads/zzanq;

.field private zzt:Lcom/google/android/gms/internal/ads/zzanh;

.field private zzu:J


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzanr;Lcom/google/android/gms/internal/ads/zzatu;Lcom/google/android/gms/internal/ads/zzcjy;[B)V
    .locals 12

    move-object v10, p0

    move-object v2, p2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzave;->zze:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1a

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Init ExoPlayerLib/2.4.2 ["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    .line 2
    iput-object v1, v10, Lcom/google/android/gms/internal/ads/zzanf;->zza:[Lcom/google/android/gms/internal/ads/zzanr;

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    iput-object v2, v10, Lcom/google/android/gms/internal/ads/zzanf;->zzb:Lcom/google/android/gms/internal/ads/zzatu;

    const/4 v3, 0x0

    iput-boolean v3, v10, Lcom/google/android/gms/internal/ads/zzanf;->zzj:Z

    const/4 v4, 0x1

    iput v4, v10, Lcom/google/android/gms/internal/ads/zzanf;->zzk:I

    .line 3
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v4, v10, Lcom/google/android/gms/internal/ads/zzanf;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzats;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzatk;

    .line 4
    invoke-direct {v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzats;-><init>([Lcom/google/android/gms/internal/ads/zzatk;[B)V

    iput-object v4, v10, Lcom/google/android/gms/internal/ads/zzanf;->zzc:Lcom/google/android/gms/internal/ads/zzats;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzanx;->zza:Lcom/google/android/gms/internal/ads/zzanx;

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzanw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzanw;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/zzanf;->zzg:Lcom/google/android/gms/internal/ads/zzanw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzanv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzanv;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/zzanf;->zzh:Lcom/google/android/gms/internal/ads/zzanv;

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzatg;->zza:Lcom/google/android/gms/internal/ads/zzatg;

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/zzanf;->zzq:Lcom/google/android/gms/internal/ads/zzatg;

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzanf;->zzc:Lcom/google/android/gms/internal/ads/zzats;

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/zzanf;->zzr:Lcom/google/android/gms/internal/ads/zzats;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzanq;->zza:Lcom/google/android/gms/internal/ads/zzanq;

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/zzanf;->zzs:Lcom/google/android/gms/internal/ads/zzanq;

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zzane;

    .line 8
    invoke-direct {v4, p0, v0}, Lcom/google/android/gms/internal/ads/zzane;-><init>(Lcom/google/android/gms/internal/ads/zzanf;Landroid/os/Looper;)V

    iput-object v4, v10, Lcom/google/android/gms/internal/ads/zzanf;->zzd:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzanh;

    const-wide/16 v4, 0x0

    .line 9
    invoke-direct {v7, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(IJ)V

    iput-object v7, v10, Lcom/google/android/gms/internal/ads/zzanf;->zzt:Lcom/google/android/gms/internal/ads/zzanh;

    .line 10
    new-instance v11, Lcom/google/android/gms/internal/ads/zzank;

    iget-boolean v4, v10, Lcom/google/android/gms/internal/ads/zzanf;->zzj:Z

    const/4 v5, 0x0

    iget-object v6, v10, Lcom/google/android/gms/internal/ads/zzanf;->zzd:Landroid/os/Handler;

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v8, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzank;-><init>([Lcom/google/android/gms/internal/ads/zzanr;Lcom/google/android/gms/internal/ads/zzatu;Lcom/google/android/gms/internal/ads/zzcjy;ZILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzanh;Lcom/google/android/gms/internal/ads/zzanc;[B)V

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/zzanf;->zze:Lcom/google/android/gms/internal/ads/zzank;

    return-void

    .line 11
    :cond_1
    throw v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzamz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzamz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzk:I

    return v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzasr;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanx;->zzf()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzp:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzanx;->zza:Lcom/google/android/gms/internal/ads/zzanx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzp:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzamz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzp:Ljava/lang/Object;

    .line 3
    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzamz;->zza(Lcom/google/android/gms/internal/ads/zzanx;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzi:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzi:Z

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzatg;->zza:Lcom/google/android/gms/internal/ads/zzatg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzq:Lcom/google/android/gms/internal/ads/zzatg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzc:Lcom/google/android/gms/internal/ads/zzats;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzr:Lcom/google/android/gms/internal/ads/zzats;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzb:Lcom/google/android/gms/internal/ads/zzatu;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzatu;->zze(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzamz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzq:Lcom/google/android/gms/internal/ads/zzatg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzr:Lcom/google/android/gms/internal/ads/zzats;

    .line 7
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzamz;->zzb(Lcom/google/android/gms/internal/ads/zzatg;Lcom/google/android/gms/internal/ads/zzats;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzm:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzm:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zze:Lcom/google/android/gms/internal/ads/zzank;

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzank;->zzb(Lcom/google/android/gms/internal/ads/zzasr;Z)V

    return-void
.end method

.method public final zze(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzj:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzj:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zze:Lcom/google/android/gms/internal/ads/zzank;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzank;->zzc(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzamz;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzk:I

    .line 3
    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzamz;->zzd(ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzj:Z

    return v0
.end method

.method public final zzg(J)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanf;->zzr()I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanx;->zzf()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanx;->zza()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzano;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    .line 11
    invoke-direct {v0, v2, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzano;-><init>(Lcom/google/android/gms/internal/ads/zzanx;IJ)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzl:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzl:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanx;->zzf()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzg:Lcom/google/android/gms/internal/ads/zzanw;

    .line 4
    invoke-virtual {v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzanx;->zzg(ILcom/google/android/gms/internal/ads/zzanw;Z)Lcom/google/android/gms/internal/ads/zzanw;

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzamx;->zzb(J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzh:Lcom/google/android/gms/internal/ads/zzanv;

    .line 6
    invoke-virtual {v0, v1, v4, v1}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    move-result-object v0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzanv;->zzc:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    cmp-long v0, v2, v4

    .line 3
    :cond_3
    :goto_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzu:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zze:Lcom/google/android/gms/internal/ads/zzank;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzamx;->zzb(J)J

    move-result-wide p1

    invoke-virtual {v0, v2, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzank;->zzd(Lcom/google/android/gms/internal/ads/zzanx;IJ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzamz;

    .line 10
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzamz;->zzf()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final zzh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zze:Lcom/google/android/gms/internal/ads/zzank;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzank;->zze()V

    return-void
.end method

.method public final zzi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zze:Lcom/google/android/gms/internal/ads/zzank;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzank;->zzh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzd:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs zzj([Lcom/google/android/gms/internal/ads/zzanb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zze:Lcom/google/android/gms/internal/ads/zzank;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzank;->zzf([Lcom/google/android/gms/internal/ads/zzanb;)V

    return-void
.end method

.method public final varargs zzk([Lcom/google/android/gms/internal/ads/zzanb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zze:Lcom/google/android/gms/internal/ads/zzank;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzank;->zzg([Lcom/google/android/gms/internal/ads/zzanb;)V

    return-void
.end method

.method public final zzl()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanx;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanf;->zzr()I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzg:Lcom/google/android/gms/internal/ads/zzanw;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzanx;->zzg(ILcom/google/android/gms/internal/ads/zzanw;Z)Lcom/google/android/gms/internal/ads/zzanw;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzanw;->zza:J

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzamx;->zza(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanx;->zzf()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzl:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzt:Lcom/google/android/gms/internal/ads/zzanh;

    .line 2
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzanh;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzh:Lcom/google/android/gms/internal/ads/zzanv;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzamx;->zza(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzt:Lcom/google/android/gms/internal/ads/zzanh;

    .line 4
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzanh;->zzc:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzamx;->zza(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 1
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzu:J

    return-wide v0
.end method

.method public final zzn()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanx;->zzf()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzl:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzt:Lcom/google/android/gms/internal/ads/zzanh;

    .line 2
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzanh;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzh:Lcom/google/android/gms/internal/ads/zzanv;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzamx;->zza(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzt:Lcom/google/android/gms/internal/ads/zzanh;

    .line 4
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzanh;->zzd:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzamx;->zza(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 1
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzu:J

    return-wide v0
.end method

.method public final zzo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zze:Lcom/google/android/gms/internal/ads/zzank;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzank;->zza()V

    return-void
.end method

.method public final zzp(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zze:Lcom/google/android/gms/internal/ads/zzank;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzank;->zzl(I)V

    return-void
.end method

.method public final zzq(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zze:Lcom/google/android/gms/internal/ads/zzank;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzank;->zzm(I)V

    return-void
.end method

.method public final zzr()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanx;->zzf()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzl:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzt:Lcom/google/android/gms/internal/ads/zzanh;

    .line 2
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzanh;->zza:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzh:Lcom/google/android/gms/internal/ads/zzanv;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    :cond_1
    :goto_0
    return v1
.end method

.method final zzs(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 34
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 2
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzamy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzamz;

    .line 4
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzamz;->zze(Lcom/google/android/gms/internal/ads/zzamy;)V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzanq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzs:Lcom/google/android/gms/internal/ads/zzanq;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzanq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzs:Lcom/google/android/gms/internal/ads/zzanq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzamz;

    .line 8
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzamz;->zzg(Lcom/google/android/gms/internal/ads/zzanq;)V

    goto :goto_1

    .line 9
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzanj;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzl:I

    .line 10
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzanj;->zzd:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzl:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzm:I

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzanj;->zza:Lcom/google/android/gms/internal/ads/zzanx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    .line 12
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzanj;->zzb:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzp:Ljava/lang/Object;

    .line 13
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzanj;->zzc:Lcom/google/android/gms/internal/ads/zzanh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzt:Lcom/google/android/gms/internal/ads/zzanh;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 14
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzamz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzo:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzp:Ljava/lang/Object;

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzamz;->zza(Lcom/google/android/gms/internal/ads/zzanx;Ljava/lang/Object;)V

    goto :goto_2

    .line 22
    :pswitch_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzl:I

    if-nez v0, :cond_1

    .line 16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzanh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzt:Lcom/google/android/gms/internal/ads/zzanh;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 17
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzamz;

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamz;->zzf()V

    goto :goto_3

    .line 15
    :pswitch_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzl:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzl:I

    if-nez v0, :cond_1

    .line 19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzanh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzt:Lcom/google/android/gms/internal/ads/zzanh;

    .line 20
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 21
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzamz;

    .line 22
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamz;->zzf()V

    goto :goto_4

    .line 31
    :pswitch_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzm:I

    if-nez v0, :cond_1

    .line 23
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatv;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzi:Z

    .line 24
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatv;->zza:Lcom/google/android/gms/internal/ads/zzatg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzq:Lcom/google/android/gms/internal/ads/zzatg;

    .line 25
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatv;->zzb:Lcom/google/android/gms/internal/ads/zzats;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzr:Lcom/google/android/gms/internal/ads/zzats;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzb:Lcom/google/android/gms/internal/ads/zzatu;

    .line 26
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzatv;->zzc:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzatu;->zze(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 27
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzamz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzq:Lcom/google/android/gms/internal/ads/zzatg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzr:Lcom/google/android/gms/internal/ads/zzats;

    .line 28
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzamz;->zzb(Lcom/google/android/gms/internal/ads/zzatg;Lcom/google/android/gms/internal/ads/zzats;)V

    goto :goto_5

    .line 29
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    goto :goto_6

    :cond_0
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzn:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 30
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzamz;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzn:Z

    .line 31
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzamz;->zzc(Z)V

    goto :goto_7

    .line 32
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzk:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzamz;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzj:Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzk:I

    .line 34
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzamz;->zzd(ZI)V

    goto :goto_8

    :cond_1
    return-void

    .line 35
    :pswitch_8
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzm:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzm:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
