.class public final Lcom/google/android/gms/internal/ads/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzd;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzc;


# instance fields
.field public final zzb:J

.field private final zze:[Lcom/google/android/gms/internal/ads/zzc;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v8, Lcom/google/android/gms/internal/ads/zzd;

    const/4 v9, 0x0

    new-array v2, v9, [Lcom/google/android/gms/internal/ads/zzc;

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzd;-><init>(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzc;JJI)V

    sput-object v8, Lcom/google/android/gms/internal/ads/zzd;->zza:Lcom/google/android/gms/internal/ads/zzd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzc;

    const-wide/16 v1, 0x0

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzc;-><init>(J)V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzc;->zzb(I)Lcom/google/android/gms/internal/ads/zzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzd;->zzd:Lcom/google/android/gms/internal/ads/zzc;

    sget-object v0, Lcom/google/android/gms/internal/ads/zza;->zza:Lcom/google/android/gms/internal/ads/zzadw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzc;JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzd;->zzb:J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzd;->zze:[Lcom/google/android/gms/internal/ads/zzc;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzd;

    const/4 v2, 0x0

    .line 2
    invoke-static {v2, v2}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzd;->zze:[Lcom/google/android/gms/internal/ads/zzc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzd;->zze:[Lcom/google/android/gms/internal/ads/zzc;

    .line 3
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    long-to-int v1, v0

    mul-int/lit16 v1, v1, 0x3c1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzd;->zze:[Lcom/google/android/gms/internal/ads/zzc;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdPlaybackState(adsId="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adResumePositionUs=0, adGroups=["

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "])"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/ads/zzc;
    .locals 1

    if-gez p1, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzd;->zzd:Lcom/google/android/gms/internal/ads/zzc;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzd;->zze:[Lcom/google/android/gms/internal/ads/zzc;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method
