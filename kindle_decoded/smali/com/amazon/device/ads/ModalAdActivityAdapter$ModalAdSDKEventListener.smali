.class Lcom/amazon/device/ads/ModalAdActivityAdapter$ModalAdSDKEventListener;
.super Ljava/lang/Object;
.source "ModalAdActivityAdapter.java"

# interfaces
.implements Lcom/amazon/device/ads/SDKEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/ModalAdActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModalAdSDKEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/ModalAdActivityAdapter;


# direct methods
.method private constructor <init>(Lcom/amazon/device/ads/ModalAdActivityAdapter;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter$ModalAdSDKEventListener;->this$0:Lcom/amazon/device/ads/ModalAdActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/device/ads/ModalAdActivityAdapter;Lcom/amazon/device/ads/ModalAdActivityAdapter$1;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/ModalAdActivityAdapter$ModalAdSDKEventListener;-><init>(Lcom/amazon/device/ads/ModalAdActivityAdapter;)V

    return-void
.end method


# virtual methods
.method public onSDKEvent(Lcom/amazon/device/ads/SDKEvent;Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 0

    .line 333
    invoke-virtual {p1}, Lcom/amazon/device/ads/SDKEvent;->getEventType()Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    move-result-object p1

    sget-object p2, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->CLOSED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 335
    iget-object p1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter$ModalAdSDKEventListener;->this$0:Lcom/amazon/device/ads/ModalAdActivityAdapter;

    invoke-static {p1}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->access$500(Lcom/amazon/device/ads/ModalAdActivityAdapter;)V

    :cond_0
    return-void
.end method
