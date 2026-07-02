.class public Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugPlugin;
.super Ljava/lang/Object;
.source "AnnotationsManagerDebugPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->debug:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    name = "AnnotationsManagerDebugPlugin"
    target = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Target;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Target;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 26
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugPlugin$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugPlugin$1;-><init>(Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method
