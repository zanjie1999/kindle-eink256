.class Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest$1;
.super Lcom/amazon/kindle/webservices/BaseResponseHandler;
.source "ReturnAsinRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest$1;->this$0:Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;

    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputStream(Ljava/io/InputStream;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest$1;->this$0:Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;

    invoke-static {p1}, Lcom/amazon/kindle/store/glide/GlideUtils;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->access$002(Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->access$100()Ljava/lang/String;

    iget-object p1, p0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest$1;->this$0:Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;

    invoke-static {p1}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;->access$000(Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;)Ljava/lang/String;

    return-void
.end method
