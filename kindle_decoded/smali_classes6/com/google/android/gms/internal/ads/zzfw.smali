.class final synthetic Lcom/google/android/gms/internal/ads/zzfw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfw;->zza:Lcom/google/android/gms/internal/ads/zzgd;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfw;->zza:Lcom/google/android/gms/internal/ads/zzgd;

    sget v1, Lcom/google/android/gms/internal/ads/zzge;->zza:I

    .line 2
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzgd;->zza(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgd;->zza(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
