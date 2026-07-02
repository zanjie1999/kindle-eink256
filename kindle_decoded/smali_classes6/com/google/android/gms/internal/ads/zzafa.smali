.class final synthetic Lcom/google/android/gms/internal/ads/zzafa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalj;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzalj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzafa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzafa;->zza:Lcom/google/android/gms/internal/ads/zzalj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzahj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafr;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzafr;-><init>(I)V

    const/16 v1, 0x3eb

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaeg;->zzc(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzahj;->zzR(Lcom/google/android/gms/internal/ads/zzahc;)V

    return-void
.end method
