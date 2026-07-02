.class final Lcom/google/android/gms/internal/ads/zzgo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhp;
.implements Lcom/google/android/gms/internal/ads/zzfb;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgq;

.field private final zzb:Ljava/lang/Object;

.field private zzc:Lcom/google/android/gms/internal/ads/zzho;

.field private zzd:Lcom/google/android/gms/internal/ads/zzfa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgq;Ljava/lang/Object;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgo;->zza:Lcom/google/android/gms/internal/ads/zzgq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgi;->zzf(Lcom/google/android/gms/internal/ads/zzhf;)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgo;->zzc:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgi;->zzh(Lcom/google/android/gms/internal/ads/zzhf;)Lcom/google/android/gms/internal/ads/zzfa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgo;->zzd:Lcom/google/android/gms/internal/ads/zzfa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgo;->zzb:Ljava/lang/Object;

    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/ads/zzhf;)Z
    .locals 3

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgo;->zza:Lcom/google/android/gms/internal/ads/zzgq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgo;->zzb:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgq;->zzx(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhf;)Lcom/google/android/gms/internal/ads/zzhf;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgo;->zzc:Lcom/google/android/gms/internal/ads/zzho;

    .line 2
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzho;->zza:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzho;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgo;->zza:Lcom/google/android/gms/internal/ads/zzgq;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzgi;->zzg(ILcom/google/android/gms/internal/ads/zzhf;J)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgo;->zzc:Lcom/google/android/gms/internal/ads/zzho;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgo;->zzd:Lcom/google/android/gms/internal/ads/zzfa;

    .line 4
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfa;->zza:I

    if-ne v1, p1, :cond_4

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfa;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    .line 5
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgo;->zza:Lcom/google/android/gms/internal/ads/zzgq;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgi;->zzi(ILcom/google/android/gms/internal/ads/zzhf;)Lcom/google/android/gms/internal/ads/zzfa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgo;->zzd:Lcom/google/android/gms/internal/ads/zzfa;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final zzC(ILcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzhc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgo;->zza(ILcom/google/android/gms/internal/ads/zzhf;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgo;->zzc:Lcom/google/android/gms/internal/ads/zzho;

    .line 2
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzho;->zze(Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzhc;)V

    :cond_0
    return-void
.end method

.method public final zzD(ILcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzhc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgo;->zza(ILcom/google/android/gms/internal/ads/zzhf;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgo;->zzc:Lcom/google/android/gms/internal/ads/zzho;

    .line 2
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzho;->zzg(Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzhc;)V

    :cond_0
    return-void
.end method

.method public final zzE(ILcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzhc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgo;->zza(ILcom/google/android/gms/internal/ads/zzhf;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgo;->zzc:Lcom/google/android/gms/internal/ads/zzho;

    .line 2
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzho;->zzi(Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzhc;)V

    :cond_0
    return-void
.end method

.method public final zzF(ILcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzhc;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgo;->zza(ILcom/google/android/gms/internal/ads/zzhf;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgo;->zzc:Lcom/google/android/gms/internal/ads/zzho;

    .line 2
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/google/android/gms/internal/ads/zzho;->zzk(Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzhc;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public final zzG(ILcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzhc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgo;->zza(ILcom/google/android/gms/internal/ads/zzhf;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgo;->zzc:Lcom/google/android/gms/internal/ads/zzho;

    .line 2
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzho;->zzm(Lcom/google/android/gms/internal/ads/zzhc;)V

    :cond_0
    return-void
.end method
