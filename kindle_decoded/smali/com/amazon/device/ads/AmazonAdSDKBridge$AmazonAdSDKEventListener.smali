.class Lcom/amazon/device/ads/AmazonAdSDKBridge$AmazonAdSDKEventListener;
.super Ljava/lang/Object;
.source "AmazonAdSDKBridge.java"

# interfaces
.implements Lcom/amazon/device/ads/SDKEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AmazonAdSDKEventListener"
.end annotation


# instance fields
.field private final bridge:Lcom/amazon/device/ads/AmazonAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AmazonAdSDKBridge;)V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge$AmazonAdSDKEventListener;->bridge:Lcom/amazon/device/ads/AmazonAdSDKBridge;

    return-void
.end method


# virtual methods
.method public onSDKEvent(Lcom/amazon/device/ads/SDKEvent;Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 0

    .line 245
    invoke-virtual {p1}, Lcom/amazon/device/ads/SDKEvent;->getEventType()Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    move-result-object p1

    sget-object p2, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->BACK_BUTTON_PRESSED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge$AmazonAdSDKEventListener;->bridge:Lcom/amazon/device/ads/AmazonAdSDKBridge;

    invoke-static {p1}, Lcom/amazon/device/ads/AmazonAdSDKBridge;->access$000(Lcom/amazon/device/ads/AmazonAdSDKBridge;)V

    :cond_0
    return-void
.end method
