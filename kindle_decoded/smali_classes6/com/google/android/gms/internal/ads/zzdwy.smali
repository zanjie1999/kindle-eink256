.class public final Lcom/google/android/gms/internal/ads/zzdwy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzdwx;",
        ">;"
    }
.end annotation


# direct methods
.method public static zza(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdwm;Lcom/google/android/gms/internal/ads/zzcoj;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdwx;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzdwx;

    move-object v0, v7

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdwx;-><init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdwm;Lcom/google/android/gms/internal/ads/zzcoj;Ljava/lang/String;)V

    return-object v7
.end method
