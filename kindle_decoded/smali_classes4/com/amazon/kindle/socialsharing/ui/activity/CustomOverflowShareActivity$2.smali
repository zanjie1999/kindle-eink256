.class Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity$2;
.super Ljava/lang/Object;
.source "CustomOverflowShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity$2;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity$2;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
