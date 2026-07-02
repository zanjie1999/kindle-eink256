.class Lcom/amazon/kcp/font/FontDownloadRequest$4;
.super Ljava/lang/Object;
.source "FontDownloadRequest.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/font/FontDownloadRequest;->getFontPathResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/font/FontDownloadRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/font/FontDownloadRequest;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/amazon/kcp/font/FontDownloadRequest$4;->this$0:Lcom/amazon/kcp/font/FontDownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleJSONObject(Lorg/json/JSONObject;)V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest$4;->this$0:Lcom/amazon/kcp/font/FontDownloadRequest;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "fontpath"

    .line 322
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/amazon/kcp/font/FontDownloadRequest;->fontDownloadURL:Ljava/lang/String;

    return-void
.end method
