.class public interface abstract Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;
.super Ljava/lang/Object;
.source "IAppExpanResourceSet.java"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getResourceByName(Ljava/lang/String;)Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;
.end method

.method public abstract getResourceByRefName(Ljava/lang/String;)Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;
.end method

.method public abstract getResourceNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersion()I
.end method
