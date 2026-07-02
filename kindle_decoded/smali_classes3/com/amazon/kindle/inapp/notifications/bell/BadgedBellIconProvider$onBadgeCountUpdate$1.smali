.class public final Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$onBadgeCountUpdate$1;
.super Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountAsyncTask;
.source "BadgedBellIconProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;->onBadgeCountUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ")V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p2}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountAsyncTask;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 99
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->Companion:Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->setCount(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 97
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$onBadgeCountUpdate$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
