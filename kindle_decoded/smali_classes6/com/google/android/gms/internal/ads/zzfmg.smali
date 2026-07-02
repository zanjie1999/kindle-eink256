.class public final Lcom/google/android/gms/internal/ads/zzfmg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzflk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfmf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfmf;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzflj;->zza:Lcom/google/android/gms/internal/ads/zzflj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfmg;->zzb:Lcom/google/android/gms/internal/ads/zzfmf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmg;->zza:Lcom/google/android/gms/internal/ads/zzflk;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzfmg;)Lcom/google/android/gms/internal/ads/zzflk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfmg;->zza:Lcom/google/android/gms/internal/ads/zzflk;

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzflk;)Lcom/google/android/gms/internal/ads/zzfmg;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfma;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfma;-><init>(Lcom/google/android/gms/internal/ads/zzflk;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfmg;-><init>(Lcom/google/android/gms/internal/ads/zzfmf;)V

    return-object v0
.end method

.method public static zzc(I)Lcom/google/android/gms/internal/ads/zzfmg;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfmg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmc;

    const/16 v1, 0xfa0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfmc;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfmg;-><init>(Lcom/google/android/gms/internal/ads/zzfmf;)V

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzfmg;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfmg;->zzg(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private final zzg(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmg;->zzb:Lcom/google/android/gms/internal/ads/zzfmf;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfmf;->zza(Lcom/google/android/gms/internal/ads/zzfmg;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zzd(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmd;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfmd;-><init>(Lcom/google/android/gms/internal/ads/zzfmg;Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzf(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfmg;->zzg(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
