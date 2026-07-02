.class public final Lcom/audible/hushpuppy/view/startactions/UpsellWebView_MembersInjector;
.super Ljava/lang/Object;
.source "UpsellWebView_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/view/startactions/UpsellWebView;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

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
.method public static injectEventBus(Lcom/audible/hushpuppy/view/startactions/UpsellWebView;Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method public static injectKindleReaderSdk(Lcom/audible/hushpuppy/view/startactions/UpsellWebView;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/UpsellWebView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method
