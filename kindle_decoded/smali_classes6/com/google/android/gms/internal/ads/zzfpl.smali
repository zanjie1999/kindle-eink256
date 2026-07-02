.class final Lcom/google/android/gms/internal/ads/zzfpl;
.super Lcom/google/android/gms/internal/ads/zzfpp;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic zza:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zza:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfpp;-><init>()V

    return-void
.end method


# virtual methods
.method final zza()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpl;->zza:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
