.class public final Lcom/google/android/gms/internal/ads/zztr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzua;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzafv;

.field private zzb:Lcom/google/android/gms/internal/ads/zzamn;

.field private zzc:Lcom/google/android/gms/internal/ads/zzox;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaft;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztr;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzamn;Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztr;->zzb:Lcom/google/android/gms/internal/ads/zzamn;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzun;->zza()V

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzun;->zzb()I

    move-result p1

    const/4 p3, 0x5

    invoke-interface {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztr;->zzc:Lcom/google/android/gms/internal/ads/zzox;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zztr;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    .line 3
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzamf;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztr;->zzb:Lcom/google/android/gms/internal/ads/zzamn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztr;->zzb:Lcom/google/android/gms/internal/ads/zzamn;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamn;->zzb()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztr;->zzb:Lcom/google/android/gms/internal/ads/zzamn;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamn;->zzc()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztr;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    .line 5
    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzafv;->zzp:J

    cmp-long v7, v0, v5

    if-eqz v7, :cond_1

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzafv;->zza()Lcom/google/android/gms/internal/ads/zzaft;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzR(J)Lcom/google/android/gms/internal/ads/zzaft;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztr;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztr;->zzc:Lcom/google/android/gms/internal/ads/zzox;

    .line 7
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztr;->zzc:Lcom/google/android/gms/internal/ads/zzox;

    .line 8
    invoke-static {v0, p1, v5}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztr;->zzc:Lcom/google/android/gms/internal/ads/zzox;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 9
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    :cond_2
    :goto_0
    return-void
.end method
