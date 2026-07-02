.class public final Lcom/audible/hushpuppy/controller/ReadAlongController_MembersInjector;
.super Ljava/lang/Object;
.source "ReadAlongController_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/controller/ReadAlongController;",
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

.field private final hushpuppyPerformanceUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;",
            ">;"
        }
    .end annotation
.end field

.field private final kindleReaderSDKProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final seekControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/SeekController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectAudibleDebugHelper(Lcom/audible/hushpuppy/controller/ReadAlongController;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    return-void
.end method

.method public static injectHushpuppyPerformanceUtils(Lcom/audible/hushpuppy/controller/ReadAlongController;Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyPerformanceUtils:Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;

    return-void
.end method

.method public static injectKindleReaderSDK(Lcom/audible/hushpuppy/controller/ReadAlongController;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method public static injectSeekController(Lcom/audible/hushpuppy/controller/ReadAlongController;Lcom/audible/hushpuppy/controller/SeekController;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->seekController:Lcom/audible/hushpuppy/controller/SeekController;

    return-void
.end method
