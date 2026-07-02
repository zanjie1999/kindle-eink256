.class Lcom/amazon/kcp/info/GetCountryRequest$1;
.super Ljava/lang/Object;
.source "GetCountryRequest.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/info/GetCountryRequest;-><init>(Lcom/amazon/kindle/callback/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/info/GetCountryRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/info/GetCountryRequest;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/info/GetCountryRequest$1;->this$0:Lcom/amazon/kcp/info/GetCountryRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleJSONObject(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/info/GetCountryRequest$1;->this$0:Lcom/amazon/kcp/info/GetCountryRequest;

    const/4 v1, 0x0

    const-string v2, "country"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kcp/info/GetCountryRequest;->access$002(Lcom/amazon/kcp/info/GetCountryRequest;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
