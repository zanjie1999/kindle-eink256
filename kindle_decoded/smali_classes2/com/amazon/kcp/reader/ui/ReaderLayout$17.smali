.class Lcom/amazon/kcp/reader/ui/ReaderLayout$17;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout;->initOrientationLockManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    .line 3530
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$17;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 3533
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$17;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$800(Lcom/amazon/kcp/reader/ui/ReaderLayout;)Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/IOrientationLockManager;->refreshLayout()V

    return-object p2
.end method
