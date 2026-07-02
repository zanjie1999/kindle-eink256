.class public Lcom/amazon/kindle/krx/ui/BaseScreenlet;
.super Ljava/lang/Object;
.source "BaseScreenlet.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/Screenlet;


# instance fields
.field private final context:Lcom/amazon/kindle/krx/ui/ScreenletContext;


# direct methods
.method protected constructor <init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->context:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "context is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createCustomHeaderView(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->context:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    return-object v0
.end method

.method public getHeaderMode()Lcom/amazon/kindle/krx/ui/HeaderMode;
    .locals 1

    .line 91
    sget-object v0, Lcom/amazon/kindle/krx/ui/HeaderMode;->SEARCH_BOX:Lcom/amazon/kindle/krx/ui/HeaderMode;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getMetricsTag()Ljava/lang/String;
    .locals 1

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusForMetrics()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivate()V
    .locals 0

    return-void
.end method

.method public onAttach()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 38
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onDeactivate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onGoBack()V
    .locals 0

    return-void
.end method

.method public onGoBackToBeginning()V
    .locals 0

    return-void
.end method

.method public onNewIntent(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onReset(Lcom/amazon/kindle/krx/ui/ScreenletReason;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method
