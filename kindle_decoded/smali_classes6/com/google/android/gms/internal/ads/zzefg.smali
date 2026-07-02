.class final synthetic Lcom/google/android/gms/internal/ads/zzefg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzefh;

.field private final zzb:Landroid/view/View;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzezz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzefh;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzezz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefg;->zza:Lcom/google/android/gms/internal/ads/zzefh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefg;->zzb:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefg;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefg;->zza:Lcom/google/android/gms/internal/ads/zzefh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefg;->zzb:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefg;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzefh;->zzc(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
