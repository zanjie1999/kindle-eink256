.class public Lcom/amazon/reader/notifications/message/NotificationAction;
.super Ljava/lang/Object;
.source "NotificationAction.java"


# instance fields
.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private refTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/NotificationAction;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/NotificationAction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRefTag()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/NotificationAction;->refTag:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/NotificationAction;->data:Ljava/util/Map;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/NotificationAction;->name:Ljava/lang/String;

    return-void
.end method

.method public setRefTag(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/NotificationAction;->refTag:Ljava/lang/String;

    return-void
.end method
