.class public final Lcom/google/android/gms/internal/ads/zzlh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zzc:Lcom/google/android/gms/internal/ads/zzla;

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzla;


# instance fields
.field private final zze:Ljava/util/concurrent/ExecutorService;

.field private zzf:Lcom/google/android/gms/internal/ads/zzlb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzlb<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzlc;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzla;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzla;-><init>(IJLcom/google/android/gms/internal/ads/zzld;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzla;

    const/4 v4, 0x1

    .line 2
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzla;-><init>(IJLcom/google/android/gms/internal/ads/zzld;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzla;

    const/4 v4, 0x2

    .line 3
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzla;-><init>(IJLcom/google/android/gms/internal/ads/zzld;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzlh;->zzc:Lcom/google/android/gms/internal/ads/zzla;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzla;

    const/4 v4, 0x3

    .line 4
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzla;-><init>(IJLcom/google/android/gms/internal/ads/zzld;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzlh;->zzd:Lcom/google/android/gms/internal/ads/zzla;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "ExoPlayer:Loader:ProgressiveMediaPeriod"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzamq;->zzl(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zze:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzlh;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zze:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzlh;)Lcom/google/android/gms/internal/ads/zzlb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzf:Lcom/google/android/gms/internal/ads/zzlb;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzlh;Lcom/google/android/gms/internal/ads/zzlb;)Lcom/google/android/gms/internal/ads/zzlb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzf:Lcom/google/android/gms/internal/ads/zzlb;

    return-object p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzlh;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzg:Ljava/io/IOException;

    return-object p1
.end method

.method public static zze(ZJ)Lcom/google/android/gms/internal/ads/zzla;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzla;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzla;-><init>(IJLcom/google/android/gms/internal/ads/zzld;)V

    return-object v0
.end method


# virtual methods
.method public final zzf()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzg:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzg:Ljava/io/IOException;

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzlc;Lcom/google/android/gms/internal/ads/zzkz;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/ads/zzlc;",
            ">(TT;",
            "Lcom/google/android/gms/internal/ads/zzkz<",
            "TT;>;I)J"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzg:Ljava/io/IOException;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v10, Lcom/google/android/gms/internal/ads/zzlb;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzlb;-><init>(Lcom/google/android/gms/internal/ads/zzlh;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzlc;Lcom/google/android/gms/internal/ads/zzkz;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Lcom/google/android/gms/internal/ads/zzlb;->zzb(J)V

    return-wide v8
.end method

.method public final zzi()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzf:Lcom/google/android/gms/internal/ads/zzlb;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzf:Lcom/google/android/gms/internal/ads/zzlb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzlb;->zzc(Z)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzf:Lcom/google/android/gms/internal/ads/zzlb;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzlb;->zzc(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zze:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzlf;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzlf;-><init>(Lcom/google/android/gms/internal/ads/zzle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zze:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final zzl(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzg:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzf:Lcom/google/android/gms/internal/ads/zzlb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlb;->zza(I)V

    :cond_0
    return-void

    .line 1
    :cond_1
    throw v0
.end method
