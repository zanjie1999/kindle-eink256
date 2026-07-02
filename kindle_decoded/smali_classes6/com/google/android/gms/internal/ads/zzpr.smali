.class final Lcom/google/android/gms/internal/ads/zzpr;
.super Lcom/google/android/gms/internal/ads/zzpq;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzamf;

.field private zzd:I

.field private zze:Z

.field private zzf:Z

.field private zzg:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzox;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpq;-><init>(Lcom/google/android/gms/internal/ads/zzox;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzalw;->zza:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v0, 0x4

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzamf;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpp;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzg:I

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpp;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Video format not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzpp;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final zzb(Lcom/google/android/gms/internal/ads/zzamf;J)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzs()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    add-long v4, p2, v1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpr;->zze:Z

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v1

    .line 13
    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>([B)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v2

    .line 14
    invoke-virtual {p1, v1, p3, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzne;->zza(Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzne;

    move-result-object p1

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzne;->zzb:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzd:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaft;

    .line 16
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    const-string v1, "video/avc"

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzne;->zzf:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzne;->zzc:I

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzS(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzne;->zzd:I

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzT(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzne;->zze:F

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzW(F)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzne;->zza:Ljava/util/List;

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zza:Lcom/google/android/gms/internal/ads/zzox;

    .line 24
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzpr;->zze:Z

    return p3

    :cond_0
    if-ne v0, p2, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpr;->zze:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzg:I

    if-ne v0, p2, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzf:Z

    if-nez v0, :cond_3

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    return p3

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    .line 3
    aput-byte p3, v0, p3

    .line 4
    aput-byte p3, v0, p2

    const/4 v1, 0x2

    .line 5
    aput-byte p3, v0, v1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzd:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzd:I

    .line 6
    invoke-virtual {p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 7
    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    .line 9
    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpq;->zza:Lcom/google/android/gms/internal/ads/zzox;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    .line 10
    invoke-interface {v3, v8, v1}, Lcom/google/android/gms/internal/ads/zzox;->zzy(Lcom/google/android/gms/internal/ads/zzamf;I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpq;->zza:Lcom/google/android/gms/internal/ads/zzox;

    .line 11
    invoke-interface {v3, p1, v2}, Lcom/google/android/gms/internal/ads/zzox;->zzy(Lcom/google/android/gms/internal/ads/zzamf;I)V

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v2

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpq;->zza:Lcom/google/android/gms/internal/ads/zzox;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 12
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzf:Z

    return p2

    :cond_5
    return p3
.end method
