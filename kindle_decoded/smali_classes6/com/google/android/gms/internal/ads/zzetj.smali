.class final synthetic Lcom/google/android/gms/internal/ads/zzetj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzerx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzetk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzetk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzetj;->zza:Lcom/google/android/gms/internal/ads/zzetk;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetj;->zza:Lcom/google/android/gms/internal/ads/zzetk;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzetk;->zzb(Lorg/json/JSONObject;)V

    return-void
.end method
