.class Lcom/amazon/kcp/debug/DebugActivityV2$1;
.super Ljava/lang/Object;
.source "DebugActivityV2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivityV2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivityV2;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivityV2;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$1;->this$0:Lcom/amazon/kcp/debug/DebugActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 87
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$1;->this$0:Lcom/amazon/kcp/debug/DebugActivityV2;

    iget-object p1, p1, Lcom/amazon/kcp/debug/DebugActivityV2;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
