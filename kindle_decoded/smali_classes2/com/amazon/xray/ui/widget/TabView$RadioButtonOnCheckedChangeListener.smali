.class Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnCheckedChangeListener;
.super Ljava/lang/Object;
.source "TabView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/widget/TabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioButtonOnCheckedChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/widget/TabView;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/widget/TabView;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnCheckedChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/widget/TabView;Lcom/amazon/xray/ui/widget/TabView$1;)V
    .locals 0

    .line 459
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnCheckedChangeListener;-><init>(Lcom/amazon/xray/ui/widget/TabView;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnCheckedChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TabView;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/TabView;->access$400(Lcom/amazon/xray/ui/widget/TabView;)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnCheckedChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TabView;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/TabView;->access$500(Lcom/amazon/xray/ui/widget/TabView;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/widget/CompoundButton;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
