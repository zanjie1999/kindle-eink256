.class public abstract Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;
.super Ljava/lang/Object;
.source "CantileverWorkFlow.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Main;,
        Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleMain;,
        Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleHelpV2;,
        Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsHelp;,
        Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$ComicsFeedback;,
        Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Return;,
        Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$BetaFeedback;,
        Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Tts;,
        Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayPlain;,
        Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$VellaGPlayLink;
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final optionalParams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;",
            ">;"
        }
    .end annotation
.end field

.field private final requiredParams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;",
            ">;"
        }
    .end annotation
.end field

.field private final workflowUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->workflowUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->requiredParams:Ljava/util/Set;

    iput-object p4, p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->optionalParams:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 10
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 11
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p4

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public getCantileverEndpoint(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getMarketplace()Lcom/amazon/kcp/application/Marketplace;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getCantileverParams(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    invoke-static {p4, p0, p1}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder;->getProdEndpointForWorkFlow(Lcom/amazon/kcp/application/Marketplace;Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCantileverParams(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected final getMarketplace()Lcom/amazon/kcp/application/Marketplace;
    .locals 2

    .line 75
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    const-string v1, "Marketplace.getInstance(pfm, Marketplace.US)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequiredParams()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->requiredParams:Ljava/util/Set;

    return-object v0
.end method

.method public getReturnHeaderFlag()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getWorkflowUrl()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->workflowUrl:Ljava/lang/String;

    return-object v0
.end method
