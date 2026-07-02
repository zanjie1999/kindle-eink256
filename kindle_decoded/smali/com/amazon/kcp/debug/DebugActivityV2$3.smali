.class Lcom/amazon/kcp/debug/DebugActivityV2$3;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "DebugActivityV2.java"


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

    .line 111
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$3;->this$0:Lcom/amazon/kcp/debug/DebugActivityV2;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivityV2$3;->this$0:Lcom/amazon/kcp/debug/DebugActivityV2;

    iget-object v0, v0, Lcom/amazon/kcp/debug/DebugActivityV2;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method
