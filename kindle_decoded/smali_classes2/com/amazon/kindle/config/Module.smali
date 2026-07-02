.class public interface abstract Lcom/amazon/kindle/config/Module;
.super Ljava/lang/Object;
.source "Module.java"


# virtual methods
.method public abstract getDependentModules()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract initialize(Landroid/content/Context;)V
.end method
