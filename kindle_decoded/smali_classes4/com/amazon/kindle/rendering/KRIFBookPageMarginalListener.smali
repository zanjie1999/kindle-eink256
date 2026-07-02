.class public Lcom/amazon/kindle/rendering/KRIFBookPageMarginalListener;
.super Ljava/lang/Object;
.source "KRIFBookPageMarginalListener.java"

# interfaces
.implements Lcom/amazon/krf/platform/MarginalListener;


# instance fields
.field private marginalHandler:Lcom/amazon/kindle/rendering/IBookPageMarginalHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/rendering/IBookPageMarginalHandler;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookPageMarginalListener;->marginalHandler:Lcom/amazon/kindle/rendering/IBookPageMarginalHandler;

    return-void
.end method

.method private reloadPageMarginals()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookPageMarginalListener;->marginalHandler:Lcom/amazon/kindle/rendering/IBookPageMarginalHandler;

    invoke-interface {v0}, Lcom/amazon/kindle/rendering/IBookPageMarginalHandler;->getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;

    move-result-object v0

    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->setIsDirty(Z)V

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookPageMarginalListener;->marginalHandler:Lcom/amazon/kindle/rendering/IBookPageMarginalHandler;

    invoke-interface {v0}, Lcom/amazon/kindle/rendering/IBookPageMarginalHandler;->reloadCurrentPageMarginals()V

    return-void
.end method


# virtual methods
.method public onTap(Lcom/amazon/krf/platform/Marginal;)Z
    .locals 3

    .line 30
    invoke-virtual {p1}, Lcom/amazon/krf/platform/Marginal;->getMarginalType()Lcom/amazon/krf/platform/Marginal$MarginalType;

    move-result-object v0

    sget-object v1, Lcom/amazon/krf/platform/Marginal$MarginalType;->FOOTER:Lcom/amazon/krf/platform/Marginal$MarginalType;

    if-ne v0, v1, :cond_2

    .line 31
    invoke-virtual {p1}, Lcom/amazon/krf/platform/Marginal;->getLayoutPosition()Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    move-result-object v0

    sget-object v1, Lcom/amazon/krf/platform/Marginal$LayoutPosition;->LEFT:Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookPageMarginalListener;->reloadPageMarginals()V

    return v2

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/krf/platform/Marginal;->getLayoutPosition()Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    move-result-object p1

    sget-object v0, Lcom/amazon/krf/platform/Marginal$LayoutPosition;->RIGHT:Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    if-ne p1, v0, :cond_2

    .line 36
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookPageMarginalListener;->marginalHandler:Lcom/amazon/kindle/rendering/IBookPageMarginalHandler;

    invoke-interface {p1}, Lcom/amazon/kindle/rendering/IBookPageMarginalHandler;->performFooterGestureActionsFromProviders()Z

    move-result p1

    if-nez p1, :cond_1

    .line 38
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookPageMarginalListener;->reloadPageMarginals()V

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_0
    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
