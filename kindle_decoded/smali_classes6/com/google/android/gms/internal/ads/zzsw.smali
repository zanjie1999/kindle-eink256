.class public final Lcom/google/android/gms/internal/ads/zzsw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznu;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzoa;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzsx;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zze:Lcom/google/android/gms/internal/ads/zzame;

.field private zzf:Lcom/google/android/gms/internal/ads/zznx;

.field private zzg:J

.field private zzh:J

.field private zzi:Z

.field private zzj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzsv;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsw;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzsw;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzsx;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzsx;-><init>(ZLjava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzb:Lcom/google/android/gms/internal/ads/zzsx;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v0, 0x800

    .line 4
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzh:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v0, 0xa

    .line 5
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzame;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object p1

    .line 6
    array-length v1, p1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzame;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zze:Lcom/google/android/gms/internal/ads/zzame;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zznv;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zznp;

    const/16 v4, 0xa

    invoke-virtual {v3, v2, v0, v4, v0}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    .line 2
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzr()I

    move-result v2

    const v4, 0x494433

    if-eq v2, v4, :cond_6

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    .line 8
    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/ads/zznp;->zzj(IZ)Z

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzh:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzh:J

    :cond_0
    move v4, v1

    :goto_1
    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v6

    const/4 v7, 0x2

    .line 9
    invoke-virtual {v3, v6, v0, v7, v0}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    .line 10
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    .line 11
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v6

    .line 12
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzsx;->zzf(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    add-int/lit8 v4, v4, 0x1

    sub-int v2, v4, v1

    const/16 v5, 0x2000

    if-ge v2, v5, :cond_1

    .line 14
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/ads/zznp;->zzj(IZ)Z

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    const/4 v6, 0x1

    add-int/2addr v2, v6

    const/4 v7, 0x4

    if-lt v2, v7, :cond_4

    const/16 v8, 0xbc

    if-gt v5, v8, :cond_3

    goto :goto_3

    :cond_3
    return v6

    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v6

    .line 15
    invoke-virtual {v3, v6, v0, v7, v0}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzsw;->zze:Lcom/google/android/gms/internal/ads/zzame;

    const/16 v7, 0xe

    .line 16
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzame;->zzd(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzsw;->zze:Lcom/google/android/gms/internal/ads/zzame;

    const/16 v7, 0xd

    .line 17
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v6

    const/4 v7, 0x6

    if-gt v6, v7, :cond_5

    return v0

    :cond_5
    add-int/lit8 v7, v6, -0x6

    .line 18
    invoke-virtual {v3, v7, v0}, Lcom/google/android/gms/internal/ads/zznp;->zzj(IZ)Z

    add-int/2addr v5, v6

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v4, 0x3

    .line 4
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzA()I

    move-result v2

    add-int/lit8 v4, v2, 0xa

    add-int/2addr v1, v4

    .line 6
    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/ads/zznp;->zzj(IZ)Z

    goto/16 :goto_0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzf:Lcom/google/android/gms/internal/ads/zznx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzb:Lcom/google/android/gms/internal/ads/zzsx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzun;

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzun;-><init>(III)V

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzsx;->zzb(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznx;->zzC()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoq;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzf:Lcom/google/android/gms/internal/ads/zznx;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x800

    .line 2
    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zznv;->zzg([BII)I

    move-result p1

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzj:Z

    const/4 v1, 0x1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzf:Lcom/google/android/gms/internal/ads/zznx;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzos;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    .line 3
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzos;-><init>(JJ)V

    .line 4
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zznx;->zzD(Lcom/google/android/gms/internal/ads/zzot;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzj:Z

    :cond_0
    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return p2

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzf(I)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzi:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzb:Lcom/google/android/gms/internal/ads/zzsx;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzg:J

    const/4 p2, 0x4

    .line 7
    invoke-virtual {p1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzsx;->zzc(JI)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzi:Z

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzb:Lcom/google/android/gms/internal/ads/zzsx;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzsx;->zzd(Lcom/google/android/gms/internal/ads/zzamf;)V

    return v0
.end method

.method public final zzd(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzi:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzb:Lcom/google/android/gms/internal/ads/zzsx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsx;->zza()V

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzg:J

    return-void
.end method
