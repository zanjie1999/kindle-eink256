.class Lcom/amazon/ea/EndActionsPlugin$StartupPurchaseLibraryEventListener;
.super Lcom/amazon/kindle/krx/library/BaseLibraryEventListener;
.source "EndActionsPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/EndActionsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartupPurchaseLibraryEventListener"
.end annotation


# direct methods
.method private constructor <init>(Lcom/amazon/ea/EndActionsPlugin;)V
    .locals 0

    .line 287
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/ea/EndActionsPlugin;Lcom/amazon/ea/EndActionsPlugin$1;)V
    .locals 0

    .line 287
    invoke-direct {p0, p1}, Lcom/amazon/ea/EndActionsPlugin$StartupPurchaseLibraryEventListener;-><init>(Lcom/amazon/ea/EndActionsPlugin;)V

    return-void
.end method


# virtual methods
.method public onContentAdd(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 290
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ea/purchase/PurchaseManager;->getLibraryEventListener()Lcom/amazon/kindle/krx/library/ILibraryEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/library/ILibraryEventListener;->onContentAdd(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public onContentDelete(Ljava/lang/String;Z)V
    .locals 1

    .line 300
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ea/purchase/PurchaseManager;->getLibraryEventListener()Lcom/amazon/kindle/krx/library/ILibraryEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/library/ILibraryEventListener;->onContentDelete(Ljava/lang/String;Z)V

    return-void
.end method

.method public onContentUpdate(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 295
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ea/purchase/PurchaseManager;->getLibraryEventListener()Lcom/amazon/kindle/krx/library/ILibraryEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/library/ILibraryEventListener;->onContentUpdate(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method
