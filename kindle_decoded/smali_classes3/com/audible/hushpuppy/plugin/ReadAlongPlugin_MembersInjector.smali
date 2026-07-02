.class public final Lcom/audible/hushpuppy/plugin/ReadAlongPlugin_MembersInjector;
.super Ljava/lang/Object;
.source "ReadAlongPlugin_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/plugin/ReadAlongPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field private final highlightTextDecoratorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;",
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

.field private final readAlongControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ReadAlongController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectHighlightTextDecoratorProvider(Lcom/audible/hushpuppy/plugin/ReadAlongPlugin;Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ReadAlongPlugin;->highlightTextDecoratorProvider:Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;

    return-void
.end method

.method public static injectHushpuppyModel(Lcom/audible/hushpuppy/plugin/ReadAlongPlugin;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ReadAlongPlugin;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    return-void
.end method

.method public static injectReadAlongController(Lcom/audible/hushpuppy/plugin/ReadAlongPlugin;Lcom/audible/hushpuppy/controller/ReadAlongController;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ReadAlongPlugin;->readAlongController:Lcom/audible/hushpuppy/controller/ReadAlongController;

    return-void
.end method
