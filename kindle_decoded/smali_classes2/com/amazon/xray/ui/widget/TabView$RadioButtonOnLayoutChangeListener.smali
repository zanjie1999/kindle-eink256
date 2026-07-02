.class Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnLayoutChangeListener;
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
    name = "RadioButtonOnLayoutChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/widget/TabView;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/widget/TabView;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnLayoutChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/widget/TabView;Lcom/amazon/xray/ui/widget/TabView$1;)V
    .locals 0

    .line 470
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnLayoutChangeListener;-><init>(Lcom/amazon/xray/ui/widget/TabView;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 474
    check-cast p1, Landroid/widget/RadioButton;

    .line 477
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p6

    sub-int/2addr p5, p3

    iput p5, p6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 478
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    sub-int/2addr p4, p2

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 479
    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 482
    iget-object p2, p0, Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnLayoutChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TabView;

    invoke-static {p2}, Lcom/amazon/xray/ui/widget/TabView;->access$400(Lcom/amazon/xray/ui/widget/TabView;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 483
    iget-object p2, p0, Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnLayoutChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TabView;

    invoke-static {p2}, Lcom/amazon/xray/ui/widget/TabView;->access$600(Lcom/amazon/xray/ui/widget/TabView;)Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnCheckedChangeListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
