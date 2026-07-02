.class Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity$1;
.super Ljava/lang/Object;
.source "CustomOverflowShareActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 95
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity$1;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 98
    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity$1;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;

    const/4 p4, 0x1

    invoke-static {p2, p4}, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->access$002(Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;Z)Z

    .line 100
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 101
    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity$1;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;

    invoke-static {p2, p1}, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->access$100(Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;Landroid/content/pm/ResolveInfo;)V

    .line 103
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.SEND"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "text/plain"

    .line 104
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object p3, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity$1;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;

    invoke-static {p3}, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->access$200(Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "android.intent.extra.TEXT"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    iget-object p3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object p3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p4, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-static {}, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->access$300()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "App selected from overflow. Package name: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p5, p5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "; Activity name: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity$1;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 115
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 116
    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity$1;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 118
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity$1;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
