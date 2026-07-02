.class public interface abstract Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;
.super Ljava/lang/Object;
.source "IKRXAppExpanClient.java"


# virtual methods
.method public abstract getResourceSet(Ljava/lang/String;)Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse;
.end method

.method public abstract getResourceSet(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse;
.end method

.method public abstract isResourceSetLocal(Ljava/lang/String;Ljava/lang/Integer;)Z
.end method

.method public abstract releaseResourceSet(Ljava/lang/String;)V
.end method

.method public abstract retrieveCurrentUsedVersion(Ljava/lang/Class;Ljava/lang/String;)I
.end method

.method public abstract saveCurrentUsedVersion(Ljava/lang/Class;Ljava/lang/String;I)V
.end method
