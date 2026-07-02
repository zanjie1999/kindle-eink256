.class final Lcom/google/ads/mediation/customevent/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/ads/mediation/customevent/CustomEventBannerListener;


# instance fields
.field private final zza:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

.field private final zzb:Lcom/google/ads/mediation/MediationBannerListener;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/MediationBannerListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/customevent/zza;->zza:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/customevent/zza;->zzb:Lcom/google/ads/mediation/MediationBannerListener;

    return-void
.end method
