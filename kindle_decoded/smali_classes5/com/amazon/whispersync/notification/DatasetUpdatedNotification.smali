.class public Lcom/amazon/whispersync/notification/DatasetUpdatedNotification;
.super Lcom/amazon/whispersync/notification/Notification;
.source "DatasetUpdatedNotification.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "DatasetUpdatedNotification"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync.notification/"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private dataset:Lcom/amazon/whispersync/Dataset;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/whispersync/notification/Notification;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/notification/Notification;)I
    .locals 6

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 67
    :cond_1
    instance-of v1, p1, Lcom/amazon/whispersync/notification/DatasetUpdatedNotification;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    return v2

    .line 69
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/amazon/whispersync/notification/DatasetUpdatedNotification;

    .line 71
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/DatasetUpdatedNotification;->getDataset()Lcom/amazon/whispersync/Dataset;

    move-result-object v3

    .line 72
    invoke-virtual {v1}, Lcom/amazon/whispersync/notification/DatasetUpdatedNotification;->getDataset()Lcom/amazon/whispersync/Dataset;

    move-result-object v4

    if-eq v3, v4, :cond_7

    if-nez v3, :cond_3

    return v0

    :cond_3
    if-nez v4, :cond_4

    return v2

    .line 78
    :cond_4
    instance-of v5, v3, Ljava/lang/Comparable;

    if-eqz v5, :cond_5

    .line 80
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_7

    return v3

    .line 84
    :cond_5
    invoke-virtual {v3, v4}, Lcom/amazon/whispersync/Dataset;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 85
    invoke-virtual {v3}, Lcom/amazon/whispersync/Dataset;->hashCode()I

    move-result v3

    .line 86
    invoke-virtual {v4}, Lcom/amazon/whispersync/Dataset;->hashCode()I

    move-result v4

    if-ge v3, v4, :cond_6

    return v0

    :cond_6
    if-le v3, v4, :cond_7

    return v2

    .line 93
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/DatasetUpdatedNotification;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {v1}, Lcom/amazon/whispersync/notification/DatasetUpdatedNotification;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eq v3, v1, :cond_c

    if-nez v3, :cond_8

    return v0

    :cond_8
    if-nez v1, :cond_9

    return v2

    .line 100
    :cond_9
    instance-of v4, v3, Ljava/lang/Comparable;

    if-eqz v4, :cond_a

    .line 102
    invoke-interface {v3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 106
    :cond_a
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 107
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ge v3, v1, :cond_b

    return v0

    :cond_b
    if-le v3, v1, :cond_c

    return v2

    .line 114
    :cond_c
    invoke-super {p0, p1}, Lcom/amazon/whispersync/notification/Notification;->compareTo(Lcom/amazon/whispersync/notification/Notification;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Lcom/amazon/whispersync/notification/Notification;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/notification/DatasetUpdatedNotification;->compareTo(Lcom/amazon/whispersync/notification/Notification;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 54
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/notification/DatasetUpdatedNotification;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 55
    check-cast p1, Lcom/amazon/whispersync/notification/DatasetUpdatedNotification;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/notification/DatasetUpdatedNotification;->compareTo(Lcom/amazon/whispersync/notification/Notification;)I

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

.method public getAction()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/EnumValues;
        value = {
            "Created",
            "Deleted"
        }
    .end annotation

    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/amazon/whispersync/notification/DatasetUpdatedNotification;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getDataset()Lcom/amazon/whispersync/Dataset;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/amazon/whispersync/notification/DatasetUpdatedNotification;->dataset:Lcom/amazon/whispersync/Dataset;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 45
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/DatasetUpdatedNotification;->getDataset()Lcom/amazon/whispersync/Dataset;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/DatasetUpdatedNotification;->getDataset()Lcom/amazon/whispersync/Dataset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/Dataset;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 46
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/DatasetUpdatedNotification;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/notification/DatasetUpdatedNotification;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 47
    invoke-super {p0}, Lcom/amazon/whispersync/notification/Notification;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/whispersync/notification/DatasetUpdatedNotification;->action:Ljava/lang/String;

    return-void
.end method

.method public setDataset(Lcom/amazon/whispersync/Dataset;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/whispersync/notification/DatasetUpdatedNotification;->dataset:Lcom/amazon/whispersync/Dataset;

    return-void
.end method
