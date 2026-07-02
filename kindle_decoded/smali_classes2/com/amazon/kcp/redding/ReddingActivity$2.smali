.class Lcom/amazon/kcp/redding/ReddingActivity$2;
.super Ljava/lang/Object;
.source "ReddingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/redding/ReddingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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

    .line 429
    iput-object p1, p0, Lcom/amazon/kcp/redding/ReddingActivity$2;->this$0:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/amazon/kcp/redding/ReddingActivity$2;->this$0:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
