.class public Lcom/amazon/device/ads/SISRegistration$RegisterEventsSISRequestorCallback;
.super Ljava/lang/Object;
.source "SISRegistration.java"

# interfaces
.implements Lcom/amazon/device/ads/SISRequestorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/SISRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RegisterEventsSISRequestorCallback"
.end annotation


# instance fields
.field private final sisRegistration:Lcom/amazon/device/ads/SISRegistration;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/SISRegistration;)V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/amazon/device/ads/SISRegistration$RegisterEventsSISRequestorCallback;->sisRegistration:Lcom/amazon/device/ads/SISRegistration;

    return-void
.end method


# virtual methods
.method public onSISCallComplete()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegistration$RegisterEventsSISRequestorCallback;->sisRegistration:Lcom/amazon/device/ads/SISRegistration;

    invoke-virtual {v0}, Lcom/amazon/device/ads/SISRegistration;->registerEvents()V

    return-void
.end method
