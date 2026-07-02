.class public Lcom/google/android/gms/ads/AdRequest;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdRequest$Builder;
    }
.end annotation


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzbhj;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/AdRequest$Builder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhj;

    iget-object p1, p1, Lcom/google/android/gms/ads/AdRequest$Builder;->zza:Lcom/google/android/gms/internal/ads/zzbhi;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbhj;-><init>(Lcom/google/android/gms/internal/ads/zzbhi;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zza:Lcom/google/android/gms/internal/ads/zzbhj;

    return-void
.end method


# virtual methods
.method public zza()Lcom/google/android/gms/internal/ads/zzbhj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zza:Lcom/google/android/gms/internal/ads/zzbhj;

    return-object v0
.end method
