.class public final Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;
.super Ljava/lang/Object;
.source "GetNotificationsResult.kt"


# instance fields
.field private final nextPageToken:Ljava/lang/String;

.field private final notifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/inapp/notifications/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private final success:Z


# direct methods
.method public constructor <init>(ZLjava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/inapp/notifications/util/Notification;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "notifications"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->success:Z

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->notifications:Ljava/util/List;

    iput-object p3, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->nextPageToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;

    iget-boolean v1, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->success:Z

    iget-boolean v3, p1, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->success:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->notifications:Ljava/util/List;

    iget-object v3, p1, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->notifications:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->nextPageToken:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->nextPageToken:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getNextPageToken()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->nextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/inapp/notifications/util/Notification;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->notifications:Ljava/util/List;

    return-object v0
.end method

.method public final getSuccess()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->success:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->success:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->notifications:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->nextPageToken:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetNotificationsResult(success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->notifications:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nextPageToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;->nextPageToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
