.class public interface abstract Lcom/amazon/kindle/krx/reader/IBookBackStack;
.super Ljava/lang/Object;
.source "IBookBackStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract clearBackStack()V
.end method

.method public abstract getPostBackAction()Lcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;
.end method

.method public abstract pushPostBackAction(Lcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;)V
.end method
