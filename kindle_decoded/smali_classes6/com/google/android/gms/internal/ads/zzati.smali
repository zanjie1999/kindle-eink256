.class final Lcom/google/android/gms/internal/ads/zzati;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/ads/zzanm;",
        ">;"
    }
.end annotation


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzatj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzanm;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzanm;

    .line 2
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzanm;->zzb:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzanm;->zzb:I

    sub-int/2addr p2, p1

    return p2
.end method
