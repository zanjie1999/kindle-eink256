.class public interface abstract Lcom/amazon/kcp/application/IKindleApplicationController;
.super Ljava/lang/Object;
.source "IKindleApplicationController.java"

# interfaces
.implements Lcom/amazon/kcp/application/IUIMessaging;


# virtual methods
.method public abstract exit()V
.end method

.method public abstract getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getImageFactory()Lcom/amazon/kindle/util/drawing/ImageFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getInternalVersionNumber()J
.end method

.method public abstract getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract library()Lcom/amazon/kcp/library/ILibraryController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract openUrl(Ljava/lang/String;)V
.end method

.method public abstract reader()Lcom/amazon/kcp/reader/IReaderController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract wasAppUpgradedThisOpening()Z
.end method
