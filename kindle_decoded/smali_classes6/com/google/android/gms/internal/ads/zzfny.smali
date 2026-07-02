.class public abstract Lcom/google/android/gms/internal/ads/zzfny;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfny;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzfny;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzfny;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfnv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfny;->zza:Lcom/google/android/gms/internal/ads/zzfny;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnw;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfnw;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfny;->zzb:Lcom/google/android/gms/internal/ads/zzfny;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnw;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfnw;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfny;->zzc:Lcom/google/android/gms/internal/ads/zzfny;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfnx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zzg()Lcom/google/android/gms/internal/ads/zzfny;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfny;->zza:Lcom/google/android/gms/internal/ads/zzfny;

    return-object v0
.end method

.method static synthetic zzh()Lcom/google/android/gms/internal/ads/zzfny;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfny;->zzb:Lcom/google/android/gms/internal/ads/zzfny;

    return-object v0
.end method

.method static synthetic zzi()Lcom/google/android/gms/internal/ads/zzfny;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfny;->zzc:Lcom/google/android/gms/internal/ads/zzfny;

    return-object v0
.end method

.method public static zzj()Lcom/google/android/gms/internal/ads/zzfny;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfny;->zza:Lcom/google/android/gms/internal/ads/zzfny;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfny;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/zzfny;"
        }
    .end annotation
.end method

.method public abstract zzb(II)Lcom/google/android/gms/internal/ads/zzfny;
.end method

.method public abstract zzc(ZZ)Lcom/google/android/gms/internal/ads/zzfny;
.end method

.method public abstract zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfny;
.end method

.method public abstract zze()I
.end method
