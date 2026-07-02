.class Lcom/amazon/kindle/contentupdate/ContentUpdateService$ScheduledUpdate;
.super Ljava/lang/Object;
.source "ContentUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/contentupdate/ContentUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduledUpdate"
.end annotation


# instance fields
.field final future:Ljava/util/concurrent/ScheduledFuture;

.field final updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/contentupdate/db/UpdateItem;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1105
    iput-object p2, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$ScheduledUpdate;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    .line 1106
    iput-object p3, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$ScheduledUpdate;->future:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
