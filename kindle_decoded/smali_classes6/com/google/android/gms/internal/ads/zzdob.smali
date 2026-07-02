.class final synthetic Lcom/google/android/gms/internal/ads/zzdob;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpr;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzbpr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdob;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdob;->zza:Lcom/google/android/gms/internal/ads/zzbpr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcml;

    const-string p2, "Show native ad policy validator overlay."

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcml;->zzH()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
