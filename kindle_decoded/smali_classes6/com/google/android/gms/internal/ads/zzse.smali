.class public final Lcom/google/android/gms/internal/ads/zzse;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznu;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzoa;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/ads/zznx;

.field private zzc:Lcom/google/android/gms/internal/ads/zzsm;

.field private zzd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzsd;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzse;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zznv;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "streamReader"
        }
        result = true
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzsg;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzsg;->zzc(Lcom/google/android/gms/internal/ads/zznv;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzsg;->zza:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzsg;->zze:I

    const/16 v2, 0x8

    .line 3
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzamf;

    .line 4
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v4

    check-cast p1, Lcom/google/android/gms/internal/ads/zznp;

    .line 5
    invoke-virtual {p1, v4, v3, v0, v3}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v4

    const-wide/32 v6, 0x464c4143

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzsc;

    .line 15
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzsc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzse;->zzc:Lcom/google/android/gms/internal/ads/zzsm;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 10
    :try_start_0
    invoke-static {v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzpc;->zzc(ILcom/google/android/gms/internal/ads/zzamf;Z)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaha; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/ads/zzso;

    .line 14
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzso;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzse;->zzc:Lcom/google/android/gms/internal/ads/zzsm;

    goto :goto_0

    :catch_0
    nop

    .line 11
    :cond_2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 12
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzsi;->zzd(Lcom/google/android/gms/internal/ads/zzamf;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/ads/zzsi;

    .line 13
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzsi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzse;->zzc:Lcom/google/android/gms/internal/ads/zzsm;

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zznv;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzse;->zze(Lcom/google/android/gms/internal/ads/zznv;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaha; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzse;->zzb:Lcom/google/android/gms/internal/ads/zznx;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoq;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzse;->zzb:Lcom/google/android/gms/internal/ads/zznx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzse;->zzc:Lcom/google/android/gms/internal/ads/zzsm;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzse;->zze(Lcom/google/android/gms/internal/ads/zznv;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "Failed to determine bitstream type"

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzse;->zzd:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzse;->zzb:Lcom/google/android/gms/internal/ads/zznx;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzse;->zzb:Lcom/google/android/gms/internal/ads/zznx;

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zznx;->zzC()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzse;->zzc:Lcom/google/android/gms/internal/ads/zzsm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzse;->zzb:Lcom/google/android/gms/internal/ads/zznx;

    .line 7
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzsm;->zze(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzox;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzse;->zzd:Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzse;->zzc:Lcom/google/android/gms/internal/ads/zzsm;

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsm;->zzg(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoq;)I

    move-result p1

    return p1
.end method

.method public final zzd(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzse;->zzc:Lcom/google/android/gms/internal/ads/zzsm;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzsm;->zzf(JJ)V

    :cond_0
    return-void
.end method
