.class public final Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$GetNotificationsResponse;
.super Lcom/amazon/kindle/inapp/notifications/service/EmptyResponse;
.source "GetNotificationsRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetNotificationsResponse"
.end annotation


# instance fields
.field private final nextPage:Ljava/lang/String;

.field private final notifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/inapp/notifications/util/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNextPage()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$GetNotificationsResponse;->nextPage:Ljava/lang/String;

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

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$GetNotificationsResponse;->notifications:Ljava/util/List;

    return-object v0
.end method
