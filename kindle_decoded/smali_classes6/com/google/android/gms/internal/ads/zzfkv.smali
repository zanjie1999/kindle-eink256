.class public final Lcom/google/android/gms/internal/ads/zzfkv;
.super Lcom/google/android/gms/internal/ads/zzfko;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzfmj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfmj<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzb:Lcom/google/android/gms/internal/ads/zzfmj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfmj<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Lcom/google/android/gms/internal/ads/zzfku;

.field private zzd:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfkq;->zza:Lcom/google/android/gms/internal/ads/zzfmj;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfkr;->zza:Lcom/google/android/gms/internal/ads/zzfmj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfko;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkv;->zza:Lcom/google/android/gms/internal/ads/zzfmj;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfkv;->zzb:Lcom/google/android/gms/internal/ads/zzfmj;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkv;->zzc:Lcom/google/android/gms/internal/ads/zzfku;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkv;->zzd:Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfkp;->zzb()V

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfku;II)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfks;

    const/16 p3, 0x109

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzfks;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkv;->zza:Lcom/google/android/gms/internal/ads/zzfmj;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfkt;

    const/4 p3, -0x1

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzfkt;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkv;->zzb:Lcom/google/android/gms/internal/ads/zzfmj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkv;->zzc:Lcom/google/android/gms/internal/ads/zzfku;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkv;->zza:Lcom/google/android/gms/internal/ads/zzfmj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfmj;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkv;->zzb:Lcom/google/android/gms/internal/ads/zzfmj;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzfmj;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfkp;->zza(II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkv;->zzc:Lcom/google/android/gms/internal/ads/zzfku;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfku;->zza()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkv;->zzd:Ljava/net/HttpURLConnection;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
