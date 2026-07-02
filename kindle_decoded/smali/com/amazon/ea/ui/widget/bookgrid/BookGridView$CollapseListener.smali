.class Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CollapseListener;
.super Ljava/lang/Object;
.source "BookGridView.java"

# interfaces
.implements Lcom/amazon/ea/ui/AnimationCoordinator$CollapseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollapseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;


# direct methods
.method private constructor <init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CollapseListener;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$1;)V
    .locals 0

    .line 622
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CollapseListener;-><init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;)V

    return-void
.end method


# virtual methods
.method public collapse()V
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CollapseListener;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->setSelectedCover(I)V

    return-void
.end method
