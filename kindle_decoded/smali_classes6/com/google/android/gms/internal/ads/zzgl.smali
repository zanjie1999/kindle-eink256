.class final Lcom/google/android/gms/internal/ads/zzgl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziu;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zziu;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgm;

.field private zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgm;Lcom/google/android/gms/internal/ads/zziu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzb:Lcom/google/android/gms/internal/ads/zzgm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zza:Lcom/google/android/gms/internal/ads/zziu;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzc:Z

    return-void
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzb:Lcom/google/android/gms/internal/ads/zzgm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgm;->zzo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zza:Lcom/google/android/gms/internal/ads/zziu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zziu;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zza:Lcom/google/android/gms/internal/ads/zziu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zziu;->zzc()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzafw;Lcom/google/android/gms/internal/ads/zzaf;I)I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzb:Lcom/google/android/gms/internal/ads/zzgm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgm;->zzo()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzc:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzf(I)V

    return v3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zza:Lcom/google/android/gms/internal/ads/zziu;

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zziu;->zzd(Lcom/google/android/gms/internal/ads/zzafw;Lcom/google/android/gms/internal/ads/zzaf;I)I

    move-result p3

    const/4 v0, -0x5

    const-wide/high16 v4, -0x8000000000000000L

    if-ne p3, v0, :cond_6

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzafw;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    if-eqz p2, :cond_5

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzB:I

    const/4 v1, 0x0

    if-nez p3, :cond_2

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzC:I

    if-eqz p3, :cond_4

    const/4 p3, 0x0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzb:Lcom/google/android/gms/internal/ads/zzgm;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzgm;->zzb:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget v1, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzC:I

    .line 2
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzafv;->zza()Lcom/google/android/gms/internal/ads/zzaft;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzaft;->zzad(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 4
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzae(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzafw;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    :cond_4
    return v0

    :cond_5
    const/4 p1, 0x0

    .line 6
    throw p1

    .line 5
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzb:Lcom/google/android/gms/internal/ads/zzgm;

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/zzgm;->zzb:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_9

    if-ne p3, v3, :cond_7

    iget-wide v8, p2, Lcom/google/android/gms/internal/ads/zzaf;->zzd:J

    cmp-long v0, v8, v6

    if-gez v0, :cond_8

    :cond_7
    if-ne p3, v1, :cond_9

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgm;->zzh()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-nez p1, :cond_9

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzaf;->zzc:Z

    if-nez p1, :cond_9

    .line 8
    :cond_8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaf;->zza()V

    .line 9
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzf(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzc:Z

    return v3

    :cond_9
    return p3
.end method

.method public final zze(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzb:Lcom/google/android/gms/internal/ads/zzgm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgm;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zza:Lcom/google/android/gms/internal/ads/zziu;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zziu;->zze(J)I

    move-result p1

    return p1
.end method
