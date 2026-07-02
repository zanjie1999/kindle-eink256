.class public final enum Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;
.super Ljava/lang/Enum;
.source "CantileverEndpointBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CantileverWorkflowParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

.field public static final enum ASIN:Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

.field public static final enum BREADCRUMB:Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

.field public static final enum IS_CHAT_REDIRECT_PARAM:Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

.field public static final enum ORDER_ID:Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

    new-instance v1, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

    const/4 v2, 0x0

    const-string v3, "IS_CHAT_REDIRECT_PARAM"

    const-string v4, "isChatRedirect"

    .line 72
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;->IS_CHAT_REDIRECT_PARAM:Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

    const/4 v2, 0x1

    const-string v3, "BREADCRUMB"

    const-string v4, "breadcrumb"

    .line 73
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;->BREADCRUMB:Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

    const/4 v2, 0x2

    const-string v3, "ASIN"

    const-string v4, "asin"

    .line 74
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;->ASIN:Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

    const/4 v2, 0x3

    const-string v3, "ORDER_ID"

    const-string/jumbo v4, "orderId"

    .line 75
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;->ORDER_ID:Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;->$VALUES:[Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;
    .locals 1

    const-class v0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;->$VALUES:[Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

    invoke-virtual {v0}, [Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;->key:Ljava/lang/String;

    return-object v0
.end method
