.class public Lcom/google/android/gms/internal/ads/zzoi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zznv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zznv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoi;->zza:Lcom/google/android/gms/internal/ads/zznv;

    return-void
.end method


# virtual methods
.method public final zza([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoi;->zza:Lcom/google/android/gms/internal/ads/zznv;

    const/4 p3, 0x0

    const/16 p4, 0x8

    const/4 v0, 0x1

    invoke-interface {p2, p1, p3, p4, v0}, Lcom/google/android/gms/internal/ads/zznv;->zza([BIIZ)Z

    move-result p1

    return p1
.end method

.method public final zzb([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoi;->zza:Lcom/google/android/gms/internal/ads/zznv;

    check-cast v0, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    return-void
.end method

.method public final zzc(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final zze(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoi;->zza:Lcom/google/android/gms/internal/ads/zznv;

    check-cast v0, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    return-void
.end method

.method public final zzf([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzg([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoi;->zza:Lcom/google/android/gms/internal/ads/zznv;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zznv;->zzg([BII)I

    move-result p1

    return p1
.end method

.method public final zzh([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoi;->zza:Lcom/google/android/gms/internal/ads/zznv;

    const/4 p3, 0x0

    const/16 p4, 0x8

    const/4 v0, 0x1

    invoke-interface {p2, p1, p3, p4, v0}, Lcom/google/android/gms/internal/ads/zznv;->zzh([BIIZ)Z

    move-result p1

    return p1
.end method

.method public final zzi([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoi;->zza:Lcom/google/android/gms/internal/ads/zznv;

    check-cast v0, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    return-void
.end method

.method public final zzk(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoi;->zza:Lcom/google/android/gms/internal/ads/zznv;

    check-cast v0, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zznp;->zzj(IZ)Z

    return-void
.end method

.method public final zzl()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoi;->zza:Lcom/google/android/gms/internal/ads/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    return-void
.end method

.method public zzm()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoi;->zza:Lcom/google/android/gms/internal/ads/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznv;->zzm()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzn()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoi;->zza:Lcom/google/android/gms/internal/ads/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzo()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoi;->zza:Lcom/google/android/gms/internal/ads/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznv;->zzo()J

    move-result-wide v0

    return-wide v0
.end method
