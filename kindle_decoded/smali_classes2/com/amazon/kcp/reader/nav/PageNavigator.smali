.class public Lcom/amazon/kcp/reader/nav/PageNavigator;
.super Ljava/lang/Object;
.source "PageNavigator.java"

# interfaces
.implements Lcom/amazon/kcp/reader/nav/IPageNavigator;


# instance fields
.field private tarLoc:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commit(Ljava/lang/String;)V
    .locals 2

    .line 22
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 25
    iget v1, p0, Lcom/amazon/kcp/reader/nav/PageNavigator;->tarLoc:I

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToLocation(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public rollback()V
    .locals 0

    return-void
.end method

.method public start(II)V
    .locals 0

    .line 17
    iput p2, p0, Lcom/amazon/kcp/reader/nav/PageNavigator;->tarLoc:I

    return-void
.end method
