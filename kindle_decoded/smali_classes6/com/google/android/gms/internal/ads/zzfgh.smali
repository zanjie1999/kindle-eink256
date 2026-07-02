.class public final enum Lcom/google/android/gms/internal/ads/zzfgh;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzfgh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzfgh;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzfgh;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzfgh;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzfgh;

.field public static final enum zze:Lcom/google/android/gms/internal/ads/zzfgh;

.field private static final synthetic zzg:[Lcom/google/android/gms/internal/ads/zzfgh;


# instance fields
.field private final zzf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgh;

    const/4 v1, 0x0

    const-string v2, "DEFINED_BY_JAVASCRIPT"

    const-string v3, "definedByJavaScript"

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzfgh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgh;->zza:Lcom/google/android/gms/internal/ads/zzfgh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgh;

    const/4 v2, 0x1

    const-string v3, "HTML_DISPLAY"

    const-string v4, "htmlDisplay"

    .line 2
    invoke-direct {v0, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzfgh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgh;->zzb:Lcom/google/android/gms/internal/ads/zzfgh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgh;

    const/4 v3, 0x2

    const-string v4, "NATIVE_DISPLAY"

    const-string v5, "nativeDisplay"

    .line 3
    invoke-direct {v0, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzfgh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgh;->zzc:Lcom/google/android/gms/internal/ads/zzfgh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgh;

    const/4 v4, 0x3

    const-string v5, "VIDEO"

    const-string v6, "video"

    .line 4
    invoke-direct {v0, v5, v4, v6}, Lcom/google/android/gms/internal/ads/zzfgh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgh;->zzd:Lcom/google/android/gms/internal/ads/zzfgh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgh;

    const/4 v5, 0x4

    const-string v6, "AUDIO"

    const-string v7, "audio"

    .line 5
    invoke-direct {v0, v6, v5, v7}, Lcom/google/android/gms/internal/ads/zzfgh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgh;->zze:Lcom/google/android/gms/internal/ads/zzfgh;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/google/android/gms/internal/ads/zzfgh;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzfgh;->zza:Lcom/google/android/gms/internal/ads/zzfgh;

    aput-object v7, v6, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgh;->zzb:Lcom/google/android/gms/internal/ads/zzfgh;

    aput-object v1, v6, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgh;->zzc:Lcom/google/android/gms/internal/ads/zzfgh;

    aput-object v1, v6, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgh;->zzd:Lcom/google/android/gms/internal/ads/zzfgh;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/google/android/gms/internal/ads/zzfgh;->zzg:[Lcom/google/android/gms/internal/ads/zzfgh;

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

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgh;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzfgh;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgh;->zzg:[Lcom/google/android/gms/internal/ads/zzfgh;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzfgh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzfgh;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgh;->zzf:Ljava/lang/String;

    return-object v0
.end method
