.class public Lcom/amazon/device/ads/AmazonOOAdEvent;
.super Lcom/amazon/device/ads/AdEvent;
.source "AmazonOOAdEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;
    }
.end annotation


# static fields
.field static adEventTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/device/ads/AdEvent$AdEventType;",
            "Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final adEvent:Lcom/amazon/device/ads/AdEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AmazonOOAdEvent;->adEventTypeMap:Ljava/util/HashMap;

    .line 18
    sget-object v1, Lcom/amazon/device/ads/AdEvent$AdEventType;->CLICKED:Lcom/amazon/device/ads/AdEvent$AdEventType;

    sget-object v2, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;->CLICKED:Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/amazon/device/ads/AmazonOOAdEvent;->adEventTypeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/device/ads/AdEvent$AdEventType;->CLOSED:Lcom/amazon/device/ads/AdEvent$AdEventType;

    sget-object v2, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;->CLOSED:Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/amazon/device/ads/AmazonOOAdEvent;->adEventTypeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/device/ads/AdEvent$AdEventType;->EXPANDED:Lcom/amazon/device/ads/AdEvent$AdEventType;

    sget-object v2, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;->EXPANDED:Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/amazon/device/ads/AmazonOOAdEvent;->adEventTypeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/device/ads/AdEvent$AdEventType;->OTHER:Lcom/amazon/device/ads/AdEvent$AdEventType;

    sget-object v2, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;->OTHER:Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/amazon/device/ads/AmazonOOAdEvent;->adEventTypeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/device/ads/AdEvent$AdEventType;->RESIZED:Lcom/amazon/device/ads/AdEvent$AdEventType;

    sget-object v2, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;->RESIZED:Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdEvent;)V
    .locals 1

    .line 27
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdEvent;->getAdEventType()Lcom/amazon/device/ads/AdEvent$AdEventType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdEvent;-><init>(Lcom/amazon/device/ads/AdEvent$AdEventType;)V

    .line 28
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonOOAdEvent;->adEvent:Lcom/amazon/device/ads/AdEvent;

    return-void
.end method
