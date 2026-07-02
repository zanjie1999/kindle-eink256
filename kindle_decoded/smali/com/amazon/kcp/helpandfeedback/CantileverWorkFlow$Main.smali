.class public Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Main;
.super Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;
.source "CantileverWorkFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Main"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workflowId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "workflow/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v5

    sget-object p2, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;->IS_CHAT_REDIRECT_PARAM:Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

    invoke-static {p2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "MAIN"

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Main;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCantileverEndpoint(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 25
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p4

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getMarketplace()Lcom/amazon/kcp/application/Marketplace;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Main;->getCantileverParams(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p4, p0, p1}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder;->getProdEndpointForWorkFlow(Lcom/amazon/kcp/application/Marketplace;Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCantileverParams(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap<",
            "Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 18
    sget-object p2, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;->IS_CHAT_REDIRECT_PARAM:Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p3

    const-string v0, "java.lang.Boolean.toString(isChatRedirect)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public bridge synthetic getCantileverParams(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Main;->getCantileverParams(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method
