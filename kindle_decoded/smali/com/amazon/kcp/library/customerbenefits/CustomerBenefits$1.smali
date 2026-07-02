.class Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits$1;
.super Ljava/lang/Object;
.source "CustomerBenefits.java"

# interfaces
.implements Lcom/amazon/kindle/callback/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->requestCustomerBenefits()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/callback/ICallback<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits$1;->this$0:Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/amazon/kindle/callback/OperationResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/OperationResult<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits$1;->this$0:Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefits;->handleCustomerBenefitsResponse(Lcom/amazon/kindle/callback/OperationResult;)V

    return-void
.end method
