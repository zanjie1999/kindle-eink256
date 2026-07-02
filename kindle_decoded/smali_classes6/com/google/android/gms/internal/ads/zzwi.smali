.class public final Lcom/google/android/gms/internal/ads/zzwi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final zza:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final zzb:Lcom/google/android/gms/internal/ads/zzvl;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzwl;

.field public zzd:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzwl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwi;->zzd:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwi;->zza:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwi;->zzb:Lcom/google/android/gms/internal/ads/zzvl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwi;->zzc:Lcom/google/android/gms/internal/ads/zzwl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzvl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzvl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwi;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwi;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwi;->zzb:Lcom/google/android/gms/internal/ads/zzvl;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwi;->zzc:Lcom/google/android/gms/internal/ads/zzwl;

    return-void
.end method

.method public static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzvl;)Lcom/google/android/gms/internal/ads/zzwi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/ads/zzvl;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzwi<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwi;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzwi;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzvl;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzwl;)Lcom/google/android/gms/internal/ads/zzwi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzwl;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzwi<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzwi;-><init>(Lcom/google/android/gms/internal/ads/zzwl;)V

    return-object v0
.end method


# virtual methods
.method public final zzc()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwi;->zzc:Lcom/google/android/gms/internal/ads/zzwl;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
