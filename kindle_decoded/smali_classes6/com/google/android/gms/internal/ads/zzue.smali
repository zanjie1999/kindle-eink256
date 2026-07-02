.class final Lcom/google/android/gms/internal/ads/zzue;
.super Lcom/google/android/gms/internal/ads/zznl;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamn;JJII)V
    .locals 16

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzng;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzng;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzud;

    const v0, 0x1b8a0

    move-object/from16 v3, p1

    move/from16 v4, p6

    invoke-direct {v2, v4, v3, v0}, Lcom/google/android/gms/internal/ads/zzud;-><init>(ILcom/google/android/gms/internal/ads/zzamn;I)V

    const-wide/16 v3, 0x1

    add-long v7, p2, v3

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0xbc

    const/16 v15, 0x3ac

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/zznl;-><init>(Lcom/google/android/gms/internal/ads/zzni;Lcom/google/android/gms/internal/ads/zznk;JJJJJJI)V

    return-void
.end method
