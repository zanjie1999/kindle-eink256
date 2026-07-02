.class final Lcom/google/android/gms/internal/ads/zzfqe;
.super Lcom/google/android/gms/internal/ads/zzfpw;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzfpw<",
        "Ljava/lang/Comparable<",
        "*>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzfqe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfqe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqe;->zza:Lcom/google/android/gms/internal/ads/zzfqe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfpw;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Ordering.natural().reverse()"

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzfpw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/android/gms/internal/ads/zzfpw<",
            "TS;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfpu;->zza:Lcom/google/android/gms/internal/ads/zzfpu;

    return-object v0
.end method
