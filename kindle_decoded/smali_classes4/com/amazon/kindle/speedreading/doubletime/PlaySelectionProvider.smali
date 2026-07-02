.class public Lcom/amazon/kindle/speedreading/doubletime/PlaySelectionProvider;
.super Ljava/lang/Object;
.source "PlaySelectionProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/IButton<",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUTTON_ID:Ljava/lang/String; = "dtPlaySelectionButton"


# instance fields
.field private final dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/PlaySelectionProvider;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/IButton;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ")",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance p1, Lcom/amazon/kindle/speedreading/doubletime/PlaySelectionProvider$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/speedreading/doubletime/PlaySelectionProvider$1;-><init>(Lcom/amazon/kindle/speedreading/doubletime/PlaySelectionProvider;)V

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/PlaySelectionProvider;->get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/IButton;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/PlaySelectionProvider;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->isInDoubletimeMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/PlaySelectionProvider;->getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I

    move-result p1

    return p1
.end method
