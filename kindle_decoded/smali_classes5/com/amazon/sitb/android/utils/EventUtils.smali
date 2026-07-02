.class public Lcom/amazon/sitb/android/utils/EventUtils;
.super Ljava/lang/Object;
.source "EventUtils.java"


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/utils/EventUtils;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/utils/EventUtils;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static publishExternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V
    .locals 3

    .line 19
    sget-object v0, Lcom/amazon/sitb/android/utils/EventUtils;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    invoke-interface {v0}, Lcom/amazon/sitb/android/ISamplingLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/amazon/sitb/android/utils/EventUtils;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXTERNAL EVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 23
    :cond_0
    invoke-interface {p0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public static publishInternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V
    .locals 3

    .line 28
    sget-object v0, Lcom/amazon/sitb/android/utils/EventUtils;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    invoke-interface {v0}, Lcom/amazon/sitb/android/ISamplingLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/amazon/sitb/android/utils/EventUtils;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTERNAL EVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 32
    :cond_0
    invoke-interface {p0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
