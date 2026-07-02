.class Lcom/amazon/device/ads/SDKEvent;
.super Ljava/lang/Object;
.source "SDKEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/SDKEvent$SDKEventType;
    }
.end annotation


# instance fields
.field private final eventType:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

.field private final parameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/SDKEvent$SDKEventType;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/SDKEvent;->parameters:Ljava/util/HashMap;

    .line 23
    iput-object p1, p0, Lcom/amazon/device/ads/SDKEvent;->eventType:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    return-void
.end method


# virtual methods
.method public getEventType()Lcom/amazon/device/ads/SDKEvent$SDKEventType;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/device/ads/SDKEvent;->eventType:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/device/ads/SDKEvent;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/ads/SDKEvent;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/device/ads/SDKEvent;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
