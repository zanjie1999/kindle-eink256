.class public final Lcom/google/android/gms/internal/ads/zztn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzamf;

.field private zzb:Lcom/google/android/gms/internal/ads/zzox;

.field private zzc:Z

.field private zzd:J

.field private zze:I

.field private zzf:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztn;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztn;->zzd:J

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztn;->zzc:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztn;->zzd:J

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzb()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztn;->zzb:Lcom/google/android/gms/internal/ads/zzox;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaft;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzaft;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    const-string p2, "application/id3"

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object p2

    .line 3
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    return-void
.end method

.method public final zzc(JI)V
    .locals 2

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zztn;->zzc:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zztn;->zzd:J

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zztn;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zztn;->zzf:I

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzamf;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztn;->zzb:Lcom/google/android/gms/internal/ads/zzox;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztn;->zzc:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zztn;->zzf:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zztn;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/zztn;->zzf:I

    .line 3
    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zztn;->zzf:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztn;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztn;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v1

    const/16 v4, 0x49

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztn;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v1

    const/16 v4, 0x44

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztn;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v1

    const/16 v4, 0x33

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztn;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v3, 0x3

    .line 9
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztn;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzA()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zztn;->zze:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zztn;->zzc:Z

    return-void

    .line 10
    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zztn;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zztn;->zzf:I

    sub-int/2addr v1, v2

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztn;->zzb:Lcom/google/android/gms/internal/ads/zzox;

    .line 12
    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zztn;->zzf:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zztn;->zzf:I

    return-void
.end method

.method public final zze()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztn;->zzb:Lcom/google/android/gms/internal/ads/zzox;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztn;->zzc:Z

    if-eqz v0, :cond_2

    iget v5, p0, Lcom/google/android/gms/internal/ads/zztn;->zze:I

    if-eqz v5, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zztn;->zzf:I

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zztn;->zzd:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztn;->zzb:Lcom/google/android/gms/internal/ads/zzox;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztn;->zzc:Z

    :cond_2
    :goto_0
    return-void
.end method
