.class public final Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder;
.super Ljava/lang/Object;
.source "CantileverEndpointBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;,
        Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCantileverEndpointBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CantileverEndpointBuilder.kt\ncom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,77:1\n1690#2,3:78\n1245#3,2:81\n*E\n*S KotlinDebug\n*F\n+ 1 CantileverEndpointBuilder.kt\ncom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder\n*L\n17#1,3:78\n39#1,2:81\n*E\n"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder;

    invoke-direct {v0}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCantileverRegion(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;
    .locals 5

    const-string/jumbo v0, "marketplace"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;->values()[Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;

    move-result-object v0

    .line 81
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 39
    invoke-virtual {v3}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;->getMarketplaces()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public static final getCantileverWorkFlow(Ljava/lang/String;)Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder;->getCantileverWorkFlow$default(Ljava/lang/String;ZILjava/lang/Object;)Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;

    move-result-object p0

    return-object p0
.end method

.method public static final getCantileverWorkFlow(Ljava/lang/String;Z)Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Return;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Return;

    invoke-virtual {v0}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Return;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Return;

    goto/16 :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$BetaFeedback;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$BetaFeedback;

    invoke-virtual {v0}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$BetaFeedback;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$BetaFeedback;

    goto/16 :goto_0

    .line 48
    :cond_1
    sget-object p1, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Tts;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Tts;

    invoke-virtual {p1}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Tts;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Tts;

    goto :goto_0

    .line 49
    :cond_2
    sget-object p1, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleMain;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleMain;

    invoke-virtual {p1}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleMain;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleMain;

    goto :goto_0

    .line 50
    :cond_3
    sget-object p1, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleHelpV2;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleHelpV2;

    invoke-virtual {p1}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleHelpV2;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleHelpV2;

    goto :goto_0

    .line 51
    :cond_4
    sget-object p1, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsHelp;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsHelp;

    invoke-virtual {p1}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsHelp;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsHelp;

    goto :goto_0

    .line 52
    :cond_5
    sget-object p1, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsFeedback;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsFeedback;

    invoke-virtual {p1}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsFeedback;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsFeedback;

    goto :goto_0

    .line 53
    :cond_6
    sget-object p1, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayPlain;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayPlain;

    invoke-virtual {p1}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayPlain;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayPlain;

    goto :goto_0

    .line 54
    :cond_7
    sget-object p1, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayLink;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayLink;

    invoke-virtual {p1}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayLink;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayLink;

    goto :goto_0

    .line 55
    :cond_8
    sget-object p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleMain;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleMain;

    :goto_0
    return-object p0
.end method

.method public static synthetic getCantileverWorkFlow$default(Ljava/lang/String;ZILjava/lang/Object;)Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 44
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result p1

    :cond_0
    invoke-static {p0, p1}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder;->getCantileverWorkFlow(Ljava/lang/String;Z)Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;

    move-result-object p0

    return-object p0
.end method

.method public static final getProdEndpointBase(Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "marketplace"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder;->getCantileverRegion(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;->getBaseUrl()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;->US:Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;

    invoke-virtual {p0}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;->getBaseUrl()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final getProdEndpointForWorkFlow(Lcom/amazon/kcp/application/Marketplace;Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/Marketplace;",
            "Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, "marketplace"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workflow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getRequiredParams()Ljava/util/Set;

    move-result-object v0

    .line 78
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

    .line 17
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    .line 19
    invoke-static {p0}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder;->getCantileverRegion(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;

    move-result-object p0

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;->getBaseUrl()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;->US:Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;

    invoke-virtual {p0}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;->getBaseUrl()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$getProdEndpointForWorkFlow$paramString$1;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$getProdEndpointForWorkFlow$paramString$1;

    const/16 v8, 0x1c

    const/4 v9, 0x0

    const-string v3, "?"

    const-string v2, "&"

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-virtual {p1}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getWorkflowUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "stringBuilder.append(wor\u2026d(paramString).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 17
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
