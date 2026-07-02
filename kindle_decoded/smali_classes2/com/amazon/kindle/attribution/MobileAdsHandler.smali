.class public Lcom/amazon/kindle/attribution/MobileAdsHandler;
.super Ljava/lang/Object;
.source "MobileAdsHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kindle/attribution/MobileAdsHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/attribution/MobileAdsHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserEvent(Lcom/amazon/kindle/event/UserEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = false
    .end annotation

    .line 20
    invoke-virtual {p1}, Lcom/amazon/kindle/event/UserEvent;->getEventType()Lcom/amazon/kindle/event/UserEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/event/UserEvent$EventType;->FIRST_REGISTRATION:Lcom/amazon/kindle/event/UserEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 22
    invoke-static {}, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->getInstance()Lcom/amazon/kcp/application/MobileAdsRegistrationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->handleFirstLogin()V

    :cond_0
    return-void
.end method
