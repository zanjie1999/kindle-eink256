.class Lcom/amazon/kcp/reader/ReaderActivity$30;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->showNLNContentFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;

.field final synthetic val$setChromeVisible:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Z)V
    .locals 0

    .line 4504
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$30;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ReaderActivity$30;->val$setChromeVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4507
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$30;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$30;->val$setChromeVisible:Z

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$2600(Lcom/amazon/kcp/reader/ReaderActivity;Z)V

    return-void
.end method
