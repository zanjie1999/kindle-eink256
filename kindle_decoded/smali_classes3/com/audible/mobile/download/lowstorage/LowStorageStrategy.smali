.class public interface abstract Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;
.super Ljava/lang/Object;
.source "LowStorageStrategy.java"


# virtual methods
.method public abstract checkLowStorageLevel(Lcom/audible/mobile/download/ContentType;J)Lcom/audible/mobile/download/lowstorage/LowStorageIdentifier;
.end method

.method public abstract getLowStorageAction(Lcom/audible/mobile/download/ContentType;Lcom/audible/mobile/download/lowstorage/LowStorageIdentifier;)Lcom/audible/mobile/download/lowstorage/LowStorageAction;
.end method

.method public abstract notifyLowStorage(Lcom/audible/mobile/download/ContentType;Lcom/audible/mobile/download/lowstorage/LowStorageIdentifier;)V
.end method
