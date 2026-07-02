.class public final Lcom/audible/hushpuppy/view/common/ToaInfoModal_MembersInjector;
.super Ljava/lang/Object;
.source "ToaInfoModal_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/view/common/ToaInfoModal;",
        ">;"
    }
.end annotation


# instance fields
.field private final audibleTOAInfoModalJavaScriptBridgeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectAudibleTOAInfoModalJavaScriptBridge(Lcom/audible/hushpuppy/view/common/ToaInfoModal;Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->audibleTOAInfoModalJavaScriptBridge:Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;

    return-void
.end method
