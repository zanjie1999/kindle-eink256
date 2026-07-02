.class final synthetic Lcom/google/android/gms/internal/ads/zzewg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeli;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeli;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewg;->zza:Lcom/google/android/gms/internal/ads/zzeli;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzeli;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzewg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzewg;-><init>(Lcom/google/android/gms/internal/ads/zzeli;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewg;->zza:Lcom/google/android/gms/internal/ads/zzeli;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeli;->zzf()V

    return-void
.end method
