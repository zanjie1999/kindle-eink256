.class public Lcom/google/android/gms/internal/ads/zzgki;
.super Lcom/google/android/gms/internal/ads/zzgkl;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxp;


# instance fields
.field protected final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgkl;-><init>()V

    const-string p1, "moov"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgki;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzxq;)V
    .locals 0

    return-void
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgki;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgkm;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/zzxm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgkm;->zzc()J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzd:Lcom/google/android/gms/internal/ads/zzgkm;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgkm;->zzc()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzf:J

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgkm;->zzc()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgkm;->zzd(J)V

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgkm;->zzc()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzg:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzc:Lcom/google/android/gms/internal/ads/zzxm;

    return-void
.end method
