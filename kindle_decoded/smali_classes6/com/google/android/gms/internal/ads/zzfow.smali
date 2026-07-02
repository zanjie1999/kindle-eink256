.class final enum Lcom/google/android/gms/internal/ads/zzfow;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzfow;",
        ">;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzfow;

.field private static final synthetic zzb:[Lcom/google/android/gms/internal/ads/zzfow;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfow;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfow;->zza:Lcom/google/android/gms/internal/ads/zzfow;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzfow;

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/android/gms/internal/ads/zzfow;->zzb:[Lcom/google/android/gms/internal/ads/zzfow;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string p1, "INSTANCE"

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzfow;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfow;->zzb:[Lcom/google/android/gms/internal/ads/zzfow;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzfow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzfow;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "no calls to next() since the last call to remove()"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzflx;->zzb(ZLjava/lang/Object;)V

    return-void
.end method
