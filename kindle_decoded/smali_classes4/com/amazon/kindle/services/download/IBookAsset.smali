.class public interface abstract Lcom/amazon/kindle/services/download/IBookAsset;
.super Ljava/lang/Object;
.source "IBookAsset.java"


# virtual methods
.method public abstract getApnxUrl()Ljava/lang/String;
.end method

.method public abstract getAssetId()Ljava/lang/String;
.end method

.method public abstract getAssetType()Lcom/amazon/kindle/services/download/AssetType;
.end method

.method public abstract getAuthentication()Ljava/lang/String;
.end method

.method public abstract getAuthenticationType()Ljava/lang/String;
.end method

.method public abstract getBookId()Lcom/amazon/kindle/model/content/IBookID;
.end method

.method public abstract getDeliveryType()Lcom/amazon/kindle/services/download/AssetDeliveryType;
.end method

.method public abstract getFilename()Ljava/lang/String;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getOptimalUri()Ljava/net/URI;
.end method

.method public abstract getOriginalUriString()Ljava/lang/String;
.end method

.method public abstract getPriority()Lcom/amazon/kindle/services/download/AssetPriority;
.end method

.method public abstract getResourceContext()Ljava/lang/String;
.end method

.method public abstract getSize()J
.end method

.method public abstract getState()Lcom/amazon/kindle/services/download/AssetState;
.end method

.method public abstract getUri()Ljava/net/URI;
.end method

.method public abstract hasAnnotationSidecar()Z
.end method

.method public abstract hasApnxSidecar()Z
.end method

.method public abstract setApnxUrl(Ljava/lang/String;)V
.end method

.method public abstract setAssetType(Lcom/amazon/kindle/services/download/AssetType;)V
.end method

.method public abstract setDeliveryType(Lcom/amazon/kindle/services/download/AssetDeliveryType;)V
.end method

.method public abstract setFilename(Ljava/lang/String;)V
.end method

.method public abstract setHasAnnotationSidecar(Z)V
.end method

.method public abstract setHasApnxSidecar(Z)V
.end method

.method public abstract setMimeType(Ljava/lang/String;)V
.end method

.method public abstract setSize(J)V
.end method

.method public abstract setState(Lcom/amazon/kindle/services/download/AssetState;)V
.end method

.method public abstract shouldUseOptimalUri()Z
.end method
