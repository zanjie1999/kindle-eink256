.class public abstract Lcom/google/android/gms/internal/ads/zzfpw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzfpw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/android/gms/internal/ads/zzfpw<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfpu;->zza:Lcom/google/android/gms/internal/ads/zzfpu;

    return-object v0
.end method

.method public static zzc(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/zzfpw<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzfpw;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/ads/zzfpw;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnu;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfnu;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method

.method public zza()Lcom/google/android/gms/internal/ads/zzfpw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/android/gms/internal/ads/zzfpw<",
            "TS;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfqf;-><init>(Lcom/google/android/gms/internal/ads/zzfpw;)V

    return-object v0
.end method
