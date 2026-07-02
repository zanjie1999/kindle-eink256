.class public final enum Lcom/google/android/gms/internal/ads/zzfgk;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzfgk;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzfgk;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzfgk;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzfgk;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/ads/zzfgk;


# instance fields
.field private final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgk;

    const/4 v1, 0x0

    const-string v2, "NATIVE"

    const-string v3, "native"

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzfgk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgk;->zza:Lcom/google/android/gms/internal/ads/zzfgk;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgk;

    const/4 v2, 0x1

    const-string v3, "JAVASCRIPT"

    const-string v4, "javascript"

    .line 2
    invoke-direct {v0, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzfgk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgk;->zzb:Lcom/google/android/gms/internal/ads/zzfgk;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgk;

    const/4 v3, 0x2

    const-string v4, "NONE"

    const-string v5, "none"

    .line 3
    invoke-direct {v0, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzfgk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgk;->zzc:Lcom/google/android/gms/internal/ads/zzfgk;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/android/gms/internal/ads/zzfgk;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzfgk;->zza:Lcom/google/android/gms/internal/ads/zzfgk;

    aput-object v5, v4, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgk;->zzb:Lcom/google/android/gms/internal/ads/zzfgk;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/google/android/gms/internal/ads/zzfgk;->zze:[Lcom/google/android/gms/internal/ads/zzfgk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgk;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzfgk;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgk;->zze:[Lcom/google/android/gms/internal/ads/zzfgk;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzfgk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzfgk;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgk;->zzd:Ljava/lang/String;

    return-object v0
.end method
