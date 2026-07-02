.class Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest$1;
.super Ljava/lang/Object;
.source "GetCustomerEmailWebRequest.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;-><init>(Lcom/amazon/kindle/callback/ICallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest$1;->this$0:Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleJSONObject(Lorg/json/JSONObject;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest$1;->this$0:Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;

    invoke-static {v0, p1}, Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;->access$000(Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;Lorg/json/JSONObject;)V

    return-void
.end method
