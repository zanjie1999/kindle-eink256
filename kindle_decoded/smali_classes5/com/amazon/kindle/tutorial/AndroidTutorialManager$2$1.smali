.class Lcom/amazon/kindle/tutorial/AndroidTutorialManager$2$1;
.super Ljava/lang/Object;
.source "AndroidTutorialManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/AndroidTutorialManager$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/tutorial/AndroidTutorialManager$2;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/AndroidTutorialManager$2;Landroid/content/Context;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$2$1;->this$1:Lcom/amazon/kindle/tutorial/AndroidTutorialManager$2;

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$2$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$2$1;->this$1:Lcom/amazon/kindle/tutorial/AndroidTutorialManager$2;

    iget-object v0, v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$2;->this$0:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$2$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->loadConfigurationFromContext(Landroid/content/Context;)V

    return-void
.end method
