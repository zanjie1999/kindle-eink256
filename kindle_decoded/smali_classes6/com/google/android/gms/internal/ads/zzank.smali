.class final Lcom/google/android/gms/internal/ads/zzank;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/gms/internal/ads/zzaso;
.implements Lcom/google/android/gms/internal/ads/zzatt;
.implements Lcom/google/android/gms/internal/ads/zzasq;


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzani;

.field private zzB:J

.field private zzC:Lcom/google/android/gms/internal/ads/zzang;

.field private zzD:Lcom/google/android/gms/internal/ads/zzang;

.field private zzE:Lcom/google/android/gms/internal/ads/zzang;

.field private zzF:Lcom/google/android/gms/internal/ads/zzanx;

.field private zzG:Z

.field private volatile zzH:I

.field private volatile zzI:I

.field private final zzJ:Lcom/google/android/gms/internal/ads/zzcjy;

.field private final zza:[Lcom/google/android/gms/internal/ads/zzanr;

.field private final zzb:[Lcom/google/android/gms/internal/ads/zzans;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzatu;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzava;

.field private final zze:Landroid/os/Handler;

.field private final zzf:Landroid/os/HandlerThread;

.field private final zzg:Landroid/os/Handler;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzanc;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzanw;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzanv;

.field private zzk:Lcom/google/android/gms/internal/ads/zzanh;

.field private zzl:Lcom/google/android/gms/internal/ads/zzanq;

.field private zzm:Lcom/google/android/gms/internal/ads/zzanr;

.field private zzn:Lcom/google/android/gms/internal/ads/zzaut;

.field private zzo:Lcom/google/android/gms/internal/ads/zzasr;

.field private zzp:[Lcom/google/android/gms/internal/ads/zzanr;

.field private zzq:Z

.field private zzr:Z

.field private zzs:Z

.field private zzt:Z

.field private zzu:I

.field private zzv:I

.field private zzw:I

.field private zzx:I

.field private zzy:J

.field private zzz:I


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzanr;Lcom/google/android/gms/internal/ads/zzatu;Lcom/google/android/gms/internal/ads/zzcjy;ZILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzanh;Lcom/google/android/gms/internal/ads/zzanc;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zza:[Lcom/google/android/gms/internal/ads/zzanr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzc:Lcom/google/android/gms/internal/ads/zzatu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzank;->zzJ:Lcom/google/android/gms/internal/ads/zzcjy;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzank;->zzr:Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzank;->zzv:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzank;->zzg:Landroid/os/Handler;

    const/4 p4, 0x1

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzank;->zzu:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzank;->zzh:Lcom/google/android/gms/internal/ads/zzanc;

    const/4 p4, 0x2

    new-array p5, p4, [Lcom/google/android/gms/internal/ads/zzans;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzank;->zzb:[Lcom/google/android/gms/internal/ads/zzans;

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_0

    aget-object p6, p1, p5

    invoke-interface {p6, p5}, Lcom/google/android/gms/internal/ads/zzanr;->zzc(I)V

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzank;->zzb:[Lcom/google/android/gms/internal/ads/zzans;

    aget-object p7, p1, p5

    .line 2
    invoke-interface {p7}, Lcom/google/android/gms/internal/ads/zzanr;->zzb()Lcom/google/android/gms/internal/ads/zzans;

    move-result-object p7

    aput-object p7, p6, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzava;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzava;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzd:Lcom/google/android/gms/internal/ads/zzava;

    new-array p1, p3, [Lcom/google/android/gms/internal/ads/zzanr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzp:[Lcom/google/android/gms/internal/ads/zzanr;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzanw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzanw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzi:Lcom/google/android/gms/internal/ads/zzanw;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzanv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzanv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    .line 4
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzatu;->zzf(Lcom/google/android/gms/internal/ads/zzatt;)V

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzanq;->zza:Lcom/google/android/gms/internal/ads/zzanq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzl:Lcom/google/android/gms/internal/ads/zzanq;

    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    .line 6
    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzf:Landroid/os/HandlerThread;

    .line 7
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzf:Landroid/os/HandlerThread;

    .line 8
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    return-void
.end method

.method private final zzA(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanh;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzank;->zzB(Ljava/lang/Object;I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzanh;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(IJ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    const/4 p1, 0x4

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzank;->zzo(I)V

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzank;->zzx(Z)V

    return-void
.end method

.method private final zzB(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzg:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzanj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/google/android/gms/internal/ads/zzanj;-><init>(Lcom/google/android/gms/internal/ads/zzanx;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzanh;I)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private final zzC(ILcom/google/android/gms/internal/ads/zzanx;Lcom/google/android/gms/internal/ads/zzanx;)I
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanx;->zzc()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    if-ge v2, v0, :cond_0

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzank;->zzi:Lcom/google/android/gms/internal/ads/zzanw;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzank;->zzv:I

    .line 2
    invoke-virtual {p2, p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzanx;->zzh(ILcom/google/android/gms/internal/ads/zzanv;Lcom/google/android/gms/internal/ads/zzanw;I)I

    move-result p1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    const/4 v4, 0x1

    .line 3
    invoke-virtual {p2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzanv;->zzb:Ljava/lang/Object;

    .line 4
    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/ads/zzanx;->zze(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private final zzD(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzi:Lcom/google/android/gms/internal/ads/zzanw;

    .line 2
    invoke-virtual {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzanx;->zzg(ILcom/google/android/gms/internal/ads/zzanw;Z)Lcom/google/android/gms/internal/ads/zzanw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzank;->zzi:Lcom/google/android/gms/internal/ads/zzanw;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzank;->zzv:I

    .line 3
    invoke-virtual {v0, p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzanx;->zzh(ILcom/google/android/gms/internal/ads/zzanv;Lcom/google/android/gms/internal/ads/zzanw;I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2
.end method

.method private final zzE(Lcom/google/android/gms/internal/ads/zzani;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzani;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zza:Lcom/google/android/gms/internal/ads/zzanx;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanx;->zzf()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    :cond_0
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzani;->zzb:I

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzani;->zzc:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzank;->zzG(Lcom/google/android/gms/internal/ads/zzanx;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    if-ne v2, v0, :cond_1

    return-object p1

    .line 5
    :cond_1
    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzanv;->zzb:Ljava/lang/Object;

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzanx;->zze(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzank;->zzC(ILcom/google/android/gms/internal/ads/zzanx;Lcom/google/android/gms/internal/ads/zzanx;)I

    move-result p1

    if-eq p1, v3, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    .line 9
    invoke-virtual {p1, v1, v0, v1}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzank;->zzF(IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :catch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzano;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    .line 4
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzani;->zzb:I

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzani;->zzc:J

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzano;-><init>(Lcom/google/android/gms/internal/ads/zzanx;IJ)V

    throw v0
.end method

.method private final zzF(IJ)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    const/4 p2, 0x0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzank;->zzG(Lcom/google/android/gms/internal/ads/zzanx;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zzG(Lcom/google/android/gms/internal/ads/zzanx;IJ)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzanx;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzank;->zzH(Lcom/google/android/gms/internal/ads/zzanx;IJJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zzH(Lcom/google/android/gms/internal/ads/zzanx;IJJ)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzanx;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzanx;->zza()I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, v0, p2}, Lcom/google/android/gms/internal/ads/zzaup;->zzc(III)I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzank;->zzi:Lcom/google/android/gms/internal/ads/zzanw;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-wide v5, p5

    .line 2
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzanx;->zzb(ILcom/google/android/gms/internal/ads/zzanw;ZJ)Lcom/google/android/gms/internal/ads/zzanw;

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p3, p5

    if-nez p2, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    .line 3
    invoke-virtual {p1, v0, p2, v0}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    move-result-object p1

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzanv;->zzc:J

    cmp-long v1, p1, p5

    if-eqz v1, :cond_1

    cmp-long p5, p3, p1

    .line 5
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zzI()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzang;->zzj:Z

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzang;->zza:Lcom/google/android/gms/internal/ads/zzasp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzasp;->zza()J

    move-result-wide v0

    :goto_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzank;->zzp(Z)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzank;->zzB:J

    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/zzang;->zzf:J

    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/zzang;->zzh:J

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzJ:Lcom/google/android/gms/internal/ads/zzcjy;

    sub-long/2addr v0, v3

    .line 4
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjy;->zzf(J)Z

    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzank;->zzp(Z)V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzang;->zza:Lcom/google/android/gms/internal/ads/zzasp;

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzasp;->zzb(J)Z

    :cond_2
    return-void
.end method

.method private final zzJ(Lcom/google/android/gms/internal/ads/zzang;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzank;->zza:[Lcom/google/android/gms/internal/ads/zzanr;

    aget-object v5, v5, v3

    .line 2
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzanr;->zze()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v1, v3

    .line 3
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzang;->zzm:Lcom/google/android/gms/internal/ads/zzatv;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzatv;->zzb:Lcom/google/android/gms/internal/ads/zzats;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzats;->zza(I)Lcom/google/android/gms/internal/ads/zzatk;

    move-result-object v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 4
    :cond_2
    aget-boolean v7, v1, v3

    if-eqz v7, :cond_5

    if-eqz v6, :cond_3

    .line 5
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzanr;->zzl()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 6
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzanr;->zzi()Lcom/google/android/gms/internal/ads/zzatb;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzang;->zzd:[Lcom/google/android/gms/internal/ads/zzatb;

    aget-object v7, v7, v3

    if-ne v6, v7, :cond_5

    :cond_3
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzank;->zzm:Lcom/google/android/gms/internal/ads/zzanr;

    if-ne v5, v6, :cond_4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzank;->zzd:Lcom/google/android/gms/internal/ads/zzava;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzank;->zzn:Lcom/google/android/gms/internal/ads/zzaut;

    .line 7
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzava;->zzd(Lcom/google/android/gms/internal/ads/zzaut;)V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzank;->zzn:Lcom/google/android/gms/internal/ads/zzaut;

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzank;->zzm:Lcom/google/android/gms/internal/ads/zzanr;

    .line 8
    :cond_4
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzank;->zzL(Lcom/google/android/gms/internal/ads/zzanr;)V

    .line 9
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzanr;->zzp()V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzg:Landroid/os/Handler;

    const/4 v2, 0x3

    .line 10
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzang;->zzm:Lcom/google/android/gms/internal/ads/zzatv;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 11
    invoke-direct {p0, v1, v4}, Lcom/google/android/gms/internal/ads/zzank;->zzK([ZI)V

    return-void
.end method

.method private final zzK([ZI)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzanr;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzank;->zzp:[Lcom/google/android/gms/internal/ads/zzanr;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_8

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzank;->zza:[Lcom/google/android/gms/internal/ads/zzanr;

    .line 2
    aget-object v4, v4, v2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    .line 3
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzang;->zzm:Lcom/google/android/gms/internal/ads/zzatv;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzatv;->zzb:Lcom/google/android/gms/internal/ads/zzats;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzats;->zza(I)Lcom/google/android/gms/internal/ads/zzatk;

    move-result-object v5

    if-eqz v5, :cond_7

    add-int/lit8 v14, v3, 0x1

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzank;->zzp:[Lcom/google/android/gms/internal/ads/zzanr;

    .line 4
    aput-object v4, v6, v3

    .line 5
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzanr;->zze()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    .line 6
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzang;->zzm:Lcom/google/android/gms/internal/ads/zzatv;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzatv;->zzd:[Lcom/google/android/gms/internal/ads/zzant;

    aget-object v6, v3, v2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzank;->zzr:Z

    const/4 v7, 0x1

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzank;->zzu:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 7
    :goto_1
    aget-boolean v8, p1, v2

    if-nez v8, :cond_1

    if-eqz v3, :cond_1

    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    .line 8
    :goto_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzatk;->zzb()I

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzanm;

    const/4 v8, 0x0

    :goto_3
    if-gtz v8, :cond_2

    .line 9
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzatk;->zzc(I)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    .line 10
    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzang;->zzd:[Lcom/google/android/gms/internal/ads/zzatb;

    aget-object v8, v8, v2

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzank;->zzB:J

    iget-wide v12, v5, Lcom/google/android/gms/internal/ads/zzang;->zzf:J

    move v15, v2

    iget-wide v1, v5, Lcom/google/android/gms/internal/ads/zzang;->zzh:J

    sub-long/2addr v12, v1

    move-object v5, v4

    invoke-interface/range {v5 .. v13}, Lcom/google/android/gms/internal/ads/zzanr;->zzf(Lcom/google/android/gms/internal/ads/zzant;[Lcom/google/android/gms/internal/ads/zzanm;Lcom/google/android/gms/internal/ads/zzatb;JZJ)V

    .line 11
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzanr;->zzd()Lcom/google/android/gms/internal/ads/zzaut;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzank;->zzn:Lcom/google/android/gms/internal/ads/zzaut;

    if-nez v2, :cond_3

    .line 14
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzank;->zzn:Lcom/google/android/gms/internal/ads/zzaut;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzank;->zzm:Lcom/google/android/gms/internal/ads/zzanr;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzank;->zzl:Lcom/google/android/gms/internal/ads/zzanq;

    .line 12
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaut;->zzQ(Lcom/google/android/gms/internal/ads/zzanq;)Lcom/google/android/gms/internal/ads/zzanq;

    goto :goto_4

    .line 11
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple renderer media clocks enabled."

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzamy;->zzc(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/zzamy;

    move-result-object v1

    throw v1

    :cond_4
    :goto_4
    if-eqz v3, :cond_6

    .line 13
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzanr;->zzg()V

    goto :goto_5

    :cond_5
    move v15, v2

    :cond_6
    :goto_5
    move v3, v14

    goto :goto_6

    :cond_7
    move v15, v2

    :goto_6
    add-int/lit8 v2, v15, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private static final zzL(Lcom/google/android/gms/internal/ads/zzanr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzanr;->zze()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzanr;->zzo()V

    :cond_0
    return-void
.end method

.method private static final zzM(Lcom/google/android/gms/internal/ads/zzang;)V
    .locals 0

    :goto_0
    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzang;->zze()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzo(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzu:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzu:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzg:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private final zzp(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzt:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzt:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzg:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private final zzq()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzs:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzd:Lcom/google/android/gms/internal/ads/zzava;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzava;->zza()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzp:[Lcom/google/android/gms/internal/ads/zzanr;

    .line 2
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 3
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzanr;->zzg()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzr()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzd:Lcom/google/android/gms/internal/ads/zzava;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzava;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzp:[Lcom/google/android/gms/internal/ads/zzanr;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzank;->zzL(Lcom/google/android/gms/internal/ads/zzanr;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzs()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzang;->zza:Lcom/google/android/gms/internal/ads/zzasp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzasp;->zzp()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzank;->zzv(J)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzm:Lcom/google/android/gms/internal/ads/zzanr;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanr;->zzF()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzn:Lcom/google/android/gms/internal/ads/zzaut;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaut;->zzP()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzB:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzd:Lcom/google/android/gms/internal/ads/zzava;

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzava;->zzc(J)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzd:Lcom/google/android/gms/internal/ads/zzava;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzava;->zzP()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzB:J

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzB:J

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzang;->zzf:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzang;->zzh:J

    sub-long/2addr v3, v5

    sub-long v0, v1, v3

    .line 2
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    .line 7
    iput-wide v0, v2, Lcom/google/android/gms/internal/ads/zzanh;->zzc:J

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzy:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzp:[Lcom/google/android/gms/internal/ads/zzanr;

    .line 9
    array-length v0, v0

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_3

    move-wide v3, v1

    goto :goto_2

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzang;->zza:Lcom/google/android/gms/internal/ads/zzasp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzasp;->zzq()J

    move-result-wide v3

    .line 9
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    cmp-long v5, v3, v1

    if-nez v5, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    .line 11
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzang;->zzg:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    move-result-object v1

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzanv;->zzc:J

    .line 12
    :cond_4
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzd:J

    return-void
.end method

.method private final zzt(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    add-long/2addr p1, p3

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    .line 4
    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private final zzu(IJ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzank;->zzr()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzs:Z

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzank;->zzo(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzang;->zze()V

    :cond_0
    move-object v4, v3

    goto :goto_2

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_3

    .line 12
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzang;->zzg:I

    if-ne v5, p1, :cond_2

    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzang;->zzj:Z

    if-eqz v5, :cond_2

    move-object v4, v2

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzang;->zze()V

    .line 12
    :goto_1
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    goto :goto_0

    .line 4
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    if-ne p1, v4, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    if-eq p1, v2, :cond_6

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzp:[Lcom/google/android/gms/internal/ads/zzanr;

    .line 5
    array-length v2, p1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_5

    aget-object v6, p1, v5

    .line 6
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzanr;->zzp()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    new-array p1, v0, [Lcom/google/android/gms/internal/ads/zzanr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzp:[Lcom/google/android/gms/internal/ads/zzanr;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzank;->zzn:Lcom/google/android/gms/internal/ads/zzaut;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzank;->zzm:Lcom/google/android/gms/internal/ads/zzanr;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    :cond_6
    if-eqz v4, :cond_8

    iput-object v3, v4, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    .line 7
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzank;->zzJ(Lcom/google/android/gms/internal/ads/zzang;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    .line 8
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzang;->zzk:Z

    if-eqz v0, :cond_7

    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzang;->zza:Lcom/google/android/gms/internal/ads/zzasp;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzasp;->zzr(J)J

    move-result-wide p2

    .line 10
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzank;->zzv(J)V

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzank;->zzI()V

    goto :goto_4

    .line 13
    :cond_8
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    .line 12
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzank;->zzv(J)V

    .line 11
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    .line 13
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method private final zzv(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    if-nez v0, :cond_0

    const-wide/32 v0, 0x3938700

    add-long/2addr p1, v0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzang;->zzf:J

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzang;->zzh:J

    sub-long/2addr v1, v3

    add-long/2addr p1, v1

    .line 1
    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzB:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzd:Lcom/google/android/gms/internal/ads/zzava;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzava;->zzc(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzp:[Lcom/google/android/gms/internal/ads/zzanr;

    .line 2
    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzB:J

    .line 3
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzanr;->zzn(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final zzw()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzank;->zzx(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzJ:Lcom/google/android/gms/internal/ads/zzcjy;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcjy;->zzc()V

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzank;->zzo(I)V

    return-void
.end method

.method private final zzx(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzs:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzd:Lcom/google/android/gms/internal/ads/zzava;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzava;->zzb()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzn:Lcom/google/android/gms/internal/ads/zzaut;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzm:Lcom/google/android/gms/internal/ads/zzanr;

    const-wide/32 v2, 0x3938700

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzB:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzp:[Lcom/google/android/gms/internal/ads/zzanr;

    .line 3
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 4
    :try_start_0
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzank;->zzL(Lcom/google/android/gms/internal/ads/zzanr;)V

    .line 5
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzanr;->zzp()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzamy; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    :goto_1
    const-string v6, "ExoPlayerImplInternal"

    const-string v7, "Stop failed."

    .line 6
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v0, [Lcom/google/android/gms/internal/ads/zzanr;

    .line 5
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzp:[Lcom/google/android/gms/internal/ads/zzanr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    .line 7
    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzank;->zzM(Lcom/google/android/gms/internal/ads/zzang;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzank;->zzp(Z)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzo:Lcom/google/android/gms/internal/ads/zzasr;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzasr;->zzd()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzo:Lcom/google/android/gms/internal/ads/zzasr;

    :cond_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    :cond_3
    return-void
.end method

.method private final zzy(J)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v2

    if-eqz v4, :cond_1

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzanh;->zzc:J

    cmp-long v4, v2, p1

    if-ltz v4, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzang;->zzj:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private final zzz()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzang;->zzj:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    if-ne v1, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzp:[Lcom/google/android/gms/internal/ads/zzanr;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzanr;->zzj()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzang;->zza:Lcom/google/android/gms/internal/ads/zzasp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzasp;->zzm()V

    :cond_3
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 33

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    const/4 v10, 0x1

    .line 1
    :try_start_0
    iget v2, v1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzamy; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v11, 0x7

    const-wide/16 v3, 0x0

    const/4 v14, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v15, 0x4

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x2

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    return v1

    .line 135
    :pswitch_0
    :try_start_1
    iget v1, v1, Landroid/os/Message;->arg1:I

    iput v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzv:I

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    if-nez v2, :cond_0

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    :cond_0
    if-nez v2, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    if-ne v2, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    if-ne v2, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzang;->zzg:I

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzank;->zzi:Lcom/google/android/gms/internal/ads/zzanw;

    .line 136
    invoke-virtual {v11, v12, v13, v14, v1}, Lcom/google/android/gms/internal/ads/zzanx;->zzh(ILcom/google/android/gms/internal/ads/zzanv;Lcom/google/android/gms/internal/ads/zzanw;I)I

    move-result v11

    .line 137
    :goto_2
    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v12, :cond_6

    if-eq v11, v5, :cond_6

    iget v13, v12, Lcom/google/android/gms/internal/ads/zzang;->zzg:I

    if-ne v13, v11, :cond_6

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    if-ne v12, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    or-int/2addr v3, v2

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    if-ne v12, v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    or-int/2addr v4, v2

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzank;->zzi:Lcom/google/android/gms/internal/ads/zzanw;

    .line 138
    invoke-virtual {v2, v13, v11, v14, v1}, Lcom/google/android/gms/internal/ads/zzanx;->zzh(ILcom/google/android/gms/internal/ads/zzanv;Lcom/google/android/gms/internal/ads/zzanw;I)I

    move-result v11

    move-object v2, v12

    goto :goto_2

    :cond_6
    if-eqz v12, :cond_7

    .line 139
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzank;->zzM(Lcom/google/android/gms/internal/ads/zzang;)V

    .line 140
    iput-object v6, v2, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    .line 141
    :cond_7
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzang;->zzg:I

    invoke-direct {v8, v5}, Lcom/google/android/gms/internal/ads/zzank;->zzD(I)Z

    move-result v5

    iput-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzang;->zzi:Z

    if-nez v4, :cond_8

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    :cond_8
    if-nez v3, :cond_9

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v2, :cond_9

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzang;->zzg:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    .line 142
    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzanh;->zzc:J

    invoke-direct {v8, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzank;->zzu(IJ)J

    move-result-wide v3

    new-instance v5, Lcom/google/android/gms/internal/ads/zzanh;

    .line 143
    invoke-direct {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(IJ)V

    iput-object v5, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    :cond_9
    iget v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzu:I

    if-ne v2, v15, :cond_a

    if-eqz v1, :cond_a

    .line 144
    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzank;->zzo(I)V

    :cond_a
    :goto_5
    return v10

    .line 145
    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzanb;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzamy; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 146
    :try_start_2
    array-length v2, v1

    :goto_6
    if-ge v9, v2, :cond_b

    aget-object v3, v1, v9

    .line 147
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzanb;->zza:Lcom/google/android/gms/internal/ads/zzana;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzanb;->zzb:I

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzanb;->zzc:Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzana;->zzr(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzo:Lcom/google/android/gms/internal/ads/zzasr;

    if-eqz v1, :cond_c

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    .line 148
    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_c
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzamy; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzx:I

    add-int/2addr v1, v10

    iput v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzx:I

    .line 149
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 150
    monitor-exit p0

    return v10

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 108
    monitor-enter p0
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzamy; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    iget v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzx:I

    add-int/2addr v2, v10

    iput v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzx:I

    .line 149
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 150
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 151
    :try_start_7
    throw v1
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/zzamy; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 150
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1

    .line 6
    :pswitch_2
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v1, :cond_1c

    const/4 v2, 0x1

    :goto_7
    if-eqz v1, :cond_1c

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzang;->zzj:Z

    if-nez v3, :cond_d

    goto/16 :goto_f

    .line 109
    :cond_d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzang;->zzb()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v2, :cond_17

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    if-eq v2, v3, :cond_e

    const/4 v2, 0x1

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    .line 110
    :goto_8
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzank;->zzM(Lcom/google/android/gms/internal/ads/zzang;)V

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    .line 111
    iput-object v6, v3, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    new-array v4, v7, [Z

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    .line 112
    iget-wide v11, v5, Lcom/google/android/gms/internal/ads/zzanh;->zzc:J

    invoke-virtual {v3, v11, v12, v2, v4}, Lcom/google/android/gms/internal/ads/zzang;->zzd(JZ[Z)J

    move-result-wide v2

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    .line 113
    iget-wide v11, v5, Lcom/google/android/gms/internal/ads/zzanh;->zzc:J

    cmp-long v5, v2, v11

    if-eqz v5, :cond_f

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    .line 114
    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/zzanh;->zzc:J

    .line 115
    invoke-direct {v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzank;->zzv(J)V

    :cond_f
    new-array v2, v7, [Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_9
    if-ge v3, v7, :cond_16

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzank;->zza:[Lcom/google/android/gms/internal/ads/zzanr;

    aget-object v11, v11, v3

    .line 116
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzanr;->zze()I

    move-result v12

    if-eqz v12, :cond_10

    const/4 v12, 0x1

    goto :goto_a

    :cond_10
    const/4 v12, 0x0

    :goto_a
    aput-boolean v12, v2, v3

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    .line 117
    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzang;->zzd:[Lcom/google/android/gms/internal/ads/zzatb;

    aget-object v13, v13, v3

    if-eqz v13, :cond_11

    add-int/lit8 v5, v5, 0x1

    :cond_11
    if-eqz v12, :cond_15

    .line 118
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzanr;->zzi()Lcom/google/android/gms/internal/ads/zzatb;

    move-result-object v12

    if-eq v13, v12, :cond_14

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzank;->zzm:Lcom/google/android/gms/internal/ads/zzanr;

    if-ne v11, v12, :cond_13

    if-nez v13, :cond_12

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzank;->zzd:Lcom/google/android/gms/internal/ads/zzava;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzank;->zzn:Lcom/google/android/gms/internal/ads/zzaut;

    .line 119
    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/zzava;->zzd(Lcom/google/android/gms/internal/ads/zzaut;)V

    :cond_12
    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzank;->zzn:Lcom/google/android/gms/internal/ads/zzaut;

    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzank;->zzm:Lcom/google/android/gms/internal/ads/zzanr;

    .line 120
    :cond_13
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzank;->zzL(Lcom/google/android/gms/internal/ads/zzanr;)V

    .line 121
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzanr;->zzp()V

    goto :goto_b

    :cond_14
    aget-boolean v12, v4, v3

    if-eqz v12, :cond_15

    iget-wide v12, v8, Lcom/google/android/gms/internal/ads/zzank;->zzB:J

    .line 122
    invoke-interface {v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzanr;->zzn(J)V

    :cond_15
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_16
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzg:Landroid/os/Handler;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzang;->zzm:Lcom/google/android/gms/internal/ads/zzatv;

    .line 123
    invoke-virtual {v3, v14, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 125
    invoke-direct {v8, v2, v5}, Lcom/google/android/gms/internal/ads/zzank;->zzK([ZI)V

    goto :goto_d

    .line 134
    :cond_17
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    .line 126
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    :goto_c
    if-eqz v1, :cond_18

    .line 127
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzang;->zze()V

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    goto :goto_c

    :cond_18
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    .line 128
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    .line 129
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzang;->zzj:Z

    if-eqz v2, :cond_19

    .line 130
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzang;->zzh:J

    iget-wide v4, v8, Lcom/google/android/gms/internal/ads/zzank;->zzB:J

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzang;->zzf:J

    sub-long/2addr v11, v2

    sub-long/2addr v4, v11

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    .line 131
    invoke-virtual {v3, v1, v2, v9}, Lcom/google/android/gms/internal/ads/zzang;->zzc(JZ)J

    .line 132
    :cond_19
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzank;->zzI()V

    .line 133
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzank;->zzs()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    .line 134
    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_f

    .line 131
    :cond_1a
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    if-ne v1, v3, :cond_1b

    const/4 v3, 0x0

    goto :goto_e

    :cond_1b
    const/4 v3, 0x1

    :goto_e
    and-int/2addr v2, v3

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    goto/16 :goto_7

    :cond_1c
    :goto_f
    return v10

    .line 152
    :pswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzasp;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v2, :cond_1d

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzang;->zza:Lcom/google/android/gms/internal/ads/zzasp;

    if-ne v2, v1, :cond_1d

    .line 153
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzank;->zzI()V

    :cond_1d
    return v10

    .line 154
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzasp;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v2, :cond_20

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzang;->zza:Lcom/google/android/gms/internal/ads/zzasp;

    if-eq v3, v1, :cond_1e

    goto :goto_10

    :cond_1e
    iput-boolean v10, v2, Lcom/google/android/gms/internal/ads/zzang;->zzj:Z

    .line 155
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzang;->zzb()Z

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzang;->zzh:J

    invoke-virtual {v2, v3, v4, v9}, Lcom/google/android/gms/internal/ads/zzang;->zzc(JZ)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzang;->zzh:J

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    if-nez v1, :cond_1f

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    .line 156
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzang;->zzh:J

    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/internal/ads/zzank;->zzv(J)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    .line 157
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzank;->zzJ(Lcom/google/android/gms/internal/ads/zzang;)V

    .line 158
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzank;->zzI()V

    :cond_20
    :goto_10
    return v10

    .line 159
    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    .line 160
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzanx;

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    .line 161
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_24

    iget v4, v8, Lcom/google/android/gms/internal/ads/zzank;->zzz:I

    if-lez v4, :cond_22

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzA:Lcom/google/android/gms/internal/ads/zzani;

    .line 162
    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/zzank;->zzE(Lcom/google/android/gms/internal/ads/zzani;)Landroid/util/Pair;

    move-result-object v3

    iget v4, v8, Lcom/google/android/gms/internal/ads/zzank;->zzz:I

    iput v9, v8, Lcom/google/android/gms/internal/ads/zzank;->zzz:I

    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzank;->zzA:Lcom/google/android/gms/internal/ads/zzani;

    if-nez v3, :cond_21

    .line 163
    invoke-direct {v8, v1, v4}, Lcom/google/android/gms/internal/ads/zzank;->zzA(Ljava/lang/Object;I)V

    goto/16 :goto_18

    :cond_21
    new-instance v7, Lcom/google/android/gms/internal/ads/zzanh;

    .line 164
    iget-object v11, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v7, v11, v14, v15}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(IJ)V

    iput-object v7, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    goto :goto_11

    .line 195
    :cond_22
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    .line 165
    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/zzanh;->zzb:J

    cmp-long v4, v14, v12

    if-nez v4, :cond_24

    .line 166
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzanx;->zzf()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 167
    invoke-direct {v8, v1, v9}, Lcom/google/android/gms/internal/ads/zzank;->zzA(Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 168
    :cond_23
    invoke-direct {v8, v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzank;->zzF(IJ)Landroid/util/Pair;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzanh;

    .line 169
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v4, v7, v14, v15}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(IJ)V

    iput-object v4, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    :cond_24
    const/4 v4, 0x0

    .line 164
    :goto_11
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    if-nez v3, :cond_25

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    :cond_25
    if-nez v3, :cond_26

    .line 170
    invoke-direct {v8, v1, v4}, Lcom/google/android/gms/internal/ads/zzank;->zzB(Ljava/lang/Object;I)V

    goto/16 :goto_18

    :cond_26
    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzang;->zzb:Ljava/lang/Object;

    .line 171
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzanx;->zze(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v5, :cond_2a

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzang;->zzg:I

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    .line 172
    invoke-direct {v8, v6, v2, v7}, Lcom/google/android/gms/internal/ads/zzank;->zzC(ILcom/google/android/gms/internal/ads/zzanx;Lcom/google/android/gms/internal/ads/zzanx;)I

    move-result v2

    if-ne v2, v5, :cond_27

    .line 173
    invoke-direct {v8, v1, v4}, Lcom/google/android/gms/internal/ads/zzank;->zzA(Ljava/lang/Object;I)V

    goto/16 :goto_18

    :cond_27
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    .line 174
    invoke-virtual {v2, v9, v6, v9}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    .line 175
    invoke-direct {v8, v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzank;->zzF(IJ)Landroid/util/Pair;

    move-result-object v2

    .line 176
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 177
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    .line 178
    invoke-virtual {v2, v6, v7, v10}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzanv;->zzb:Ljava/lang/Object;

    iput v5, v3, Lcom/google/android/gms/internal/ads/zzang;->zzg:I

    .line 179
    :goto_12
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v3, :cond_29

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzang;->zzb:Ljava/lang/Object;

    .line 180
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eq v10, v7, :cond_28

    const/4 v7, -0x1

    goto :goto_13

    :cond_28
    move v7, v6

    :goto_13
    iput v7, v3, Lcom/google/android/gms/internal/ads/zzang;->zzg:I

    goto :goto_12

    .line 181
    :cond_29
    invoke-direct {v8, v6, v11, v12}, Lcom/google/android/gms/internal/ads/zzank;->zzu(IJ)J

    move-result-wide v2

    new-instance v5, Lcom/google/android/gms/internal/ads/zzanh;

    .line 182
    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(IJ)V

    iput-object v5, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    .line 183
    invoke-direct {v8, v1, v4}, Lcom/google/android/gms/internal/ads/zzank;->zzB(Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 184
    :cond_2a
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzank;->zzD(I)Z

    move-result v2

    iput v9, v3, Lcom/google/android/gms/internal/ads/zzang;->zzg:I

    iput-boolean v2, v3, Lcom/google/android/gms/internal/ads/zzang;->zzi:Z

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    if-ne v3, v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_14

    :cond_2b
    const/4 v2, 0x0

    :goto_14
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    .line 185
    iget v12, v11, Lcom/google/android/gms/internal/ads/zzanh;->zza:I

    if-eqz v12, :cond_2c

    new-instance v12, Lcom/google/android/gms/internal/ads/zzanh;

    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/zzanh;->zzb:J

    .line 186
    invoke-direct {v12, v9, v13, v14}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(IJ)V

    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/zzanh;->zzc:J

    iput-wide v13, v12, Lcom/google/android/gms/internal/ads/zzanh;->zzc:J

    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/zzanh;->zzd:J

    iput-wide v13, v12, Lcom/google/android/gms/internal/ads/zzanh;->zzd:J

    iput-object v12, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    .line 187
    :cond_2c
    :goto_15
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v11, :cond_30

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzank;->zzi:Lcom/google/android/gms/internal/ads/zzanw;

    iget v15, v8, Lcom/google/android/gms/internal/ads/zzank;->zzv:I

    .line 188
    invoke-virtual {v12, v7, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzanx;->zzh(ILcom/google/android/gms/internal/ads/zzanv;Lcom/google/android/gms/internal/ads/zzanw;I)I

    move-result v7

    if-eq v7, v5, :cond_2e

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzang;->zzb:Ljava/lang/Object;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    .line 189
    invoke-virtual {v13, v7, v14, v10}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzanv;->zzb:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2e

    .line 190
    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzank;->zzD(I)Z

    move-result v3

    iput v7, v11, Lcom/google/android/gms/internal/ads/zzang;->zzg:I

    iput-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzang;->zzi:Z

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    if-ne v11, v3, :cond_2d

    const/4 v3, 0x1

    goto :goto_16

    :cond_2d
    const/4 v3, 0x0

    :goto_16
    or-int/2addr v2, v3

    move-object v3, v11

    goto :goto_15

    :cond_2e
    if-nez v2, :cond_2f

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    .line 191
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzang;->zzg:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    .line 192
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzanh;->zzc:J

    invoke-direct {v8, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzank;->zzu(IJ)J

    move-result-wide v5

    new-instance v3, Lcom/google/android/gms/internal/ads/zzanh;

    .line 193
    invoke-direct {v3, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(IJ)V

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    goto :goto_17

    .line 196
    :cond_2f
    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    .line 194
    iput-object v6, v3, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    .line 195
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzank;->zzM(Lcom/google/android/gms/internal/ads/zzang;)V

    .line 196
    :cond_30
    :goto_17
    invoke-direct {v8, v1, v4}, Lcom/google/android/gms/internal/ads/zzank;->zzB(Ljava/lang/Object;I)V

    :goto_18
    return v10

    .line 104
    :pswitch_6
    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzank;->zzx(Z)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzJ:Lcom/google/android/gms/internal/ads/zzcjy;

    .line 105
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcjy;->zzd()V

    .line 106
    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzank;->zzo(I)V

    monitor-enter p0
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzamy; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    :try_start_a
    iput-boolean v10, v8, Lcom/google/android/gms/internal/ads/zzank;->zzq:Z

    .line 107
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 108
    monitor-exit p0

    return v10

    :catchall_3
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v1

    .line 197
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzank;->zzw()V

    return v10

    .line 198
    :pswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzanq;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzn:Lcom/google/android/gms/internal/ads/zzaut;

    if-eqz v2, :cond_31

    .line 199
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzaut;->zzQ(Lcom/google/android/gms/internal/ads/zzanq;)Lcom/google/android/gms/internal/ads/zzanq;

    move-result-object v1

    goto :goto_19

    .line 201
    :cond_31
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzd:Lcom/google/android/gms/internal/ads/zzava;

    .line 200
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzava;->zzQ(Lcom/google/android/gms/internal/ads/zzanq;)Lcom/google/android/gms/internal/ads/zzanq;

    .line 199
    :goto_19
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzl:Lcom/google/android/gms/internal/ads/zzanq;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzg:Landroid/os/Handler;

    .line 201
    invoke-virtual {v2, v11, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return v10

    .line 202
    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzani;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    if-nez v2, :cond_32

    iget v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzz:I

    add-int/2addr v2, v10

    iput v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzz:I

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzA:Lcom/google/android/gms/internal/ads/zzani;

    goto/16 :goto_1d

    .line 203
    :cond_32
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzank;->zzE(Lcom/google/android/gms/internal/ads/zzani;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_33

    new-instance v1, Lcom/google/android/gms/internal/ads/zzanh;

    .line 204
    invoke-direct {v1, v9, v3, v4}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzg:Landroid/os/Handler;

    .line 205
    invoke-virtual {v2, v15, v10, v9, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzanh;

    .line 206
    invoke-direct {v1, v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    .line 207
    invoke-direct {v8, v15}, Lcom/google/android/gms/internal/ads/zzank;->zzo(I)V

    .line 208
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzank;->zzx(Z)V

    goto :goto_1d

    .line 209
    :cond_33
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzani;->zzc:J

    cmp-long v1, v3, v12

    if-nez v1, :cond_34

    const/4 v1, 0x1

    goto :goto_1a

    :cond_34
    const/4 v1, 0x0

    .line 210
    :goto_1a
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 211
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/zzamy; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    :try_start_c
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    .line 212
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzanh;->zza:I

    if-ne v3, v6, :cond_35

    const-wide/16 v16, 0x3e8

    div-long v6, v4, v16

    iget-wide v11, v2, Lcom/google/android/gms/internal/ads/zzanh;->zzc:J

    div-long v11, v11, v16
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    cmp-long v2, v6, v11

    if-nez v2, :cond_35

    :try_start_d
    new-instance v2, Lcom/google/android/gms/internal/ads/zzanh;

    .line 214
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(IJ)V

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzg:Landroid/os/Handler;

    .line 215
    invoke-virtual {v3, v15, v1, v9, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 216
    :goto_1b
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_d
    .catch Lcom/google/android/gms/internal/ads/zzamy; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_1d

    .line 213
    :cond_35
    :try_start_e
    invoke-direct {v8, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzank;->zzu(IJ)J

    move-result-wide v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    cmp-long v2, v4, v6

    if-eqz v2, :cond_36

    const/4 v2, 0x1

    goto :goto_1c

    :cond_36
    const/4 v2, 0x0

    :goto_1c
    or-int/2addr v1, v2

    :try_start_f
    new-instance v2, Lcom/google/android/gms/internal/ads/zzanh;

    .line 214
    invoke-direct {v2, v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(IJ)V

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzg:Landroid/os/Handler;

    .line 215
    invoke-virtual {v3, v15, v1, v9, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    goto :goto_1b

    :goto_1d
    return v10

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 150
    new-instance v6, Lcom/google/android/gms/internal/ads/zzanh;

    .line 214
    invoke-direct {v6, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(IJ)V

    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzg:Landroid/os/Handler;

    .line 215
    invoke-virtual {v3, v15, v1, v9, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 217
    throw v2

    :pswitch_a
    const-wide/16 v16, 0x3e8

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    if-nez v1, :cond_37

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzo:Lcom/google/android/gms/internal/ads/zzasr;

    .line 61
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzasr;->zzb()V

    move-wide v11, v5

    goto/16 :goto_2f

    .line 81
    :cond_37
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    if-nez v1, :cond_38

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    .line 7
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzanh;->zza:I

    goto :goto_1e

    .line 18
    :cond_38
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzang;->zzg:I

    iget-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzang;->zzi:Z

    if-nez v7, :cond_40

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzang;->zza()Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    .line 4
    invoke-virtual {v1, v2, v7, v9}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    move-result-object v1

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzanv;->zzc:J

    cmp-long v1, v14, v12

    if-eqz v1, :cond_40

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v1, :cond_39

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    .line 5
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzang;->zzc:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzang;->zzc:I

    sub-int/2addr v7, v1

    const/16 v1, 0x64

    if-eq v7, v1, :cond_40

    :cond_39
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzank;->zzi:Lcom/google/android/gms/internal/ads/zzanw;

    iget v15, v8, Lcom/google/android/gms/internal/ads/zzank;->zzv:I

    .line 6
    invoke-virtual {v1, v2, v7, v14, v15}, Lcom/google/android/gms/internal/ads/zzanx;->zzh(ILcom/google/android/gms/internal/ads/zzanv;Lcom/google/android/gms/internal/ads/zzanw;I)I

    move-result v1

    .line 7
    :goto_1e
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzanx;->zzc()I

    move-result v2

    if-lt v1, v2, :cond_3a

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzo:Lcom/google/android/gms/internal/ads/zzasr;

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzasr;->zzb()V

    goto/16 :goto_24

    .line 27
    :cond_3a
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    if-nez v2, :cond_3b

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    .line 10
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzanh;->zzc:J

    :goto_1f
    move-wide v11, v5

    const/4 v15, 0x2

    goto :goto_20

    .line 19
    :cond_3b
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    .line 11
    invoke-virtual {v2, v1, v7, v9}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzank;->zzi:Lcom/google/android/gms/internal/ads/zzanw;

    .line 12
    invoke-virtual {v2, v9, v7, v9}, Lcom/google/android/gms/internal/ads/zzanx;->zzg(ILcom/google/android/gms/internal/ads/zzanw;Z)Lcom/google/android/gms/internal/ads/zzanw;

    if-eqz v1, :cond_3c

    goto :goto_1f

    :cond_3c
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzang;->zzf:J

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzang;->zzh:J

    sub-long/2addr v14, v11

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    .line 13
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzang;->zzg:I

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    .line 14
    invoke-virtual {v2, v1, v7, v9}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzanv;->zzc:J

    add-long/2addr v14, v1

    iget-wide v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzB:J

    sub-long/2addr v14, v1

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    const/4 v7, 0x0

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    move-object/from16 v1, p0

    move v3, v7

    move-wide v6, v5

    move-wide v4, v11

    move-wide v11, v6

    const/4 v15, 0x2

    move-wide v6, v13

    .line 16
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzank;->zzH(Lcom/google/android/gms/internal/ads/zzanx;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 17
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 18
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move v1, v2

    .line 10
    :goto_20
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    if-nez v2, :cond_3d

    const-wide/32 v5, 0x3938700

    add-long/2addr v5, v3

    :goto_21
    move-wide/from16 v21, v5

    goto :goto_22

    .line 24
    :cond_3d
    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/zzang;->zzf:J

    iget-wide v13, v2, Lcom/google/android/gms/internal/ads/zzang;->zzh:J

    sub-long/2addr v5, v13

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzang;->zzg:I

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    .line 19
    invoke-virtual {v7, v2, v13, v9}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    move-result-object v2

    iget-wide v13, v2, Lcom/google/android/gms/internal/ads/zzanv;->zzc:J

    add-long/2addr v5, v13

    goto :goto_21

    .line 10
    :goto_22
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    if-nez v2, :cond_3e

    const/16 v27, 0x0

    goto :goto_23

    .line 24
    :cond_3e
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzang;->zzc:I

    add-int/2addr v2, v10

    move/from16 v27, v2

    .line 20
    :goto_23
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzank;->zzD(I)Z

    move-result v29

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    .line 21
    invoke-virtual {v2, v1, v5, v10}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzang;

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzank;->zza:[Lcom/google/android/gms/internal/ads/zzanr;

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzank;->zzb:[Lcom/google/android/gms/internal/ads/zzans;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzank;->zzc:Lcom/google/android/gms/internal/ads/zzatu;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzank;->zzJ:Lcom/google/android/gms/internal/ads/zzcjy;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzank;->zzo:Lcom/google/android/gms/internal/ads/zzasr;

    iget-object v15, v8, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzanv;->zzb:Ljava/lang/Object;

    const/16 v32, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    move/from16 v28, v1

    move-wide/from16 v30, v3

    .line 22
    invoke-direct/range {v18 .. v32}, Lcom/google/android/gms/internal/ads/zzang;-><init>([Lcom/google/android/gms/internal/ads/zzanr;[Lcom/google/android/gms/internal/ads/zzans;JLcom/google/android/gms/internal/ads/zzatu;Lcom/google/android/gms/internal/ads/zzcjy;Lcom/google/android/gms/internal/ads/zzasr;Ljava/lang/Object;IIZJ[B)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v1, :cond_3f

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    :cond_3f
    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    .line 23
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzang;->zza:Lcom/google/android/gms/internal/ads/zzasp;

    invoke-interface {v1, v8, v3, v4}, Lcom/google/android/gms/internal/ads/zzasp;->zzl(Lcom/google/android/gms/internal/ads/zzaso;J)V

    .line 24
    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzank;->zzp(Z)V

    goto :goto_25

    :cond_40
    :goto_24
    move-wide v11, v5

    .line 9
    :cond_41
    :goto_25
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v1, :cond_43

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzang;->zza()Z

    move-result v1

    if-eqz v1, :cond_42

    goto :goto_26

    .line 52
    :cond_42
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v1, :cond_44

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzt:Z

    if-nez v1, :cond_44

    .line 27
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzank;->zzI()V

    goto :goto_27

    .line 26
    :cond_43
    :goto_26
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzank;->zzp(Z)V

    :cond_44
    :goto_27
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v1, :cond_4f

    :goto_28
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    if-eq v1, v2, :cond_45

    iget-wide v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzB:J

    .line 28
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/zzang;->zzf:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_45

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzang;->zze()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    .line 30
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzank;->zzJ(Lcom/google/android/gms/internal/ads/zzang;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzanh;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    .line 31
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzang;->zzg:I

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzang;->zzh:J

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    .line 32
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzank;->zzs()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzg:Landroid/os/Handler;

    const/4 v2, 0x5

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    .line 33
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_28

    .line 34
    :cond_45
    iget-boolean v1, v2, Lcom/google/android/gms/internal/ads/zzang;->zzi:Z

    if-eqz v1, :cond_47

    const/4 v1, 0x0

    :goto_29
    const/4 v2, 0x2

    if-ge v1, v2, :cond_4f

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zza:[Lcom/google/android/gms/internal/ads/zzanr;

    .line 56
    aget-object v2, v2, v1

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    .line 57
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzang;->zzd:[Lcom/google/android/gms/internal/ads/zzatb;

    aget-object v3, v3, v1

    if-eqz v3, :cond_46

    .line 58
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzanr;->zzi()Lcom/google/android/gms/internal/ads/zzatb;

    move-result-object v4

    if-ne v4, v3, :cond_46

    .line 59
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzanr;->zzj()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 60
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzanr;->zzk()V

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_47
    const/4 v1, 0x0

    :goto_2a
    const/4 v2, 0x2

    if-ge v1, v2, :cond_49

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zza:[Lcom/google/android/gms/internal/ads/zzanr;

    .line 35
    aget-object v2, v2, v1

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    .line 36
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzang;->zzd:[Lcom/google/android/gms/internal/ads/zzatb;

    aget-object v3, v3, v1

    .line 37
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzanr;->zzi()Lcom/google/android/gms/internal/ads/zzatb;

    move-result-object v4

    if-ne v4, v3, :cond_4f

    if-eqz v3, :cond_48

    .line 38
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzanr;->zzj()Z

    move-result v2

    if-eqz v2, :cond_4f

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_49
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    .line 39
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzang;->zzl:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v2, :cond_4f

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzang;->zzj:Z

    if-eqz v3, :cond_4f

    .line 40
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzang;->zzm:Lcom/google/android/gms/internal/ads/zzatv;

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    .line 41
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzang;->zzm:Lcom/google/android/gms/internal/ads/zzatv;

    .line 42
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzang;->zza:Lcom/google/android/gms/internal/ads/zzasp;

    .line 43
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzasp;->zzp()J

    move-result-wide v4

    const/4 v2, 0x0

    const/4 v6, 0x2

    :goto_2b
    if-ge v2, v6, :cond_4f

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzank;->zza:[Lcom/google/android/gms/internal/ads/zzanr;

    .line 44
    aget-object v6, v6, v2

    .line 45
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzatv;->zzb:Lcom/google/android/gms/internal/ads/zzats;

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzats;->zza(I)Lcom/google/android/gms/internal/ads/zzatk;

    move-result-object v7

    if-nez v7, :cond_4b

    :cond_4a
    :goto_2c
    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    goto :goto_2e

    :cond_4b
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v4, v13

    if-eqz v7, :cond_4c

    .line 46
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzanr;->zzk()V

    goto :goto_2c

    .line 47
    :cond_4c
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzanr;->zzl()Z

    move-result v7

    if-nez v7, :cond_4a

    .line 48
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzatv;->zzb:Lcom/google/android/gms/internal/ads/zzats;

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzats;->zza(I)Lcom/google/android/gms/internal/ads/zzatk;

    move-result-object v7

    .line 49
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzatv;->zzd:[Lcom/google/android/gms/internal/ads/zzant;

    aget-object v13, v13, v2

    .line 50
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/zzatv;->zzd:[Lcom/google/android/gms/internal/ads/zzant;

    aget-object v14, v14, v2

    if-eqz v7, :cond_4e

    .line 51
    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzant;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4e

    .line 53
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzatk;->zzb()I

    new-array v13, v10, [Lcom/google/android/gms/internal/ads/zzanm;

    const/4 v14, 0x0

    :goto_2d
    if-gtz v14, :cond_4d

    .line 54
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzatk;->zzc(I)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v15

    aput-object v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2d

    :cond_4d
    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzank;->zzD:Lcom/google/android/gms/internal/ads/zzang;

    .line 55
    iget-object v14, v7, Lcom/google/android/gms/internal/ads/zzang;->zzd:[Lcom/google/android/gms/internal/ads/zzatb;

    aget-object v14, v14, v2

    iget-wide v9, v7, Lcom/google/android/gms/internal/ads/zzang;->zzf:J

    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/zzang;->zzh:J

    sub-long/2addr v9, v3

    invoke-interface {v6, v13, v14, v9, v10}, Lcom/google/android/gms/internal/ads/zzanr;->zzh([Lcom/google/android/gms/internal/ads/zzanm;Lcom/google/android/gms/internal/ads/zzatb;J)V

    goto :goto_2e

    :cond_4e
    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    .line 52
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzanr;->zzk()V

    :goto_2e
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v19

    move-wide/from16 v4, v20

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_2b

    .line 61
    :cond_4f
    :goto_2f
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    const-wide/16 v2, 0xa

    if-nez v1, :cond_50

    .line 62
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzank;->zzz()V

    .line 63
    invoke-direct {v8, v11, v12, v2, v3}, Lcom/google/android/gms/internal/ads/zzank;->zzt(JJ)V

    :goto_30
    const/4 v1, 0x1

    goto/16 :goto_3f

    :cond_50
    const-string v1, "doSomeWork"

    .line 64
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzavc;->zza(Ljava/lang/String;)V

    .line 65
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzank;->zzs()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    .line 66
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzang;->zza:Lcom/google/android/gms/internal/ads/zzasp;

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzanh;->zzc:J

    invoke-interface {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzasp;->zzo(J)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzp:[Lcom/google/android/gms/internal/ads/zzanr;

    .line 67
    array-length v4, v1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_31
    if-ge v7, v4, :cond_56

    aget-object v9, v1, v7

    iget-wide v13, v8, Lcom/google/android/gms/internal/ads/zzank;->zzB:J

    iget-wide v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzy:J

    .line 68
    invoke-interface {v9, v13, v14, v2, v3}, Lcom/google/android/gms/internal/ads/zzanr;->zzD(JJ)V

    if-eqz v6, :cond_51

    .line 69
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzanr;->zzF()Z

    move-result v2

    if-eqz v2, :cond_51

    const/4 v6, 0x1

    goto :goto_32

    :cond_51
    const/4 v6, 0x0

    .line 70
    :goto_32
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzanr;->zzE()Z

    move-result v2

    if-nez v2, :cond_53

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzanr;->zzF()Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_33

    :cond_52
    const/4 v2, 0x0

    goto :goto_34

    :cond_53
    :goto_33
    const/4 v2, 0x1

    :goto_34
    if-nez v2, :cond_54

    .line 71
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzanr;->zzm()V

    :cond_54
    if-eqz v5, :cond_55

    if-eqz v2, :cond_55

    const/4 v5, 0x1

    goto :goto_35

    :cond_55
    const/4 v5, 0x0

    :goto_35
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v2, 0xa

    goto :goto_31

    :cond_56
    if-nez v5, :cond_57

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzank;->zzz()V

    :cond_57
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzn:Lcom/google/android/gms/internal/ads/zzaut;

    if-eqz v1, :cond_58

    .line 73
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaut;->zzR()Lcom/google/android/gms/internal/ads/zzanq;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzl:Lcom/google/android/gms/internal/ads/zzanq;

    .line 74
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzanq;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzl:Lcom/google/android/gms/internal/ads/zzanq;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzd:Lcom/google/android/gms/internal/ads/zzava;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzn:Lcom/google/android/gms/internal/ads/zzaut;

    .line 75
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzava;->zzd(Lcom/google/android/gms/internal/ads/zzaut;)V

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzg:Landroid/os/Handler;

    const/4 v3, 0x7

    .line 76
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_58
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    .line 78
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzang;->zzg:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzanv;->zzc:J

    if-eqz v6, :cond_5a

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v3

    if-eqz v6, :cond_59

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    .line 79
    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzanh;->zzc:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_5a

    :cond_59
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzE:Lcom/google/android/gms/internal/ads/zzang;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzang;->zzi:Z

    if-eqz v3, :cond_5a

    const/4 v3, 0x4

    .line 95
    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/zzank;->zzo(I)V

    .line 96
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzank;->zzr()V

    goto/16 :goto_3a

    .line 102
    :cond_5a
    iget v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzu:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_60

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzp:[Lcom/google/android/gms/internal/ads/zzanr;

    .line 84
    array-length v3, v3

    if-lez v3, :cond_5f

    if-eqz v5, :cond_62

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzs:Z

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    .line 85
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzang;->zzj:Z

    if-nez v3, :cond_5b

    .line 87
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzang;->zzh:J

    goto :goto_36

    .line 86
    :cond_5b
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzang;->zza:Lcom/google/android/gms/internal/ads/zzasp;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzasp;->zzq()J

    move-result-wide v2

    :goto_36
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_5d

    .line 87
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    .line 88
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzang;->zzi:Z

    if-eqz v3, :cond_5c

    goto :goto_38

    .line 94
    :cond_5c
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzF:Lcom/google/android/gms/internal/ads/zzanx;

    .line 89
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzang;->zzg:I

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzank;->zzj:Lcom/google/android/gms/internal/ads/zzanv;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzanv;->zzc:J

    :cond_5d
    iget-boolean v4, v8, Lcom/google/android/gms/internal/ads/zzank;->zzG:Z

    if-eqz v4, :cond_5e

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzJ:Lcom/google/android/gms/internal/ads/zzcjy;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    .line 90
    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzanh;->zzd:J

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    iget-wide v6, v8, Lcom/google/android/gms/internal/ads/zzank;->zzB:J

    iget-wide v9, v5, Lcom/google/android/gms/internal/ads/zzang;->zzf:J

    iget-wide v13, v5, Lcom/google/android/gms/internal/ads/zzang;->zzh:J

    sub-long/2addr v9, v13

    sub-long/2addr v6, v9

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzcjy;->zze(JZ)Z

    move-result v1

    goto :goto_37

    :cond_5e
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzank;->zzJ:Lcom/google/android/gms/internal/ads/zzcjy;

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzank;->zzC:Lcom/google/android/gms/internal/ads/zzang;

    iget-wide v6, v8, Lcom/google/android/gms/internal/ads/zzank;->zzB:J

    iget-wide v9, v5, Lcom/google/android/gms/internal/ads/zzang;->zzf:J

    iget-wide v13, v5, Lcom/google/android/gms/internal/ads/zzang;->zzh:J

    sub-long/2addr v9, v13

    sub-long/2addr v6, v9

    sub-long/2addr v2, v6

    .line 91
    invoke-virtual {v4, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzcjy;->zze(JZ)Z

    move-result v1

    :goto_37
    if-eqz v1, :cond_62

    goto :goto_38

    .line 92
    :cond_5f
    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/internal/ads/zzank;->zzy(J)Z

    move-result v1

    if-eqz v1, :cond_62

    :goto_38
    const/4 v1, 0x3

    .line 93
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzank;->zzo(I)V

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzr:Z

    if-eqz v1, :cond_62

    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzank;->zzq()V

    goto :goto_3a

    :cond_60
    const/4 v4, 0x3

    if-ne v3, v4, :cond_62

    .line 92
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzp:[Lcom/google/android/gms/internal/ads/zzanr;

    .line 80
    array-length v3, v3

    if-lez v3, :cond_61

    goto :goto_39

    .line 81
    :cond_61
    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/internal/ads/zzank;->zzy(J)Z

    move-result v5

    :goto_39
    if-nez v5, :cond_62

    .line 80
    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzr:Z

    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzs:Z

    const/4 v1, 0x2

    .line 82
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzank;->zzo(I)V

    .line 83
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzank;->zzr()V

    .line 96
    :cond_62
    :goto_3a
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzu:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_63

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzp:[Lcom/google/android/gms/internal/ads/zzanr;

    .line 97
    array-length v2, v1

    const/4 v9, 0x0

    :goto_3b
    if-ge v9, v2, :cond_63

    aget-object v3, v1, v9

    .line 98
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzanr;->zzm()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    :cond_63
    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzr:Z

    if-eqz v1, :cond_64

    iget v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzu:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_65

    :cond_64
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzu:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_67

    :cond_65
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzH:I

    if-lez v1, :cond_66

    iget v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzH:I

    int-to-long v2, v1

    goto :goto_3c

    :cond_66
    const-wide/16 v2, 0xa

    .line 99
    :goto_3c
    invoke-direct {v8, v11, v12, v2, v3}, Lcom/google/android/gms/internal/ads/zzank;->zzt(JJ)V

    goto :goto_3e

    .line 103
    :cond_67
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzp:[Lcom/google/android/gms/internal/ads/zzanr;

    .line 100
    array-length v1, v1

    if-eqz v1, :cond_69

    iget v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzI:I

    if-lez v1, :cond_68

    iget v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzI:I

    int-to-long v1, v1

    goto :goto_3d

    :cond_68
    move-wide/from16 v1, v16

    .line 101
    :goto_3d
    invoke-direct {v8, v11, v12, v1, v2}, Lcom/google/android/gms/internal/ads/zzank;->zzt(JJ)V

    goto :goto_3e

    :cond_69
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    const/4 v2, 0x2

    .line 102
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    :goto_3e
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzavc;->zzb()V

    goto/16 :goto_30

    :goto_3f
    return v1

    .line 218
    :pswitch_b
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_6a

    const/4 v1, 0x1

    goto :goto_40

    :cond_6a
    const/4 v1, 0x0

    :goto_40
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzs:Z

    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzr:Z

    if-nez v1, :cond_6c

    .line 219
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzank;->zzr()V

    .line 220
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzank;->zzs()V

    :cond_6b
    :goto_41
    const/4 v1, 0x1

    goto :goto_42

    :cond_6c
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzu:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6d

    .line 222
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzank;->zzq()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    const/4 v2, 0x2

    .line 223
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_41

    :cond_6d
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6b

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    .line 221
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_41

    :goto_42
    return v1

    .line 224
    :pswitch_c
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzasr;

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzg:Landroid/os/Handler;

    const/4 v4, 0x0

    .line 225
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v3, 0x1

    .line 226
    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/zzank;->zzx(Z)V

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzank;->zzJ:Lcom/google/android/gms/internal/ads/zzcjy;

    .line 227
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcjy;->zza()V

    if-eqz v1, :cond_6e

    new-instance v1, Lcom/google/android/gms/internal/ads/zzanh;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 228
    invoke-direct {v1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzk:Lcom/google/android/gms/internal/ads/zzanh;

    :cond_6e
    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzo:Lcom/google/android/gms/internal/ads/zzasr;

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzank;->zzh:Lcom/google/android/gms/internal/ads/zzanc;

    const/4 v3, 0x1

    .line 229
    invoke-interface {v2, v1, v3, v8}, Lcom/google/android/gms/internal/ads/zzasr;->zza(Lcom/google/android/gms/internal/ads/zzanc;ZLcom/google/android/gms/internal/ads/zzasq;)V

    const/4 v1, 0x2

    .line 230
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzank;->zzo(I)V

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    .line 231
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_f
    .catch Lcom/google/android/gms/internal/ads/zzamy; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    return v3

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v1, 0x1

    const/16 v3, 0x8

    goto :goto_43

    :catch_1
    move-exception v0

    move-object v2, v0

    const/4 v1, 0x1

    const/16 v3, 0x8

    goto :goto_44

    :catch_2
    move-exception v0

    move-object v1, v0

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Internal runtime error."

    .line 232
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzank;->zzg:Landroid/os/Handler;

    .line 233
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzamy;->zzc(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/zzamy;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzank;->zzw()V

    const/4 v1, 0x1

    return v1

    :catch_3
    move-exception v0

    const/4 v1, 0x1

    const/16 v3, 0x8

    move-object v2, v0

    :goto_43
    const-string v4, "ExoPlayerImplInternal"

    const-string v5, "Source error."

    .line 236
    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzank;->zzg:Landroid/os/Handler;

    .line 237
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzamy;->zzb(Ljava/io/IOException;)Lcom/google/android/gms/internal/ads/zzamy;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzank;->zzw()V

    return v1

    :catch_4
    move-exception v0

    const/4 v1, 0x1

    const/16 v3, 0x8

    move-object v2, v0

    :goto_44
    const-string v4, "ExoPlayerImplInternal"

    const-string v5, "Renderer error."

    .line 239
    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzank;->zzg:Landroid/os/Handler;

    .line 240
    invoke-virtual {v4, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 241
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzank;->zzw()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public final zza()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzG:Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzasr;Z)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final bridge synthetic zzbh(Lcom/google/android/gms/internal/ads/zzatd;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzasp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    const/16 v1, 0x9

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final zzc(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzanx;IJ)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzani;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p3, p4}, Lcom/google/android/gms/internal/ads/zzani;-><init>(Lcom/google/android/gms/internal/ads/zzanx;IJ)V

    const/4 p1, 0x3

    invoke-virtual {p2, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final varargs zzf([Lcom/google/android/gms/internal/ads/zzanb;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzq:Z

    if-eqz v0, :cond_0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzw:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    const/16 v1, 0xb

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final varargs declared-synchronized zzg([Lcom/google/android/gms/internal/ads/zzanb;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzq:Z

    if-eqz v0, :cond_0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzw:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzw:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    const/16 v2, 0xb

    .line 2
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzx:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p1, v0, :cond_1

    .line 3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzh()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzq:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzq:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzf:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzanx;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzasp;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final zzk()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final zzl(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzH:I

    return-void
.end method

.method public final zzm(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzI:I

    return-void
.end method
