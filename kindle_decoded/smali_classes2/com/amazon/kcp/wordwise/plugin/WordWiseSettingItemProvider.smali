.class public final Lcom/amazon/kcp/wordwise/plugin/WordWiseSettingItemProvider;
.super Ljava/lang/Object;
.source "WordWiseSettingItemProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemsProvider;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/amazon/kcp/wordwise/plugin/WordWiseSettingItemProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(WordWiseSet\u2026ItemProvider::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/plugin/WordWiseSettingItemProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method private final createWordWiseItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 7

    .line 39
    new-instance v6, Lcom/amazon/kindle/setting/item/template/ClickableItem;

    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/plugin/WordWiseSettingItemProvider;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 42
    sget v0, Lcom/amazon/kindle/ww/R$string;->kre_more_rs_wordwise_context:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 43
    sget-object v3, Lcom/amazon/kindle/setting/item/Category;->READING_SETTING:Lcom/amazon/kindle/setting/item/Category;

    .line 44
    new-instance v5, Lcom/amazon/kcp/wordwise/plugin/WordWiseSettingItemProvider$createWordWiseItem$1;

    invoke-direct {v5}, Lcom/amazon/kcp/wordwise/plugin/WordWiseSettingItemProvider$createWordWiseItem$1;-><init>()V

    const-string v1, "setting_item_word_wise"

    move-object v0, v6

    .line 39
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/setting/item/template/ClickableItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;Ljava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;)V

    return-object v6
.end method

.method private final getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 31
    sget v0, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026.wordwise_settings_title)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
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

    .line 27
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Utils.getFactory().context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kcp/wordwise/plugin/WordWiseSettingItemProvider;->createWordWiseItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
