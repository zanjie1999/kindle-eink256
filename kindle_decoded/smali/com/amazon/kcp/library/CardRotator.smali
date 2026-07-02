.class public final Lcom/amazon/kcp/library/CardRotator;
.super Ljava/lang/Object;
.source "CardRotator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardRotator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardRotator.kt\ncom/amazon/kcp/library/CardRotator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,180:1\n1828#2,3:181\n318#2,7:184\n734#2:191\n825#2,2:192\n1022#2:194\n734#2:195\n825#2,2:196\n*E\n*S KotlinDebug\n*F\n+ 1 CardRotator.kt\ncom/amazon/kcp/library/CardRotator\n*L\n47#1,3:181\n109#1,7:184\n129#1:191\n129#1,2:192\n130#1:194\n148#1:195\n148#1,2:196\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/CardRotator;

.field private static final MAX_CARDS_PER_PAGE:I = 0x9

.field private static final TAG:Ljava/lang/String;

.field private static final debugCards:Lcom/amazon/kcp/home/debug/SidekickDebugCards;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/amazon/kcp/library/CardRotator;

    invoke-direct {v0}, Lcom/amazon/kcp/library/CardRotator;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/CardRotator;->INSTANCE:Lcom/amazon/kcp/library/CardRotator;

    .line 14
    const-class v0, Lcom/amazon/kcp/library/CardRotator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/CardRotator;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/amazon/kcp/home/debug/SidekickDebugCards;

    invoke-direct {v0}, Lcom/amazon/kcp/home/debug/SidekickDebugCards;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/CardRotator;->debugCards:Lcom/amazon/kcp/home/debug/SidekickDebugCards;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final indexOfRandomWeightedModule(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 105
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    goto :goto_2

    .line 108
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 185
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 186
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-le v4, v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v1
.end method

.method public static final pageOfCards(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/CardData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/CardData;",
            ">;"
        }
    .end annotation

    const-string v0, "listOfCards"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickSettings;->Companion:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Utils.getFactory().context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/home/debug/SidekickSettings;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->isPageSizeOverridden()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->isDisplayAllCardsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 34
    sget-object v0, Lcom/amazon/kcp/library/CardRotator;->INSTANCE:Lcom/amazon/kcp/library/CardRotator;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/library/CardRotator;->pageOfCards(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    .line 36
    :cond_2
    sget-object v0, Lcom/amazon/kcp/library/CardRotator;->INSTANCE:Lcom/amazon/kcp/library/CardRotator;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/library/CardRotator;->pageOfCards(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    .line 38
    :goto_2
    sget-object v0, Lcom/amazon/kcp/library/CardRotator;->debugCards:Lcom/amazon/kcp/home/debug/SidekickDebugCards;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/home/debug/SidekickDebugCards;->addToList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final pageOfCards(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/CardData;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/CardData;",
            ">;"
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickSettings;->Companion:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "Utils.getFactory().context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/home/debug/SidekickSettings;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->isCardRotationDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 182
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_0

    check-cast v3, Lcom/amazon/kindle/home/model/CardData;

    .line 47
    invoke-virtual {v3, v2}, Lcom/amazon/kindle/home/model/CardData;->setIndex(I)V

    move v2, v4

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    const/4 p1, 0x0

    throw p1

    .line 48
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-interface {p1, v1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 51
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    sget-object v4, Lcom/amazon/kcp/home/debug/SidekickSettings;->Companion:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/home/debug/SidekickSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/home/debug/SidekickSettings;->isPinningEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/CardRotator;->pageOfPinnedCards$LibraryModule_release(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 54
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_3

    .line 55
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v4, v1}, Lcom/amazon/kindle/home/model/CardData;->setIndex(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 57
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/amazon/kcp/library/CardRotator;->pageOfWeightedCards(Ljava/util/List;II)Ljava/util/List;

    move-result-object p1

    .line 61
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Created page of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " cards"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method

.method private final pageOfWeightedCards(Ljava/util/List;II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/CardData;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/CardData;",
            ">;"
        }
    .end annotation

    .line 147
    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickSettings;->Companion:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Utils.getFactory().context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/home/debug/SidekickSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->isPinningEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/kindle/home/model/CardData;

    .line 148
    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getPinned()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 151
    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selecting page of cards from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cards"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_5

    .line 155
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exhausted cards list before reaching max card limit of "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    .line 161
    :cond_3
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/CardRotator;->listOfCumulativeWeights$LibraryModule_release(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 164
    invoke-direct {p0, v2}, Lcom/amazon/kcp/library/CardRotator;->indexOfRandomWeightedModule(Ljava/util/List;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 166
    sget-object v2, Lcom/amazon/kcp/library/CardRotator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received -1 for module index, continuing without selecting module "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 169
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/home/model/CardData;

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/home/model/CardData;->setIndex(I)V

    .line 173
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    return-object v0
.end method


# virtual methods
.method public final listOfCumulativeWeights$LibraryModule_release(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/CardData;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "cards"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/home/model/CardData;

    if-nez v1, :cond_0

    .line 79
    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getWeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    :cond_0
    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getWeight()I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final pageOfPinnedCards$LibraryModule_release(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/CardData;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/CardData;",
            ">;"
        }
    .end annotation

    const-string v0, "listOfCards"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/kindle/home/model/CardData;

    .line 129
    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getPinned()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_1
    new-instance p1, Lcom/amazon/kcp/library/CardRotator$pageOfPinnedCards$$inlined$sortedByDescending$1;

    invoke-direct {p1}, Lcom/amazon/kcp/library/CardRotator$pageOfPinnedCards$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 131
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
