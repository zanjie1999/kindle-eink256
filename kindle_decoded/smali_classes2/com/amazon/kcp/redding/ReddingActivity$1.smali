.class Lcom/amazon/kcp/redding/ReddingActivity$1;
.super Ljava/lang/Object;
.source "ReddingActivity.java"

# interfaces
.implements Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/redding/ReddingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/redding/ReddingActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/ReddingActivity;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/amazon/kcp/redding/ReddingActivity$1;->this$0:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 120
    invoke-static {}, Lcom/amazon/android/widget/SearchViewWrapper$Availability;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/redding/ReddingActivity$1;->this$0:Lcom/amazon/kcp/redding/ReddingActivity;

    iget-object p1, p1, Lcom/amazon/kcp/redding/ReddingActivity;->searchViewWrapper:Lcom/amazon/android/widget/SearchViewWrapper;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 121
    invoke-virtual {p1, v0}, Lcom/amazon/android/widget/SearchViewWrapper;->setIconified(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
