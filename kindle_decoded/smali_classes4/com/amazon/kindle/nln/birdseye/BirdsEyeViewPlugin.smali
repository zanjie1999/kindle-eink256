.class public Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin;
.super Ljava/lang/Object;
.source "BirdsEyeViewPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    name = "BirdsEyeViewPlugin"
    target = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Target;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Target;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;,
        Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;,
        Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin;->TAG:Ljava/lang/String;

    return-object v0
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
    .locals 3

    .line 77
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerLocationSeekerDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 79
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->NLN_NEGATIVE_JIT:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    invoke-static {v0}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->useLegacyTutorial(Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$1;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerTutorialProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 83
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onClearTutorialHistory(Lcom/amazon/kindle/krx/events/KRXClearTutorialHistoryEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 378
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    const-string v0, "nln_negative_tutorial"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setLastTutorialVersionShown(Ljava/lang/String;I)V

    return-void
.end method
