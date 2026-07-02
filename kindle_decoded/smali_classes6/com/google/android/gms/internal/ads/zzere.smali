.class final synthetic Lcom/google/android/gms/internal/ads/zzere;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfln;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzfln;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzere;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzere;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzere;->zza:Lcom/google/android/gms/internal/ads/zzfln;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Exception;

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzerg;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzerg;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
