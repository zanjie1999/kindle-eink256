.class public final enum Lcom/google/android/gms/internal/ads/zzfgi;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzfgi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzfgi;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzfgi;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzfgi;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzfgi;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/ads/zzfgi;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgi;

    const/4 v1, 0x0

    const-string v2, "VIDEO_CONTROLS"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfgi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgi;->zza:Lcom/google/android/gms/internal/ads/zzfgi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgi;

    const/4 v2, 0x1

    const-string v3, "CLOSE_AD"

    .line 2
    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzfgi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgi;->zzb:Lcom/google/android/gms/internal/ads/zzfgi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgi;

    const/4 v3, 0x2

    const-string v4, "NOT_VISIBLE"

    .line 3
    invoke-direct {v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzfgi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgi;->zzc:Lcom/google/android/gms/internal/ads/zzfgi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgi;

    const/4 v4, 0x3

    const-string v5, "OTHER"

    .line 4
    invoke-direct {v0, v5, v4}, Lcom/google/android/gms/internal/ads/zzfgi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgi;->zzd:Lcom/google/android/gms/internal/ads/zzfgi;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzfgi;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzfgi;->zza:Lcom/google/android/gms/internal/ads/zzfgi;

    aput-object v6, v5, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgi;->zzb:Lcom/google/android/gms/internal/ads/zzfgi;

    aput-object v1, v5, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgi;->zzc:Lcom/google/android/gms/internal/ads/zzfgi;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/google/android/gms/internal/ads/zzfgi;->zze:[Lcom/google/android/gms/internal/ads/zzfgi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzfgi;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgi;->zze:[Lcom/google/android/gms/internal/ads/zzfgi;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzfgi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzfgi;

    return-object v0
.end method
