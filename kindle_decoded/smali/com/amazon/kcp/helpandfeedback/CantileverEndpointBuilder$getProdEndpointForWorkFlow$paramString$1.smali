.class final Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$getProdEndpointForWorkFlow$paramString$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CantileverEndpointBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder;->getProdEndpointForWorkFlow(Lcom/amazon/kcp/application/Marketplace;Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;Ljava/util/Map;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/Map$Entry<",
        "+",
        "Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$getProdEndpointForWorkFlow$paramString$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$getProdEndpointForWorkFlow$paramString$1;

    invoke-direct {v0}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$getProdEndpointForWorkFlow$paramString$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$getProdEndpointForWorkFlow$paramString$1;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$getProdEndpointForWorkFlow$paramString$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+",
            "Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverWorkflowParams;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$getProdEndpointForWorkFlow$paramString$1;->invoke(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
