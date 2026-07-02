.class public interface abstract Lcom/amazon/kindle/config/IModuleInitializer;
.super Ljava/lang/Object;
.source "IModuleInitializer.java"


# virtual methods
.method public abstract initializeKRXPlugins(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initializeModules(Landroid/content/Context;)V
.end method
