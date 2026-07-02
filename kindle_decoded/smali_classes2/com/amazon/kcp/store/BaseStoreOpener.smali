.class abstract Lcom/amazon/kcp/store/BaseStoreOpener;
.super Ljava/lang/Object;
.source "BaseStoreOpener.java"

# interfaces
.implements Lcom/amazon/kindle/store/StoreOpener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/amazon/kcp/store/BaseStoreOpener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/store/StoreOpener;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private referralTag:Ljava/lang/String;

.field private screenletContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

.field private title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/store/BaseStoreOpener;->context:Landroid/content/Context;

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "context is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/store/BaseStoreOpener;->context:Landroid/content/Context;

    return-object v0
.end method

.method getPageTitle()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/store/BaseStoreOpener;->title:Ljava/lang/String;

    return-object v0
.end method

.method getReferralTag()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/store/BaseStoreOpener;->referralTag:Ljava/lang/String;

    return-object v0
.end method

.method getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/store/BaseStoreOpener;->screenletContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    return-object v0
.end method

.method abstract getThis()Lcom/amazon/kcp/store/BaseStoreOpener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public setReferralTag(Ljava/lang/String;)Lcom/amazon/kcp/store/BaseStoreOpener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/store/BaseStoreOpener;->referralTag:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BaseStoreOpener;->getThis()Lcom/amazon/kcp/store/BaseStoreOpener;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kcp/store/BaseStoreOpener;

    move-result-object p1

    return-object p1
.end method

.method public setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kcp/store/BaseStoreOpener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/ScreenletContext;",
            ")TT;"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/store/BaseStoreOpener;->screenletContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    .line 37
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BaseStoreOpener;->getThis()Lcom/amazon/kcp/store/BaseStoreOpener;

    move-result-object p1

    return-object p1
.end method

.method public setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;Ljava/lang/String;)Lcom/amazon/kcp/store/BaseStoreOpener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/ScreenletContext;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/amazon/kcp/store/BaseStoreOpener;->screenletContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    .line 51
    iput-object p2, p0, Lcom/amazon/kcp/store/BaseStoreOpener;->title:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BaseStoreOpener;->getThis()Lcom/amazon/kcp/store/BaseStoreOpener;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kcp/store/BaseStoreOpener;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/store/BaseStoreOpener;->setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;Ljava/lang/String;)Lcom/amazon/kcp/store/BaseStoreOpener;

    move-result-object p1

    return-object p1
.end method
