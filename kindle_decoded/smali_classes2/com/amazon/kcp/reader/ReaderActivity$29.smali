.class Lcom/amazon/kcp/reader/ReaderActivity$29;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->onDrawerOpened(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;

.field final synthetic val$closeBookButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Landroid/view/View;)V
    .locals 0

    .line 4132
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$29;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderActivity$29;->val$closeBookButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4135
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$29;->val$closeBookButton:Landroid/view/View;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    return-void
.end method
