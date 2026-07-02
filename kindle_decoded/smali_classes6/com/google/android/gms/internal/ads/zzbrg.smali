.class final Lcom/google/android/gms/internal/ads/zzbrg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfrk<",
        "Lcom/google/android/gms/internal/ads/zzbre;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbqy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbrk;Lcom/google/android/gms/internal/ads/zzbqy;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbrg;->zza:Lcom/google/android/gms/internal/ads/zzbqy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbre;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzchl;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzchl;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbrg;->zza:Lcom/google/android/gms/internal/ads/zzbqy;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbrf;

    .line 3
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzbrf;-><init>(Lcom/google/android/gms/internal/ads/zzbrg;Lcom/google/android/gms/internal/ads/zzchl;)V

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbre;->zze(Lcom/google/android/gms/internal/ads/zzbqy;Lcom/google/android/gms/internal/ads/zzbrd;)V

    return-object v0
.end method
