.class public final Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge_Factory;
.super Ljava/lang/Object;
.source "AudibleTOAInfoModalJavaScriptBridge_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;",
        ">;"
    }
.end annotation


# instance fields
.field private final toaWebViewUpsellControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static newAudibleTOAInfoModalJavaScriptBridge(Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;)Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;
    .locals 1

    .line 34
    new-instance v0, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;-><init>(Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;",
            ">;)",
            "Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;-><init>(Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge_Factory;->toaWebViewUpsellControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge_Factory;->get()Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;

    move-result-object v0

    return-object v0
.end method
