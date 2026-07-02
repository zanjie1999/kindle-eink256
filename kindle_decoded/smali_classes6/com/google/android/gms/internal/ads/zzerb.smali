.class final synthetic Lcom/google/android/gms/internal/ads/zzerb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field static final zza:Ljava/util/concurrent/Callable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzerb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzerb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzerb;->zza:Ljava/util/concurrent/Callable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzerg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzerg;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
