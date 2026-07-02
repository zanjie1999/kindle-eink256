.class public Lcom/amazon/kindle/socialsharing/AccountChangeListener;
.super Ljava/lang/Object;
.source "AccountChangeListener.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.kindle.socialsharing.AccountChangeListener"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/amazon/kindle/socialsharing/AccountChangeListener;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static performActionsForDeregistration()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->getInstance()Lcom/amazon/kindle/socialsharing/util/FacebookHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->logoutUserFromWebDialog()V

    return-void
.end method


# virtual methods
.method public onKRXAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 33
    sget-object v0, Lcom/amazon/kindle/socialsharing/AccountChangeListener;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KRX Authentication event received.  [type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 36
    invoke-static {}, Lcom/amazon/kindle/socialsharing/AccountChangeListener;->performActionsForDeregistration()V

    :cond_0
    return-void
.end method
