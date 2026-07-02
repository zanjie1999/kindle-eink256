.class Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest$1;
.super Lcom/amazon/kindle/webservices/BaseResponseHandler;
.source "GetOffersForAsinRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest$1;->this$0:Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;

    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputStream(Ljava/io/InputStream;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest$1;->this$0:Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;

    invoke-static {p1}, Lcom/amazon/kindle/store/glide/GlideUtils;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->access$002(Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->access$100()Ljava/lang/String;

    iget-object p1, p0, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest$1;->this$0:Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;

    invoke-static {p1}, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;->access$000(Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;)Ljava/lang/String;

    return-void
.end method
