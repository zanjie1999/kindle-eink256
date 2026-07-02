.class public final Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment_MembersInjector;
.super Ljava/lang/Object;
.source "StartActionsPitchFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final currencyFormatterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/common/CurrencyFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private final hushpuppyModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectCurrencyFormatter(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;Lcom/audible/hushpuppy/view/common/CurrencyFormatter;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->currencyFormatter:Lcom/audible/hushpuppy/view/common/CurrencyFormatter;

    return-void
.end method

.method public static injectHushpuppyModel(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    return-void
.end method
