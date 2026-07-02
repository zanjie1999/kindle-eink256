.class public final Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider$createGroupBooksBySeriesItem$1;
.super Ljava/lang/Object;
.source "GroupBooksBySeriesItemProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnToggleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider;->createGroupBooksBySeriesItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field final synthetic $userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

.field final synthetic this$0:Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/krx/events/IMessageQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;",
            ")V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider$createGroupBooksBySeriesItem$1;->this$0:Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider;

    iput-object p2, p0, Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider$createGroupBooksBySeriesItem$1;->$userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    iput-object p3, p0, Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider$createGroupBooksBySeriesItem$1;->$messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider$createGroupBooksBySeriesItem$1;->$userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    const-string/jumbo v1, "userSettingsController"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setSeriesContentGrouped(Z)V

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider$createGroupBooksBySeriesItem$1;->$messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/groupcontent/GroupContentSettingChangeEvent;

    invoke-direct {v1}, Lcom/amazon/kcp/groupcontent/GroupContentSettingChangeEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider$createGroupBooksBySeriesItem$1;->this$0:Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider;

    xor-int/lit8 p2, p2, 0x1

    const-string v1, "SeriesGrouping"

    invoke-static {v0, v1, p2}, Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider;->access$reportSettingChange(Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider;Ljava/lang/String;Z)V

    .line 55
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;->getInstance()Lcom/amazon/kindle/setting/item/ItemsUpdateService;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider$createGroupBooksBySeriesItem$1;->this$0:Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider;

    invoke-static {v0, p1}, Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider;->access$createGroupBooksBySeriesItem(Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider;Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/kindle/setting/item/ItemsUpdateService;->notifyItemUpdate(Lcom/amazon/kindle/setting/item/Item;)V

    return-void
.end method
