.class public Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;
.super Ljava/lang/Object;
.source "ProvisioningEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<EventType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whisperjoin.common.sharedtypes.provisioning.events.ProvisioningEvent"


# instance fields
.field private final mEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TEventType;"
        }
    .end annotation
.end field

.field private final mEventData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEventType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 21
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->mEvent:Ljava/lang/Object;

    .line 22
    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->mEventData:Ljava/lang/Object;

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "event can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 29
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;

    .line 33
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->mEvent:Ljava/lang/Object;

    iget-object v2, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->mEvent:Ljava/lang/Object;

    .line 34
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->mEventData:Ljava/lang/Object;

    iget-object p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->mEventData:Ljava/lang/Object;

    .line 35
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 36
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getEvent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TEventType;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->mEvent:Ljava/lang/Object;

    return-object v0
.end method

.method public getEventObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EventObject:",
            "Ljava/lang/Object;",
            ">()TEventObject;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->mEventData:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 41
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>(II)V

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->mEvent:Ljava/lang/Object;

    .line 42
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->mEventData:Ljava/lang/Object;

    .line 43
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 44
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method
