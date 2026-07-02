.class public final Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$Companion;
.super Ljava/lang/Object;
.source "BaseCardBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method protected final themedImagePaths(Lcom/amazon/kindle/home/model/ThemedImageZone;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/home/model/ThemedImageZone;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string/jumbo v0, "zone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 103
    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getLightImageUrl()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getLightImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 104
    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getDarkImageUrl()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getDarkImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 102
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected final themedImagePaths(Lcom/amazon/kindle/home/model/WaysToReadBlock;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/home/model/WaysToReadBlock;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string/jumbo v0, "zone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 107
    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/WaysToReadBlock;->getLightImageUrl()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/WaysToReadBlock;->getLightImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 108
    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/WaysToReadBlock;->getDarkImageUrl()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/WaysToReadBlock;->getDarkImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 106
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
