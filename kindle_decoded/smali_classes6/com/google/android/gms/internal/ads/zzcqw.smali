.class public final Lcom/google/android/gms/internal/ads/zzcqw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcqv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcqv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqw;->zza:Lcom/google/android/gms/internal/ads/zzcqv;

    return-void
.end method

.method public static final zza()Lcom/google/android/gms/ads/internal/zza;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/android/gms/ads/internal/zza;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzckm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzckm;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcit;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzcit;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcdt;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcdu;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzcdt;-><init>(Lcom/google/android/gms/internal/ads/zzcdu;[B)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzazf;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzazf;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbzv;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbzv;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbkm;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzbkm;-><init>()V

    const/4 v7, 0x0

    move-object v0, v8

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/zza;-><init>(Lcom/google/android/gms/internal/ads/zzckm;Lcom/google/android/gms/internal/ads/zzcij;Lcom/google/android/gms/internal/ads/zzcdt;Lcom/google/android/gms/internal/ads/zzazf;Lcom/google/android/gms/internal/ads/zzbzv;Lcom/google/android/gms/internal/ads/zzbkm;[B)V

    return-object v8
.end method
