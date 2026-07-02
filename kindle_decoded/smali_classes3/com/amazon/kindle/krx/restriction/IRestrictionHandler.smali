.class public interface abstract Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;
.super Ljava/lang/Object;
.source "IRestrictionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;
    }
.end annotation


# static fields
.field public static final STORE_APP_NAME:Ljava/lang/String; = "com.amazon.windowshop"


# virtual methods
.method public abstract isAppDisabled(Ljava/lang/String;)Z
.end method

.method public abstract isBookPurchaseBlocked()Z
.end method

.method public abstract isBookPurchaseProtected()Z
.end method

.method public abstract isBooksBlocked()Z
.end method

.method public abstract isDocsBlocked()Z
.end method

.method public abstract isNewsstandBlocked()Z
.end method

.method public abstract isNewsstandPurchaseBlocked()Z
.end method

.method public abstract isSocialNetworkBlocked()Z
.end method

.method public abstract showBlockedDialog(Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;)V
.end method
