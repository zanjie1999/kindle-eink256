.class final Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;
.super Ljava/lang/Object;
.source "NavigationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/oob/NavigationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScreenletHandle"
.end annotation


# instance fields
.field final intent:Lcom/amazon/kindle/krx/ui/ScreenletIntent;

.field final screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

.field final view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/ui/ScreenletIntent;Lcom/amazon/kindle/krx/ui/Screenlet;Landroid/view/View;)V
    .locals 0

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    iput-object p1, p0, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->intent:Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    .line 710
    iput-object p2, p0, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->screenlet:Lcom/amazon/kindle/krx/ui/Screenlet;

    .line 711
    iput-object p3, p0, Lcom/amazon/kcp/oob/NavigationController$ScreenletHandle;->view:Landroid/view/View;

    return-void
.end method
