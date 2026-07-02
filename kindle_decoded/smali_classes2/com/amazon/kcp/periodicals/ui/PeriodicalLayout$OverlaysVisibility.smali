.class public Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$OverlaysVisibility;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OverlaysVisibility"
.end annotation


# instance fields
.field private final overlayVisibilityEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;


# direct methods
.method protected constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$OverlaysVisibility;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance p1, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {p1}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$OverlaysVisibility;->overlayVisibilityEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-void
.end method

.method static synthetic access$1200(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$OverlaysVisibility;)Lcom/amazon/foundation/internal/IntEventProvider;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$OverlaysVisibility;->overlayVisibilityEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object p0
.end method


# virtual methods
.method public areOverlaysVisible()Z
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$OverlaysVisibility;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    return v0
.end method

.method public getOverlayVisibilityEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$OverlaysVisibility;->overlayVisibilityEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method
