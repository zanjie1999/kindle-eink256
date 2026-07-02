.class final synthetic Lcom/google/android/gms/internal/ads/zzdsl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdsr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsl;->zza:Lcom/google/android/gms/internal/ads/zzdsr;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsl;->zza:Lcom/google/android/gms/internal/ads/zzdsr;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsr;->zze(Landroid/view/View;Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method
