.class Lcom/amazon/kindle/services/events/SubscriberConfig;
.super Lcom/amazon/kindle/services/events/BaseSubscriberConfig;
.source "SubscriberConfig.java"


# instance fields
.field eventType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kindle/krx/events/IEvent;",
            ">;"
        }
    .end annotation
.end field

.field paramType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kindle/krx/events/IEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 15
    instance-of v0, p1, Lcom/amazon/kindle/services/events/SubscriberConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 16
    check-cast p1, Lcom/amazon/kindle/services/events/SubscriberConfig;

    .line 17
    iget-object v0, p0, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->method:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->method:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/services/events/SubscriberConfig;->paramType:Ljava/lang/Class;

    iget-object v2, p1, Lcom/amazon/kindle/services/events/SubscriberConfig;->paramType:Ljava/lang/Class;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/services/events/SubscriberConfig;->eventType:Ljava/lang/Class;

    iget-object p1, p1, Lcom/amazon/kindle/services/events/SubscriberConfig;->eventType:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/services/events/SubscriberConfig;->paramType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/services/events/SubscriberConfig;->eventType:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/services/events/SubscriberConfig;->paramType:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->isBlocking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
