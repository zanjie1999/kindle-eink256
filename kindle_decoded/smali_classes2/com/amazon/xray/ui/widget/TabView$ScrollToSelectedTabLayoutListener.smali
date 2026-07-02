.class Lcom/amazon/xray/ui/widget/TabView$ScrollToSelectedTabLayoutListener;
.super Ljava/lang/Object;
.source "TabView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/widget/TabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollToSelectedTabLayoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/widget/TabView;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/widget/TabView;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/TabView$ScrollToSelectedTabLayoutListener;->this$0:Lcom/amazon/xray/ui/widget/TabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/widget/TabView;Lcom/amazon/xray/ui/widget/TabView$1;)V
    .locals 0

    .line 507
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/TabView$ScrollToSelectedTabLayoutListener;-><init>(Lcom/amazon/xray/ui/widget/TabView;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 511
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TabView$ScrollToSelectedTabLayoutListener;->this$0:Lcom/amazon/xray/ui/widget/TabView;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/TabView;->access$900(Lcom/amazon/xray/ui/widget/TabView;)V

    return-void
.end method
