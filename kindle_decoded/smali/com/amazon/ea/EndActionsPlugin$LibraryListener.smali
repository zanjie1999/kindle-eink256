.class Lcom/amazon/ea/EndActionsPlugin$LibraryListener;
.super Lcom/amazon/kindle/krx/library/BaseLibraryEventListener;
.source "EndActionsPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/EndActionsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LibraryListener"
.end annotation


# direct methods
.method private constructor <init>(Lcom/amazon/ea/EndActionsPlugin;)V
    .locals 0

    .line 362
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/ea/EndActionsPlugin;Lcom/amazon/ea/EndActionsPlugin$1;)V
    .locals 0

    .line 362
    invoke-direct {p0, p1}, Lcom/amazon/ea/EndActionsPlugin$LibraryListener;-><init>(Lcom/amazon/ea/EndActionsPlugin;)V

    return-void
.end method


# virtual methods
.method public onContentAdd(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 365
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/ea/metrics/PurchaseAttributor;->attemptToAttributePurchase(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 366
    :cond_2
    :goto_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 367
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ignoring content add; book or asin is null"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onContentDelete(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onContentUpdate(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method
