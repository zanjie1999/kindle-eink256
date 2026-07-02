.class public final Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment_MembersInjector;
.super Ljava/lang/Object;
.source "StartActionsCancelFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final kindleReaderSdkProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
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
.method public static injectKindleReaderSdk(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method public static injectUpsellController(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;Lcom/audible/hushpuppy/controller/StartActionsUpsellController;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;->upsellController:Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    return-void
.end method
