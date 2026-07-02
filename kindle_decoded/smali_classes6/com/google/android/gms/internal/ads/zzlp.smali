.class public final Lcom/google/android/gms/internal/ads/zzlp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaj;

.field private zzb:J

.field private zzc:Landroid/net/Uri;

.field private zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaj;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlp;->zza:Lcom/google/android/gms/internal/ads/zzaj;

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzc:Landroid/net/Uri;

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzd:Ljava/util/Map;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzay;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlp;->zza:Lcom/google/android/gms/internal/ads/zzaj;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaj;->zza(Lcom/google/android/gms/internal/ads/zzay;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzb:J

    return-wide v0
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzc:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzd:Ljava/util/Map;

    return-object v0
.end method

.method public final zzf()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlp;->zza:Lcom/google/android/gms/internal/ads/zzaj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaj;->zzf()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final zzg([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlp;->zza:Lcom/google/android/gms/internal/ads/zzaj;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzah;->zzg([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzb:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzb:J

    :cond_0
    return p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzan;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzan;->zza:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzc:Landroid/net/Uri;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzd:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlp;->zza:Lcom/google/android/gms/internal/ads/zzaj;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaj;->zzh(Lcom/google/android/gms/internal/ads/zzan;)J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlp;->zzi()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzc:Landroid/net/Uri;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlp;->zzf()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzd:Ljava/util/Map;

    return-wide v0

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final zzi()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlp;->zza:Lcom/google/android/gms/internal/ads/zzaj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaj;->zzi()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlp;->zza:Lcom/google/android/gms/internal/ads/zzaj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaj;->zzj()V

    return-void
.end method
