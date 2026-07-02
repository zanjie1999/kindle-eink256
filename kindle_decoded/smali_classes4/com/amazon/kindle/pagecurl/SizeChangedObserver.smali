.class public Lcom/amazon/kindle/pagecurl/SizeChangedObserver;
.super Ljava/lang/Object;
.source "SizeChangedObserver.java"

# interfaces
.implements Lcom/amazon/kindle/pagecurl/CurlView$SizeChangedObserver;


# instance fields
.field private view:Lcom/amazon/kindle/pagecurl/CurlView;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/pagecurl/CurlView;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/SizeChangedObserver;->view:Lcom/amazon/kindle/pagecurl/CurlView;

    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/SizeChangedObserver;->view:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->getViewMode()Lcom/amazon/kindle/pagecurl/ViewMode;

    move-result-object v0

    .line 21
    sget-object v1, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-le p1, p2, :cond_0

    .line 24
    sget-object v1, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    .line 25
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/SizeChangedObserver;->view:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/pagecurl/CurlView;->setViewMode(Lcom/amazon/kindle/pagecurl/ViewMode;)V

    .line 26
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/SizeChangedObserver;->view:Lcom/amazon/kindle/pagecurl/CurlView;

    const p2, 0x3d4ccccd    # 0.05f

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v2, p2, v2, p2}, Lcom/amazon/kindle/pagecurl/CurlView;->setMargins(FFFF)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/SizeChangedObserver;->view:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/pagecurl/CurlView;->setViewMode(Lcom/amazon/kindle/pagecurl/ViewMode;)V

    .line 30
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/SizeChangedObserver;->view:Lcom/amazon/kindle/pagecurl/CurlView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/amazon/kindle/pagecurl/CurlView;->setMargins(FFFF)V

    .line 33
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/SizeChangedObserver;->view:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {p1}, Lcom/amazon/kindle/pagecurl/CurlView;->getCurrentIndex()I

    move-result p1

    .line 36
    sget-object p2, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v0, p2, :cond_1

    sget-object p2, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v1, p2, :cond_1

    .line 37
    iget-object p2, p0, Lcom/amazon/kindle/pagecurl/SizeChangedObserver;->view:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/pagecurl/CurlView;->setCurrentIndex(I)V

    goto :goto_1

    .line 41
    :cond_1
    sget-object p2, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v0, p2, :cond_2

    sget-object p2, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v1, p2, :cond_2

    .line 42
    iget-object p2, p0, Lcom/amazon/kindle/pagecurl/SizeChangedObserver;->view:Lcom/amazon/kindle/pagecurl/CurlView;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/pagecurl/CurlView;->setCurrentIndex(I)V

    goto :goto_1

    .line 47
    :cond_2
    iget-object p2, p0, Lcom/amazon/kindle/pagecurl/SizeChangedObserver;->view:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/pagecurl/CurlView;->setCurrentIndex(I)V

    :goto_1
    return-void
.end method
