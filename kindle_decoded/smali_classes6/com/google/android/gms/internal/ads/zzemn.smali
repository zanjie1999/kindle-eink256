.class final synthetic Lcom/google/android/gms/internal/ads/zzemn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzfrk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzemn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzemn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzemn;->zza:Lcom/google/android/gms/internal/ads/zzfrk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzemo;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzemo;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
