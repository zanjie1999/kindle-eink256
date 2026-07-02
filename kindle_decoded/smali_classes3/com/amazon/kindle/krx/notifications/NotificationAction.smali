.class public Lcom/amazon/kindle/krx/notifications/NotificationAction;
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

    .line 18
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

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/krx/notifications/NotificationAction;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/krx/notifications/NotificationAction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRefTag()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/krx/notifications/NotificationAction;->refTag:Ljava/lang/String;

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

    .line 45
    iput-object p1, p0, Lcom/amazon/kindle/krx/notifications/NotificationAction;->data:Ljava/util/Map;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/amazon/kindle/krx/notifications/NotificationAction;->name:Ljava/lang/String;

    return-void
.end method

.method public setRefTag(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/krx/notifications/NotificationAction;->refTag:Ljava/lang/String;

    return-void
.end method
