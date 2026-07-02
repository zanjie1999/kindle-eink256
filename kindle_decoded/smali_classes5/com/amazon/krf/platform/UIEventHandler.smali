.class public interface abstract Lcom/amazon/krf/platform/UIEventHandler;
.super Ljava/lang/Object;
.source "UIEventHandler.java"


# virtual methods
.method public abstract UIEndTransaction(Lcom/amazon/krf/platform/UIHandle;)V
.end method

.method public abstract UIEventHandled(Lcom/amazon/krf/platform/UIData;)V
.end method

.method public abstract UISendEvent(Lcom/amazon/krf/platform/UIHandle;Lcom/amazon/krf/platform/UIData;)Z
.end method

.method public abstract UIStartTransaction(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIHandle;
.end method
