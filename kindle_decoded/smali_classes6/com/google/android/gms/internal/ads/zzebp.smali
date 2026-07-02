.class public final Lcom/google/android/gms/internal/ads/zzebp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zzd:Lcom/google/android/gms/internal/ads/zzbtz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbtz<",
            "Lcom/google/android/gms/internal/ads/zzebp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzebt;

.field public final zzb:Lorg/json/JSONObject;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzcbm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzebo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzebp;->zzd:Lcom/google/android/gms/internal/ads/zzbtz;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzebt;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcbm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebp;->zza:Lcom/google/android/gms/internal/ads/zzebt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebp;->zzb:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzebp;->zzc:Lcom/google/android/gms/internal/ads/zzcbm;

    return-void
.end method
