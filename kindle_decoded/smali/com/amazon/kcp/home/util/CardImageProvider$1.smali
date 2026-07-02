.class Lcom/amazon/kcp/home/util/CardImageProvider$1;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "CardImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/util/CardImageProvider;->fetchImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/util/CardImageProvider;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/util/CardImageProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/kcp/home/util/CardImageProvider$1;->this$0:Lcom/amazon/kcp/home/util/CardImageProvider;

    iput-object p3, p0, Lcom/amazon/kcp/home/util/CardImageProvider$1;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/home/util/CardImageProvider$1;->val$filename:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 3

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    invoke-static {}, Lcom/amazon/kcp/home/util/CardImageProvider;->access$200()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while fetching image for key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/util/CardImageProvider$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kcp/home/util/CardImageProvider$1;->val$filename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/home/util/CardImageProvider$1;->this$0:Lcom/amazon/kcp/home/util/CardImageProvider;

    invoke-static {v1}, Lcom/amazon/kcp/home/util/CardImageProvider;->access$300(Lcom/amazon/kcp/home/util/CardImageProvider;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/home/util/CardImageProvider$1;->val$key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    iget-object v1, p0, Lcom/amazon/kcp/home/util/CardImageProvider$1;->this$0:Lcom/amazon/kcp/home/util/CardImageProvider;

    invoke-static {v1}, Lcom/amazon/kcp/home/util/CardImageProvider;->access$300(Lcom/amazon/kcp/home/util/CardImageProvider;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/home/util/CardImageProvider$1;->val$key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/home/util/ImageDownloadCallback;

    if-eqz v1, :cond_2

    .line 89
    invoke-interface {v1, v0}, Lcom/amazon/kcp/home/util/ImageDownloadCallback;->onImageDownloadRequestComplete(Z)V

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/home/util/CardImageProvider$1;->this$0:Lcom/amazon/kcp/home/util/CardImageProvider;

    invoke-static {v1}, Lcom/amazon/kcp/home/util/CardImageProvider;->access$300(Lcom/amazon/kcp/home/util/CardImageProvider;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/home/util/CardImageProvider$1;->val$key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method
