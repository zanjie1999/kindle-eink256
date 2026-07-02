.class public interface abstract Lcom/amazon/device/ads/AmazonOOAdListener;
.super Ljava/lang/Object;
.source "AmazonOOAdListener.java"

# interfaces
.implements Lcom/amazon/device/ads/AdListener;


# virtual methods
.method public abstract onAdEvent(Lcom/amazon/device/ads/AmazonOOAdEvent;)V
.end method

.method public abstract onAdReceived(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AmazonOOAdResponse;)Lcom/amazon/device/ads/AmazonOOActionCode;
.end method

.method public abstract onSpecialUrlClicked(Lcom/amazon/device/ads/Ad;Ljava/lang/String;)V
.end method
