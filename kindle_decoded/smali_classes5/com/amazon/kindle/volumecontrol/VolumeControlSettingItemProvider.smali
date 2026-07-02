.class public final Lcom/amazon/kindle/volumecontrol/VolumeControlSettingItemProvider;
.super Ljava/lang/Object;
.source "VolumeControlSettingItemProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemsProvider;


# instance fields
.field private final userSettings:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/volumecontrol/VolumeControlSettingItemProvider;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    return-void
.end method

.method public static final synthetic access$createVolumeButtonsControlItem(Lcom/amazon/kindle/volumecontrol/VolumeControlSettingItemProvider;Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/kindle/volumecontrol/VolumeControlSettingItemProvider;->createVolumeButtonsControlItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUserSettings$p(Lcom/amazon/kindle/volumecontrol/VolumeControlSettingItemProvider;)Lcom/amazon/kcp/application/UserSettingsController;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kindle/volumecontrol/VolumeControlSettingItemProvider;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    return-object p0
.end method

.method private final createVolumeButtonsControlItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 11

    .line 37
    new-instance v10, Lcom/amazon/kindle/setting/item/template/ToggleItem;

    .line 39
    sget v0, Lcom/amazon/kindle/krl/R$string;->kre_more_rs_volume_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "context.getString(R.stri\u2026kre_more_rs_volume_title)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget v0, Lcom/amazon/kindle/krl/R$string;->kre_more_rs_volume_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 41
    sget-object v4, Lcom/amazon/kindle/setting/item/Category;->READING_SETTING:Lcom/amazon/kindle/setting/item/Category;

    .line 42
    invoke-direct {p0}, Lcom/amazon/kindle/volumecontrol/VolumeControlSettingItemProvider;->isVolumeButtonsControlToggleItemOn()Z

    move-result v5

    .line 43
    new-instance v6, Lcom/amazon/kindle/volumecontrol/VolumeControlSettingItemProvider$createVolumeButtonsControlItem$1;

    invoke-direct {v6, p0}, Lcom/amazon/kindle/volumecontrol/VolumeControlSettingItemProvider$createVolumeButtonsControlItem$1;-><init>(Lcom/amazon/kindle/volumecontrol/VolumeControlSettingItemProvider;)V

    const-string/jumbo v1, "setting_item_volume_buttons_control"

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x0

    move-object v0, v10

    .line 37
    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/setting/item/template/ToggleItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;ZLcom/amazon/kindle/setting/item/template/OnToggleHandler;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10
.end method

.method private final isVolumeButtonsControlToggleItemOn()Z
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/volumecontrol/VolumeControlSettingItemProvider;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->areVolumePagesControlsIgnoreTTS()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getItems()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/setting/item/Item;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Utils.getFactory().context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/volumecontrol/VolumeControlSettingItemProvider;->createVolumeButtonsControlItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
