.class public final Lcom/google/android/gms/internal/ads/zzaun;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/util/concurrent/ExecutorService;

.field private zzb:Lcom/google/android/gms/internal/ads/zzauk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzauk<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzaul;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "Loader:ExtractorMediaPeriod"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzave;->zzb(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaun;->zza:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaun;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaun;->zza:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzaun;)Lcom/google/android/gms/internal/ads/zzauk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaun;->zzb:Lcom/google/android/gms/internal/ads/zzauk;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzaun;Lcom/google/android/gms/internal/ads/zzauk;)Lcom/google/android/gms/internal/ads/zzauk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaun;->zzb:Lcom/google/android/gms/internal/ads/zzauk;

    return-object p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzaun;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaun;->zzc:Ljava/io/IOException;

    return-object p1
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzaul;Lcom/google/android/gms/internal/ads/zzauj;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/ads/zzaul;",
            ">(TT;",
            "Lcom/google/android/gms/internal/ads/zzauj<",
            "TT;>;I)J"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v10, Lcom/google/android/gms/internal/ads/zzauk;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzauk;-><init>(Lcom/google/android/gms/internal/ads/zzaun;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzaul;Lcom/google/android/gms/internal/ads/zzauj;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Lcom/google/android/gms/internal/ads/zzauk;->zzb(J)V

    return-wide v8
.end method

.method public final zzf()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaun;->zzb:Lcom/google/android/gms/internal/ads/zzauk;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaun;->zzb:Lcom/google/android/gms/internal/ads/zzauk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzauk;->zzc(Z)V

    return-void
.end method

.method public final zzh(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaun;->zzb:Lcom/google/android/gms/internal/ads/zzauk;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzauk;->zzc(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaun;->zza:Ljava/util/concurrent/ExecutorService;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaun;->zza:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final zzi(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaun;->zzc:Ljava/io/IOException;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaun;->zzb:Lcom/google/android/gms/internal/ads/zzauk;

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzauk;->zza:I

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzauk;->zza(I)V

    :cond_0
    return-void

    .line 1
    :cond_1
    throw p1
.end method
