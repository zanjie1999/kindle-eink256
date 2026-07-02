.class Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest$1;
.super Ljava/lang/Object;
.source "CustomerBenefitsWebRequest.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/application/IApplicationManager;Lcom/amazon/kindle/callback/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest$1;->this$0:Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleJSONObject(Lorg/json/JSONObject;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest$1;->this$0:Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/customerbenefits/CustomerBenefitsWebRequest;->handleResponse(Lorg/json/JSONObject;)V

    return-void
.end method
