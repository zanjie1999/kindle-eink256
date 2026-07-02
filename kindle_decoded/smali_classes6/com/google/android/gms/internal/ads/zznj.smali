.class public final Lcom/google/android/gms/internal/ads/zznj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zznj;


# instance fields
.field private final zzb:I

.field private final zzc:J

.field private final zzd:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zznj;

    const/4 v1, -0x3

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zznj;-><init>(IJJ)V

    sput-object v6, Lcom/google/android/gms/internal/ads/zznj;->zza:Lcom/google/android/gms/internal/ads/zznj;

    return-void
.end method

.method private constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznj;->zzb:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zznj;->zzc:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zznj;->zzd:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zznj;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zznj;->zzb:I

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zznj;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznj;->zzc:J

    return-wide v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zznj;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznj;->zzd:J

    return-wide v0
.end method

.method public static zzd(JJ)Lcom/google/android/gms/internal/ads/zznj;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zznj;

    const/4 v1, -0x1

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zznj;-><init>(IJJ)V

    return-object v6
.end method

.method public static zze(JJ)Lcom/google/android/gms/internal/ads/zznj;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zznj;

    const/4 v1, -0x2

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zznj;-><init>(IJJ)V

    return-object v6
.end method

.method public static zzf(J)Lcom/google/android/gms/internal/ads/zznj;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zznj;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v6

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zznj;-><init>(IJJ)V

    return-object v6
.end method
