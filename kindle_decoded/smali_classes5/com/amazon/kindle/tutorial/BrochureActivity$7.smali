.class Lcom/amazon/kindle/tutorial/BrochureActivity$7;
.super Ljava/lang/Object;
.source "BrochureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/BrochureActivity;->handleAction(Lcom/amazon/kindle/tutorial/model/ActionConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/tutorial/BrochureActivity;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$topic:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/BrochureActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$7;->this$0:Lcom/amazon/kindle/tutorial/BrochureActivity;

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$7;->val$topic:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$7;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 207
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$7;->val$topic:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$7;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->handleAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
