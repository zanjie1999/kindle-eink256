.class public final Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider$createShowClockWhileReadingItem$1;
.super Ljava/lang/Object;
.source "TimeDisplaySettingItemProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnToggleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider;->createShowClockWhileReadingItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider$createShowClockWhileReadingItem$1;->this$0:Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 p2, p2, 0x1

    .line 53
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setTimeDisplayVisibility(Z)V

    .line 56
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;->getInstance()Lcom/amazon/kindle/setting/item/ItemsUpdateService;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider$createShowClockWhileReadingItem$1;->this$0:Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider;

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider;->createShowClockWhileReadingItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/setting/item/ItemsUpdateService;->notifyItemUpdate(Lcom/amazon/kindle/setting/item/Item;)V

    if-eqz p2, :cond_0

    const-string p1, "TimeDisplaySettingOn"

    goto :goto_0

    :cond_0
    const-string p1, "TimeDisplaySettingOff"

    .line 64
    :goto_0
    iget-object p2, p0, Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider$createShowClockWhileReadingItem$1;->this$0:Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider;

    invoke-static {p2, p1}, Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider;->access$reportMetrics(Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider;Ljava/lang/String;)V

    return-void
.end method
