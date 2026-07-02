.class Lcom/amazon/kcp/font/FontDownloadRequest$1;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "FontDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/font/FontDownloadRequest;->performFontRetrieval()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/font/FontDownloadRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/font/FontDownloadRequest;Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/amazon/kcp/font/FontDownloadRequest$1;->this$0:Lcom/amazon/kcp/font/FontDownloadRequest;

    invoke-direct {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest$1;->this$0:Lcom/amazon/kcp/font/FontDownloadRequest;

    invoke-virtual {v0}, Lcom/amazon/kcp/font/FontDownloadRequest;->onPathRetrievalFinished()V

    const/4 v0, 0x1

    return v0
.end method
