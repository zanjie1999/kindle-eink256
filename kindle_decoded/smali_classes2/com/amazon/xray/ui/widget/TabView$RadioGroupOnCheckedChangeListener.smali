.class Lcom/amazon/xray/ui/widget/TabView$RadioGroupOnCheckedChangeListener;
.super Ljava/lang/Object;
.source "TabView.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/widget/TabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioGroupOnCheckedChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/widget/TabView;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/widget/TabView;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/TabView$RadioGroupOnCheckedChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/widget/TabView;Lcom/amazon/xray/ui/widget/TabView$1;)V
    .locals 0

    .line 491
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/TabView$RadioGroupOnCheckedChangeListener;-><init>(Lcom/amazon/xray/ui/widget/TabView;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 494
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TabView$RadioGroupOnCheckedChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TabView;

    invoke-static {p1, p2}, Lcom/amazon/xray/ui/widget/TabView;->access$702(Lcom/amazon/xray/ui/widget/TabView;I)I

    .line 495
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TabView$RadioGroupOnCheckedChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TabView;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/TabView;->access$800(Lcom/amazon/xray/ui/widget/TabView;)V

    .line 496
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TabView$RadioGroupOnCheckedChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TabView;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/TabView;->access$900(Lcom/amazon/xray/ui/widget/TabView;)V

    .line 498
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TabView$RadioGroupOnCheckedChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TabView;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/TabView;->access$1000(Lcom/amazon/xray/ui/widget/TabView;)Lcom/amazon/xray/ui/widget/TabView$OnTabSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 499
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TabView$RadioGroupOnCheckedChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TabView;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/TabView;->access$1000(Lcom/amazon/xray/ui/widget/TabView;)Lcom/amazon/xray/ui/widget/TabView$OnTabSelectedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/xray/ui/widget/TabView$RadioGroupOnCheckedChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TabView;

    invoke-static {p2}, Lcom/amazon/xray/ui/widget/TabView;->access$700(Lcom/amazon/xray/ui/widget/TabView;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/amazon/xray/ui/widget/TabView$OnTabSelectedListener;->onTabSelected(I)V

    :cond_0
    return-void
.end method
