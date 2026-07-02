.class public final Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment_MembersInjector;
.super Ljava/lang/Object;
.source "StartActionsReadAndListenFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final locationSeekerControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/LocationSeekerController;",
            ">;"
        }
    .end annotation
.end field

.field private final upsellControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/StartActionsUpsellController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectLocationSeekerController(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;Lcom/audible/hushpuppy/controller/LocationSeekerController;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    return-void
.end method

.method public static injectUpsellController(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;Lcom/audible/hushpuppy/controller/StartActionsUpsellController;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;->upsellController:Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    return-void
.end method
