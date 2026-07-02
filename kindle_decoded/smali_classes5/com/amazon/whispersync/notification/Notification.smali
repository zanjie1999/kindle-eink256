.class public abstract Lcom/amazon/whispersync/notification/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "Notification"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync.notification/"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/whispersync/notification/Notification;",
        ">;"
    }
.end annotation


# instance fields
.field private consumerId:Ljava/lang/String;

.field private notificationType:Ljava/lang/String;

.field private originInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private owner:Ljava/lang/String;

.field private sender:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/notification/Notification;)I
    .locals 6

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    return v1

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/Notification;->getOriginInfo()Ljava/util/Map;

    move-result-object v2

    .line 104
    invoke-virtual {p1}, Lcom/amazon/whispersync/notification/Notification;->getOriginInfo()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_6

    if-nez v2, :cond_2

    return v0

    :cond_2
    if-nez v3, :cond_3

    return v4

    .line 110
    :cond_3
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_4

    .line 111
    check-cast v2, Ljava/lang/Comparable;

    .line 112
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_6

    return v2

    .line 116
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 117
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 118
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_5

    return v0

    :cond_5
    if-le v2, v3, :cond_6

    return v4

    .line 125
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/Notification;->getNotificationType()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {p1}, Lcom/amazon/whispersync/notification/Notification;->getNotificationType()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_b

    if-nez v2, :cond_7

    return v0

    :cond_7
    if-nez v3, :cond_8

    return v4

    .line 132
    :cond_8
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_9

    .line 134
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_b

    return v2

    .line 138
    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 139
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 140
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_a

    return v0

    :cond_a
    if-le v2, v3, :cond_b

    return v4

    .line 147
    :cond_b
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/Notification;->getConsumerId()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {p1}, Lcom/amazon/whispersync/notification/Notification;->getConsumerId()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_10

    if-nez v2, :cond_c

    return v0

    :cond_c
    if-nez v3, :cond_d

    return v4

    .line 154
    :cond_d
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_e

    .line 156
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_10

    return v2

    .line 160
    :cond_e
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 161
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 162
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_f

    return v0

    :cond_f
    if-le v2, v3, :cond_10

    return v4

    .line 169
    :cond_10
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/Notification;->getSender()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {p1}, Lcom/amazon/whispersync/notification/Notification;->getSender()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_15

    if-nez v2, :cond_11

    return v0

    :cond_11
    if-nez v3, :cond_12

    return v4

    .line 176
    :cond_12
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_13

    .line 178
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_15

    return v2

    .line 182
    :cond_13
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 183
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 184
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_14

    return v0

    :cond_14
    if-le v2, v3, :cond_15

    return v4

    .line 191
    :cond_15
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/Notification;->getOwner()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {p1}, Lcom/amazon/whispersync/notification/Notification;->getOwner()Ljava/lang/String;

    move-result-object p1

    if-eq v2, p1, :cond_1a

    if-nez v2, :cond_16

    return v0

    :cond_16
    if-nez p1, :cond_17

    return v4

    .line 198
    :cond_17
    instance-of v3, v2, Ljava/lang/Comparable;

    if-eqz v3, :cond_18

    .line 200
    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_1a

    return p1

    .line 204
    :cond_18
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 205
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ge v2, p1, :cond_19

    return v0

    :cond_19
    if-le v2, p1, :cond_1a

    return v4

    :cond_1a
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/amazon/whispersync/notification/Notification;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/notification/Notification;->compareTo(Lcom/amazon/whispersync/notification/Notification;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 88
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/notification/Notification;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 89
    check-cast p1, Lcom/amazon/whispersync/notification/Notification;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/notification/Notification;->compareTo(Lcom/amazon/whispersync/notification/Notification;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getConsumerId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/amazon/whispersync/notification/Notification;->consumerId:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationType()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/EnumValues;
        value = {
            "RecordsUpdated",
            "DatasetUpdated",
            "DirectoryUpdated"
        }
    .end annotation

    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/notification/Notification;->notificationType:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginInfo()Ljava/util/Map;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/MapKeyConstraint;
        value = .subannotation Lcom/amazon/whispersync/coral/annotation/NestedConstraints;
        .end subannotation
    .end annotation

    .annotation runtime Lcom/amazon/whispersync/coral/annotation/MapValueConstraint;
        value = .subannotation Lcom/amazon/whispersync/coral/annotation/NestedConstraints;
        .end subannotation
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/amazon/whispersync/notification/Notification;->originInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/amazon/whispersync/notification/Notification;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/amazon/whispersync/notification/Notification;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/Notification;->getOriginInfo()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/Notification;->getOriginInfo()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 76
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/Notification;->getNotificationType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/Notification;->getNotificationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 77
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/Notification;->getConsumerId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/Notification;->getConsumerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    .line 78
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/Notification;->getSender()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/Notification;->getSender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    .line 79
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/Notification;->getOwner()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/Notification;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public setConsumerId(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/whispersync/notification/Notification;->consumerId:Ljava/lang/String;

    return-void
.end method

.method public setNotificationType(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/whispersync/notification/Notification;->notificationType:Ljava/lang/String;

    return-void
.end method

.method public setOriginInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/amazon/whispersync/notification/Notification;->originInfo:Ljava/util/Map;

    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazon/whispersync/notification/Notification;->owner:Ljava/lang/String;

    return-void
.end method

.method public setSender(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/whispersync/notification/Notification;->sender:Ljava/lang/String;

    return-void
.end method
