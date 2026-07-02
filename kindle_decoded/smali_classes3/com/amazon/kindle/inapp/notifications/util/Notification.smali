.class public final Lcom/amazon/kindle/inapp/notifications/util/Notification;
.super Ljava/lang/Object;
.source "Notification.kt"


# instance fields
.field private final category:Ljava/lang/String;

.field private final creationDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "creation_date"
    .end annotation
.end field

.field private final data:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final lastModifiedDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_modified_date"
    .end annotation
.end field

.field private notificationData:Lcom/amazon/kindle/inapp/notifications/util/NotificationData;

.field private final status:Ljava/lang/String;

.field private final subcategory:Ljava/lang/String;

.field private final tenantId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tenant_id"
    .end annotation
.end field

.field private final texts:Lcom/amazon/kindle/inapp/notifications/util/NotificationTexts;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/inapp/notifications/util/Notification;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/inapp/notifications/util/Notification;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/inapp/notifications/util/Notification;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->tenantId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/inapp/notifications/util/Notification;->tenantId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->category:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/inapp/notifications/util/Notification;->category:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->subcategory:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/inapp/notifications/util/Notification;->subcategory:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->texts:Lcom/amazon/kindle/inapp/notifications/util/NotificationTexts;

    iget-object v1, p1, Lcom/amazon/kindle/inapp/notifications/util/Notification;->texts:Lcom/amazon/kindle/inapp/notifications/util/NotificationTexts;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->status:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/inapp/notifications/util/Notification;->status:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->creationDate:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/inapp/notifications/util/Notification;->creationDate:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->lastModifiedDate:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/inapp/notifications/util/Notification;->lastModifiedDate:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->data:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/inapp/notifications/util/Notification;->data:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->notificationData:Lcom/amazon/kindle/inapp/notifications/util/NotificationData;

    iget-object p1, p1, Lcom/amazon/kindle/inapp/notifications/util/Notification;->notificationData:Lcom/amazon/kindle/inapp/notifications/util/NotificationData;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreationDate()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->creationDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getData()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotificationData()Lcom/amazon/kindle/inapp/notifications/util/NotificationData;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->notificationData:Lcom/amazon/kindle/inapp/notifications/util/NotificationData;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubcategory()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->subcategory:Ljava/lang/String;

    return-object v0
.end method

.method public final getTexts()Lcom/amazon/kindle/inapp/notifications/util/NotificationTexts;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->texts:Lcom/amazon/kindle/inapp/notifications/util/NotificationTexts;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->tenantId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->category:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->subcategory:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->texts:Lcom/amazon/kindle/inapp/notifications/util/NotificationTexts;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/util/NotificationTexts;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->status:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->creationDate:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->lastModifiedDate:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->data:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->notificationData:Lcom/amazon/kindle/inapp/notifications/util/NotificationData;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->hashCode()I

    move-result v1

    :cond_9
    add-int/2addr v0, v1

    return v0
.end method

.method public final setNotificationData(Lcom/amazon/kindle/inapp/notifications/util/NotificationData;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->notificationData:Lcom/amazon/kindle/inapp/notifications/util/NotificationData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tenantId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->tenantId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subcategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->subcategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", texts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->texts:Lcom/amazon/kindle/inapp/notifications/util/NotificationTexts;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->creationDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastModifiedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->lastModifiedDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/util/Notification;->notificationData:Lcom/amazon/kindle/inapp/notifications/util/NotificationData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
