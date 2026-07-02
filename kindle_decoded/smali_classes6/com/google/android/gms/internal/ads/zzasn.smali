.class public final Lcom/google/android/gms/internal/ads/zzasn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzasr;
.implements Lcom/google/android/gms/internal/ads/zzasq;


# instance fields
.field private final zza:Landroid/net/Uri;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaty;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzapq;

.field private final zzd:I

.field private final zze:Landroid/os/Handler;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzasm;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzanv;

.field private final zzh:I

.field private zzi:Lcom/google/android/gms/internal/ads/zzasq;

.field private zzj:Lcom/google/android/gms/internal/ads/zzanx;

.field private zzk:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzaty;Lcom/google/android/gms/internal/ads/zzapq;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzasm;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasn;->zza:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzb:Lcom/google/android/gms/internal/ads/zzaty;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzc:Lcom/google/android/gms/internal/ads/zzapq;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzd:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzasn;->zze:Landroid/os/Handler;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzf:Lcom/google/android/gms/internal/ads/zzasm;

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzh:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzanv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzanv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzg:Lcom/google/android/gms/internal/ads/zzanv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzanc;ZLcom/google/android/gms/internal/ads/zzasq;)V
    .locals 2

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzi:Lcom/google/android/gms/internal/ads/zzasq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzate;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p2, 0x0

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzate;-><init>(JZ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzj:Lcom/google/android/gms/internal/ads/zzanx;

    const/4 p2, 0x0

    .line 2
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzasq;->zzi(Lcom/google/android/gms/internal/ads/zzanx;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzasp;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzasl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzasl;->zzk()V

    return-void
.end method

.method public final zzd()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzi:Lcom/google/android/gms/internal/ads/zzasq;

    return-void
.end method

.method public final zze(ILcom/google/android/gms/internal/ads/zzauc;)Lcom/google/android/gms/internal/ads/zzasp;
    .locals 12

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaup;->zza(Z)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzasl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasn;->zza:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzb:Lcom/google/android/gms/internal/ads/zzaty;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaty;->zza()Lcom/google/android/gms/internal/ads/zzatz;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzc:Lcom/google/android/gms/internal/ads/zzapq;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzapq;->zza()[Lcom/google/android/gms/internal/ads/zzapo;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzd:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzasn;->zze:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzf:Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v9, 0x0

    iget v10, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzh:I

    const/4 v11, 0x0

    move-object v0, p1

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzasl;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzatz;[Lcom/google/android/gms/internal/ads/zzapo;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/zzasq;Lcom/google/android/gms/internal/ads/zzauc;Ljava/lang/String;I[B)V

    return-object p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzanx;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzg:Lcom/google/android/gms/internal/ads/zzanv;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    iget-wide v1, p2, Lcom/google/android/gms/internal/ads/zzanv;->zzc:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzk:Z

    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzj:Lcom/google/android/gms/internal/ads/zzanx;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzk:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzasn;->zzi:Lcom/google/android/gms/internal/ads/zzasq;

    const/4 v0, 0x0

    .line 2
    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzasq;->zzi(Lcom/google/android/gms/internal/ads/zzanx;Ljava/lang/Object;)V

    return-void
.end method
