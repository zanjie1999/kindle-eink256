.class public Lcom/amazon/kcp/debug/KRXDebugMenuPageProvider;
.super Ljava/lang/Object;
.source "KRXDebugMenuPageProvider.java"

# interfaces
.implements Lcom/amazon/kcp/debug/IDebugMenuPageProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDebugMenuPages(Landroid/app/Activity;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDebugMenuPages(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
