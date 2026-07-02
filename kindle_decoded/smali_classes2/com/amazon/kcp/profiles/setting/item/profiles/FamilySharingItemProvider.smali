.class public final Lcom/amazon/kcp/profiles/setting/item/profiles/FamilySharingItemProvider;
.super Ljava/lang/Object;
.source "FamilySharingItemProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemsProvider;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/amazon/kcp/profiles/setting/item/profiles/FamilySharingItemProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(FamilyShari\u2026ItemProvider::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/profiles/setting/item/profiles/FamilySharingItemProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kcp/profiles/setting/item/profiles/FamilySharingItemProvider;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/kcp/profiles/setting/item/profiles/FamilySharingItemProvider;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private final createFamilySharingItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 13

    .line 35
    new-instance v12, Lcom/amazon/kindle/setting/item/template/PrimaryItem;

    .line 38
    sget v0, Lcom/amazon/kcp/profiles/R$string;->more_item_family_sharing:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string p1, "context.getString(R.stri\u2026more_item_family_sharing)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v3, Lcom/amazon/kindle/setting/item/Category;->OTHER:Lcom/amazon/kindle/setting/item/Category;

    .line 41
    sget v4, Lcom/amazon/kcp/profiles/R$attr;->lib_menu_share_icon:I

    .line 42
    new-instance v7, Lcom/amazon/kcp/profiles/setting/item/profiles/FamilySharingItemProvider$createFamilySharingItem$1;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/profiles/setting/item/profiles/FamilySharingItemProvider$createFamilySharingItem$1;-><init>(Lcom/amazon/kcp/profiles/setting/item/profiles/FamilySharingItemProvider;)V

    const-string v1, "setting_item_family_sharing"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1b0

    const/4 v11, 0x0

    move-object v0, v12

    .line 35
    invoke-direct/range {v0 .. v11}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;IZLjava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method


# virtual methods
.method public getItems()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/setting/item/Item;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-static {}, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;->isContentSharingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Utils.getFactory().context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/amazon/kcp/profiles/setting/item/profiles/FamilySharingItemProvider;->createFamilySharingItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
