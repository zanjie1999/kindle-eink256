.class final Lcom/amazon/kcp/oob/NavigationController$TabHandle;
.super Ljava/lang/Object;
.source "NavigationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/oob/NavigationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabHandle"
.end annotation


# instance fields
.field final backstack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;",
            ">;"
        }
    .end annotation
.end field

.field final tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/ui/LandingScreenTab;)V
    .locals 1

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    iput-object p1, p0, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    .line 731
    new-instance p1, Ljava/util/ArrayDeque;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    return-void
.end method
