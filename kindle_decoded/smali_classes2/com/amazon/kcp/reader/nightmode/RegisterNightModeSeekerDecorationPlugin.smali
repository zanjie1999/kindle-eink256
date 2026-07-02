.class public Lcom/amazon/kcp/reader/nightmode/RegisterNightModeSeekerDecorationPlugin;
.super Ljava/lang/Object;
.source "RegisterNightModeSeekerDecorationPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    name = "RegisterNightModeSeekerDecorationPlugin"
    target = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Target;->StandAlone:Lcom/amazon/kindle/krx/plugin/Plugin$Target;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
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
    .locals 0

    .line 21
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    new-instance p1, Lcom/amazon/kcp/reader/nightmode/NightModeController;

    invoke-direct {p1}, Lcom/amazon/kcp/reader/nightmode/NightModeController;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/nightmode/NightModeController;->registerSeekerDecorationProvider()V

    :cond_0
    return-void
.end method
