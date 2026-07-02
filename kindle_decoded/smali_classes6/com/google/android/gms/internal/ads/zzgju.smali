.class public final Lcom/google/android/gms/internal/ads/zzgju;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzgju;",
        "Lcom/google/android/gms/internal/ads/zzgjr;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/ads/zzgju;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/ads/zzgjt;

.field private zzf:Lcom/google/android/gms/internal/ads/zzggj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzggj<",
            "Lcom/google/android/gms/internal/ads/zzgjm;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/ads/zzgex;

.field private zzh:Lcom/google/android/gms/internal/ads/zzgex;

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/ads/zzgex;

.field private zzk:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgju;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgju;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgju;->zzl:Lcom/google/android/gms/internal/ads/zzgju;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgju;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzay(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzgju;->zzk:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgga;->zzaE()Lcom/google/android/gms/internal/ads/zzggj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgju;->zzf:Lcom/google/android/gms/internal/ads/zzggj;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgex;->zzb:Lcom/google/android/gms/internal/ads/zzgex;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgju;->zzg:Lcom/google/android/gms/internal/ads/zzgex;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgju;->zzh:Lcom/google/android/gms/internal/ads/zzgex;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgju;->zzj:Lcom/google/android/gms/internal/ads/zzgex;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/ads/zzgju;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgju;->zzl:Lcom/google/android/gms/internal/ads/zzgju;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    const/4 p3, 0x0

    .line 2
    :cond_0
    iput-byte p3, p0, Lcom/google/android/gms/internal/ads/zzgju;->zzk:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgju;->zzl:Lcom/google/android/gms/internal/ads/zzgju;

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgjr;

    .line 3
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/zzgjr;-><init>(Lcom/google/android/gms/internal/ads/zzgjg;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgju;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgju;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzb"

    aput-object p2, p1, v0

    const-string p2, "zze"

    aput-object p2, p1, p3

    const-string p2, "zzf"

    aput-object p2, p1, v4

    .line 2
    const-class p2, Lcom/google/android/gms/internal/ads/zzgjm;

    aput-object p2, p1, v3

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgju;->zzl:Lcom/google/android/gms/internal/ads/zzgju;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003\u0006\u100a\u0004"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzgju;->zzk:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
