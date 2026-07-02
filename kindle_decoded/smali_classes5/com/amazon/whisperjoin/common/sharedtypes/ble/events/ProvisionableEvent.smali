.class public Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;
.super Ljava/lang/Object;
.source "ProvisionableEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final eventData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "TT;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 16
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->uuid:Ljava/util/UUID;

    .line 17
    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->eventData:Ljava/lang/Object;

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "uuid cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 36
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;

    .line 37
    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->uuid:Ljava/util/UUID;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->uuid:Ljava/util/UUID;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->eventData:Ljava/lang/Object;

    iget-object p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->eventData:Ljava/lang/Object;

    .line 38
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getEventData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->eventData:Ljava/lang/Object;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->uuid:Ljava/util/UUID;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->eventData:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
