.class final synthetic Lcom/google/android/gms/internal/ads/zzfu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgd;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzgd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfu;->zza:Lcom/google/android/gms/internal/ads/zzgd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfo;

    sget v0, Lcom/google/android/gms/internal/ads/zzge;->zza:I

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfo;->zza:Ljava/lang/String;

    const-string v0, "OMX.google"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const-string v0, "c2.android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_3

    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method
