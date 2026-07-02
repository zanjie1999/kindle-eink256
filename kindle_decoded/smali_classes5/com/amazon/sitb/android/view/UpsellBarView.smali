.class public abstract Lcom/amazon/sitb/android/view/UpsellBarView;
.super Lcom/amazon/kindle/krx/ui/ColorCodedView;
.source "UpsellBarView.java"

# interfaces
.implements Lcom/amazon/sitb/android/view/HasPresenter;
.implements Lcom/amazon/sitb/android/view/ShowsModel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/ui/ColorCodedView;",
        "Lcom/amazon/sitb/android/view/HasPresenter<",
        "Lcom/amazon/sitb/android/UpsellBarPresenter;",
        ">;",
        "Lcom/amazon/sitb/android/view/ShowsModel<",
        "Lcom/amazon/sitb/android/model/UpsellModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/krx/ui/ColorCodedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public abstract setPresenter(Lcom/amazon/sitb/android/UpsellBarPresenter;)V
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/amazon/sitb/android/UpsellBarPresenter;

    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/view/UpsellBarView;->setPresenter(Lcom/amazon/sitb/android/UpsellBarPresenter;)V

    return-void
.end method

.method public abstract updateViewModel(Lcom/amazon/sitb/android/model/UpsellModel;)V
.end method

.method public bridge synthetic updateViewModel(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/view/UpsellBarView;->updateViewModel(Lcom/amazon/sitb/android/model/UpsellModel;)V

    return-void
.end method
