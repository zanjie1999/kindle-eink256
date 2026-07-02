.class final Lcom/google/android/gms/internal/ads/zzfov;
.super Lcom/google/android/gms/internal/ads/zzfml;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzfml<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzfqm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfqm<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzb:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfov;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/google/android/gms/internal/ads/zzfov;-><init>([Ljava/lang/Object;III)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfov;->zza:Lcom/google/android/gms/internal/ads/zzfqm;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;III)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p2, p2}, Lcom/google/android/gms/internal/ads/zzfml;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfov;->zzb:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfov;->zzb:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
