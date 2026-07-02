.class public interface abstract Lcom/amazon/kcp/info/brochure/IBrochureAssetDownloader;
.super Ljava/lang/Object;
.source "IBrochureAssetDownloader.java"


# virtual methods
.method public abstract downloadAssets(Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestManager;Ljava/io/Reader;Lcom/amazon/kcp/info/brochure/IBrochureAssetDownloadListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kcp/info/brochure/BrochureAssetException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
