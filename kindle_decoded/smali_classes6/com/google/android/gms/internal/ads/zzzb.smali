.class public final Lcom/google/android/gms/internal/ads/zzzb;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzzb;",
        "Lcom/google/android/gms/internal/ads/zzza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/ads/zzzb;


# instance fields
.field private zzb:I

.field private zze:J

.field private zzf:I

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/internal/ads/zzggf;

.field private zzi:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzb;->zzj:Lcom/google/android/gms/internal/ads/zzzb;

    const-class v1, Lcom/google/android/gms/internal/ads/zzzb;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzay(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgga;->zzaB()Lcom/google/android/gms/internal/ads/zzggf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->zzh:Lcom/google/android/gms/internal/ads/zzggf;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/ads/zzzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzzb;->zzj:Lcom/google/android/gms/internal/ads/zzzb;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzzb;->zzj:Lcom/google/android/gms/internal/ads/zzzb;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzza;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzza;-><init>(Lcom/google/android/gms/internal/ads/zzyi;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzzb;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzzb;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzzb;->zzj:Lcom/google/android/gms/internal/ads/zzzb;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u1002\u0000\u0002\u1004\u0001\u0003\u1007\u0002\u0004\u0016\u0005\u1003\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
