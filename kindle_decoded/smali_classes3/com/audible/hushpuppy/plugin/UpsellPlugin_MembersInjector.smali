.class public final Lcom/audible/hushpuppy/plugin/UpsellPlugin_MembersInjector;
.super Ljava/lang/Object;
.source "UpsellPlugin_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/plugin/UpsellPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field private final audibleDebugHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final startActionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final userControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/UserController;",
            ">;"
        }
    .end annotation
.end field

.field private final viewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ViewController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectAudibleDebugHelper(Lcom/audible/hushpuppy/plugin/UpsellPlugin;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/UpsellPlugin;->audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    return-void
.end method

.method public static injectStartActionsProvider(Lcom/audible/hushpuppy/plugin/UpsellPlugin;Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/UpsellPlugin;->startActionsProvider:Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;

    return-void
.end method

.method public static injectUserController(Lcom/audible/hushpuppy/plugin/UpsellPlugin;Lcom/audible/hushpuppy/controller/UserController;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/UpsellPlugin;->userController:Lcom/audible/hushpuppy/controller/UserController;

    return-void
.end method

.method public static injectViewController(Lcom/audible/hushpuppy/plugin/UpsellPlugin;Lcom/audible/hushpuppy/controller/ViewController;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/UpsellPlugin;->viewController:Lcom/audible/hushpuppy/controller/ViewController;

    return-void
.end method
