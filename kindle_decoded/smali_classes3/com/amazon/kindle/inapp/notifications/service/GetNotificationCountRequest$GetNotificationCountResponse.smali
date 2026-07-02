.class public final Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountRequest$GetNotificationCountResponse;
.super Lcom/amazon/kindle/inapp/notifications/service/EmptyResponse;
.source "GetNotificationCountRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetNotificationCountResponse"
.end annotation


# instance fields
.field private final count:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()Ljava/lang/Integer;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountRequest$GetNotificationCountResponse;->count:Ljava/lang/Integer;

    return-object v0
.end method
