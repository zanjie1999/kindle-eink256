.class public interface abstract Lcom/amazon/kindle/socialsharing/service/ISocialSharingServiceClient;
.super Ljava/lang/Object;
.source "ISocialSharingServiceClient.java"


# virtual methods
.method public abstract createBookShare(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract createProgressShare(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract createQuoteShare(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
