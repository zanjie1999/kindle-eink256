.class public Lcom/amazon/sitb/android/view/ViewManager;
.super Ljava/lang/Object;
.source "ViewManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "V:",
        "Landroid/view/View;",
        ":",
        "Lcom/amazon/sitb/android/view/HasPresenter<",
        "TP;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private currentViewNLN:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private presenter:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final viewFactoryNLN:Lcom/amazon/sitb/android/view/ViewFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/sitb/android/view/ViewFactory<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/view/ViewFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/sitb/android/view/ViewFactory<",
            "TV;>;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/sitb/android/view/ViewManager;->viewFactoryNLN:Lcom/amazon/sitb/android/view/ViewFactory;

    .line 23
    iput-object p2, p0, Lcom/amazon/sitb/android/view/ViewManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public create()Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/amazon/sitb/android/view/ViewManager;->viewFactoryNLN:Lcom/amazon/sitb/android/view/ViewFactory;

    invoke-interface {v0}, Lcom/amazon/sitb/android/view/ViewFactory;->create()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/sitb/android/view/ViewManager;->currentViewNLN:Landroid/view/View;

    .line 29
    check-cast v0, Lcom/amazon/sitb/android/view/HasPresenter;

    iget-object v1, p0, Lcom/amazon/sitb/android/view/ViewManager;->presenter:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/view/HasPresenter;->setPresenter(Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/amazon/sitb/android/view/ViewManager;->currentViewNLN:Landroid/view/View;

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/amazon/sitb/android/view/ViewManager;->currentViewNLN:Landroid/view/View;

    return-object v0
.end method

.method public setPresenter(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/amazon/sitb/android/view/ViewManager;->presenter:Ljava/lang/Object;

    return-void
.end method
