.class public interface abstract Lcom/amazon/kcp/store/IWebStoreController;
.super Ljava/lang/Object;
.source "IWebStoreController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;
    }
.end annotation


# virtual methods
.method public abstract clearStoreCredentials()V
.end method

.method public abstract getStoreCredentialStatus()Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;
.end method

.method public abstract populateStoreCredentials(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)V
.end method

.method public abstract setOpenExternalUrlsInternally(Z)V
.end method

.method public abstract shouldOverrideUrlLoading(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract showDetailPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract showStore(Landroid/os/Bundle;)V
.end method

.method public abstract showStorefront(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract updateStoreCookies()V
.end method
