.class Lcom/amazon/kcp/redding/DocumentActivity$2;
.super Ljava/lang/Object;
.source "DocumentActivity.java"

# interfaces
.implements Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/redding/DocumentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/redding/DocumentActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/DocumentActivity;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity$2;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity$2;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/redding/DocumentActivity;->setTitleVisibility(Z)V

    const/4 v0, 0x0

    return v0
.end method
