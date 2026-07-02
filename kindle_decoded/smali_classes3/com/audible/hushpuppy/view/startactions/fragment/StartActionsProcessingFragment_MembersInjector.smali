.class public final Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment_MembersInjector;
.super Ljava/lang/Object;
.source "StartActionsProcessingFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;",
        ">;"
    }
.end annotation


# instance fields
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
.method public static injectUpsellController(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;Lcom/audible/hushpuppy/controller/StartActionsUpsellController;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;->upsellController:Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    return-void
.end method
