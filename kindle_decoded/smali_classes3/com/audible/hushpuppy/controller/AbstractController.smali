.class public abstract Lcom/audible/hushpuppy/controller/AbstractController;
.super Ljava/lang/Object;
.source "AbstractController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MODE",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final eventBus:Lde/greenrobot/event/EventBus;

.field protected final model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMODE",
            "L;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lde/greenrobot/event/EventBus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMODE",
            "L;",
            "Lde/greenrobot/event/EventBus;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    .line 31
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method
