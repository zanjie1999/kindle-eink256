.class Lcom/amazon/kcp/library/EditCollectionActivity$1;
.super Ljava/lang/Object;
.source "EditCollectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/EditCollectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/EditCollectionActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/EditCollectionActivity;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/kcp/library/EditCollectionActivity$1;->this$0:Lcom/amazon/kcp/library/EditCollectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/amazon/kcp/library/EditCollectionActivity$1;->this$0:Lcom/amazon/kcp/library/EditCollectionActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
