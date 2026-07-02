.class public final Lcom/amazon/kindle/inapp/notifications/util/NotificationData;
.super Ljava/lang/Object;
.source "NotificationData.kt"


# instance fields
.field private final expirationDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expiration_date"
    .end annotation
.end field

.field private final imageUrl:Ljava/lang/String;

.field private final tapAction:Lcom/amazon/kindle/inapp/notifications/util/TapAction;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->imageUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->imageUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->expirationDate:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->expirationDate:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->tapAction:Lcom/amazon/kindle/inapp/notifications/util/TapAction;

    iget-object p1, p1, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->tapAction:Lcom/amazon/kindle/inapp/notifications/util/TapAction;

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

.method public final getExpirationDate()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->expirationDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getTapAction()Lcom/amazon/kindle/inapp/notifications/util/TapAction;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->tapAction:Lcom/amazon/kindle/inapp/notifications/util/TapAction;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->imageUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->expirationDate:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->tapAction:Lcom/amazon/kindle/inapp/notifications/util/TapAction;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/util/TapAction;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationData(imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expirationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->expirationDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tapAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->tapAction:Lcom/amazon/kindle/inapp/notifications/util/TapAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
