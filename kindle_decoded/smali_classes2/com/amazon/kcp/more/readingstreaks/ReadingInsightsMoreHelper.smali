.class public final Lcom/amazon/kcp/more/readingstreaks/ReadingInsightsMoreHelper;
.super Ljava/lang/Object;
.source "ReadingInsightsMoreHelper.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemsProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic isReadingInsightsMoreItemEnabled$default(Lcom/amazon/kcp/more/readingstreaks/ReadingInsightsMoreHelper;Lcom/amazon/kcp/application/IAuthenticationManager;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 60
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string p2, "Utils.getFactory()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    const-string p2, "Utils.getFactory().authenticationManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/more/readingstreaks/ReadingInsightsMoreHelper;->isReadingInsightsMoreItemEnabled(Lcom/amazon/kcp/application/IAuthenticationManager;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final createReadingInsightsItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;

    .line 40
    sget v1, Lcom/amazon/kcp/more/R$string;->more_item_reading_streaks:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p1, "context.getString(R.stri\u2026ore_item_reading_streaks)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v4, Lcom/amazon/kindle/setting/item/Category;->OTHER:Lcom/amazon/kindle/setting/item/Category;

    .line 42
    sget v5, Lcom/amazon/kcp/more/R$attr;->nav_reading_streaks_icon:I

    .line 43
    new-instance v8, Lcom/amazon/kcp/more/readingstreaks/ReadingInsightsMoreHelper$createReadingInsightsItem$1;

    invoke-direct {v8}, Lcom/amazon/kcp/more/readingstreaks/ReadingInsightsMoreHelper$createReadingInsightsItem$1;-><init>()V

    const-string v2, "setting_item_reading_insights"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1b0

    const/4 v12, 0x0

    move-object v1, v0

    .line 38
    invoke-direct/range {v1 .. v12}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;IZLjava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

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

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 25
    invoke-static {p0, v0, v1, v0}, Lcom/amazon/kcp/more/readingstreaks/ReadingInsightsMoreHelper;->isReadingInsightsMoreItemEnabled$default(Lcom/amazon/kcp/more/readingstreaks/ReadingInsightsMoreHelper;Lcom/amazon/kcp/application/IAuthenticationManager;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Utils.getFactory().context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/more/readingstreaks/ReadingInsightsMoreHelper;->createReadingInsightsItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final isReadingInsightsMoreItemEnabled(Lcom/amazon/kcp/application/IAuthenticationManager;)Z
    .locals 1

    const-string v0, "authManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-interface {p1}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFABuild()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
