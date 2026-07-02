.class Lcom/amazon/device/ads/Settings$TransientValue;
.super Lcom/amazon/device/ads/Settings$Value;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransientValue"
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 598
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 599
    iput-boolean p1, p0, Lcom/amazon/device/ads/Settings$Value;->isTransientData:Z

    return-void
.end method
