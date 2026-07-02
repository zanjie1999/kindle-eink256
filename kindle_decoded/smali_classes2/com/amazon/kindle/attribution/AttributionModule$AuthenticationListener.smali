.class public Lcom/amazon/kindle/attribution/AttributionModule$AuthenticationListener;
.super Ljava/lang/Object;
.source "AttributionModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/attribution/AttributionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuthenticationListener"
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/attribution/AttributionModule;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 148
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 149
    invoke-static {}, Lcom/amazon/kindle/event/UserEventRecorder;->getInstance()Lcom/amazon/kindle/event/UserEventRecorder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/event/UserEventRecorder;->onAppRegistered()V

    :cond_0
    return-void
.end method
