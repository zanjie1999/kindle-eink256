.class Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest$1;
.super Lcom/amazon/kindle/webservices/BaseResponseHandler;
.source "AcquireOfferFromAsinRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest$1;->this$0:Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;

    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputStream(Ljava/io/InputStream;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest$1;->this$0:Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;

    invoke-static {p1}, Lcom/amazon/kindle/store/glide/GlideUtils;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->access$002(Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->access$100()Ljava/lang/String;

    iget-object p1, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest$1;->this$0:Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;

    invoke-static {p1}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;->access$000(Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;)Ljava/lang/String;

    return-void
.end method
