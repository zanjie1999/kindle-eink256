.class public final Lcom/google/android/gms/internal/ads/zzfuf;
.super Lcom/google/android/gms/internal/ads/zzfto;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PrimitiveT:",
        "Ljava/lang/Object;",
        "KeyProtoT::",
        "Lcom/google/android/gms/internal/ads/zzghi;",
        "PublicKeyProtoT::",
        "Lcom/google/android/gms/internal/ads/zzghi;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzfto<",
        "TPrimitiveT;TKeyProtoT;>;",
        "Lcom/google/android/gms/internal/ads/zzftm<",
        "TPrimitiveT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfug;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfug<",
            "TKeyProtoT;TPublicKeyProtoT;>;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzftu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzftu<",
            "TPublicKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfug;Lcom/google/android/gms/internal/ads/zzftu;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfug<",
            "TKeyProtoT;TPublicKeyProtoT;>;",
            "Lcom/google/android/gms/internal/ads/zzftu<",
            "TPublicKeyProtoT;>;",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzfto;-><init>(Lcom/google/android/gms/internal/ads/zzftu;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuf;->zza:Lcom/google/android/gms/internal/ads/zzfug;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfuf;->zzb:Lcom/google/android/gms/internal/ads/zzftu;

    return-void
.end method
