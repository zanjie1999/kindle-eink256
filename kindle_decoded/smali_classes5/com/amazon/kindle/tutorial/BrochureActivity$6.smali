.class Lcom/amazon/kindle/tutorial/BrochureActivity$6;
.super Ljava/lang/Object;
.source "BrochureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/BrochureActivity;->initializeButton(ILcom/amazon/kindle/tutorial/model/TutorialButton;Ljava/lang/Runnable;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/tutorial/BrochureActivity;

.field final synthetic val$actionConfig:Lcom/amazon/kindle/tutorial/model/ActionConfig;

.field final synthetic val$clickHandler:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/BrochureActivity;Ljava/lang/Runnable;Lcom/amazon/kindle/tutorial/model/ActionConfig;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$6;->this$0:Lcom/amazon/kindle/tutorial/BrochureActivity;

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$6;->val$clickHandler:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$6;->val$actionConfig:Lcom/amazon/kindle/tutorial/model/ActionConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 184
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$6;->val$clickHandler:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 185
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$6;->val$actionConfig:Lcom/amazon/kindle/tutorial/model/ActionConfig;

    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$6;->this$0:Lcom/amazon/kindle/tutorial/BrochureActivity;

    invoke-static {v0, p1}, Lcom/amazon/kindle/tutorial/BrochureActivity;->access$400(Lcom/amazon/kindle/tutorial/BrochureActivity;Lcom/amazon/kindle/tutorial/model/ActionConfig;)V

    :cond_0
    return-void
.end method
