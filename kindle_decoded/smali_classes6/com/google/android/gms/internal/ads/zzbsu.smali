.class final Lcom/google/android/gms/internal/ads/zzbsu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbpr<",
        "Lcom/google/android/gms/internal/ads/zzcml;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbsv;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbpr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbpr<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbtt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbsv;Lcom/google/android/gms/internal/ads/zzbpr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbpr<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbtt;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsu;->zza:Lcom/google/android/gms/internal/ads/zzbsv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsu;->zzb:Lcom/google/android/gms/internal/ads/zzbpr;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbsu;)Lcom/google/android/gms/internal/ads/zzbpr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbsu;->zzb:Lcom/google/android/gms/internal/ads/zzbpr;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcml;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsu;->zzb:Lcom/google/android/gms/internal/ads/zzbpr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsu;->zza:Lcom/google/android/gms/internal/ads/zzbsv;

    .line 2
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbpr;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
