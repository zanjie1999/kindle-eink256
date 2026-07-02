.class public final Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsTimeoutFragment_MembersInjector;
.super Ljava/lang/Object;
.source "StartActionsTimeoutFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsTimeoutFragment;",
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


# direct methods
.method public static injectKindleReaderSdk(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsTimeoutFragment;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsTimeoutFragment;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method
