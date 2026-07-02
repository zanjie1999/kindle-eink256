.class public final Lcom/google/android/gms/internal/ads/zzfcp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/zzdal<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/zzcxg;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzfcc;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzfcy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfcy<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfcc;Lcom/google/android/gms/internal/ads/zzfcy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfcc;",
            "Lcom/google/android/gms/internal/ads/zzfcy<",
            "TR;TAdT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcp;->zza:Lcom/google/android/gms/internal/ads/zzfcc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfcp;->zzb:Lcom/google/android/gms/internal/ads/zzfcy;

    return-void
.end method
