.class public final Lcom/audible/hushpuppy/view/player/view/CoverArtManager_MembersInjector;
.super Ljava/lang/Object;
.source "CoverArtManager_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/view/player/view/CoverArtManager;",
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
.method public static injectKindleReaderSdk(Lcom/audible/hushpuppy/view/player/view/CoverArtManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method
