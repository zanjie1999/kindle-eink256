.class public final Lcom/google/android/gms/internal/ads/zzcvx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzdih<",
        "Lcom/google/android/gms/internal/ads/zzdcq;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcvo;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzcww;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcvo;Lcom/google/android/gms/internal/ads/zzgln;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcvo;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzcww;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvx;->zza:Lcom/google/android/gms/internal/ads/zzcvo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvx;->zzb:Lcom/google/android/gms/internal/ads/zzgln;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvx;->zzb:Lcom/google/android/gms/internal/ads/zzgln;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgln;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcww;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcvo;->zzh(Lcom/google/android/gms/internal/ads/zzcww;)Lcom/google/android/gms/internal/ads/zzdih;

    move-result-object v0

    return-object v0
.end method
