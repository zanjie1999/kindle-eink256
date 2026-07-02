.class final Lcom/google/android/gms/internal/ads/zzfpz;
.super Lcom/google/android/gms/internal/ads/zzfot;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzfot<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/ads/zzfon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfon<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfon;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfon<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfot;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpz;->zza:Lcom/google/android/gms/internal/ads/zzfon;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfpz;->zzb:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzfpz;->zzc:I

    return-void
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/ads/zzfpz;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfpz;->zzb:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzq(Lcom/google/android/gms/internal/ads/zzfpz;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfpz;->zzc:I

    return p0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfpz;->zza:Lcom/google/android/gms/internal/ads/zzfon;

    .line 5
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzfon;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfot;->zze()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfoj;->zzt(I)Lcom/google/android/gms/internal/ads/zzfqm;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfpz;->zzc:I

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzfql;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfql<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfot;->zze()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfoj;->zzt(I)Lcom/google/android/gms/internal/ads/zzfqm;

    move-result-object v0

    return-object v0
.end method

.method final zzf()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method final zzg([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfot;->zze()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfoj;->zzg([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method final zzn()Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfpy;-><init>(Lcom/google/android/gms/internal/ads/zzfpz;)V

    return-object v0
.end method
