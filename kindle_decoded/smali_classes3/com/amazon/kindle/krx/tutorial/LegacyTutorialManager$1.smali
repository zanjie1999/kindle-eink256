.class Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager$1;
.super Ljava/lang/Object;
.source "LegacyTutorialManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->createJITTutorialActivity(Lcom/amazon/kindle/krx/tutorial/JITTutorial;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;Lcom/amazon/kcp/reader/ReaderActivity;Landroid/content/Intent;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager$1;->this$0:Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;

    iput-object p2, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager$1;->val$readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    iput-object p3, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager$1;->val$readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    iget-object v1, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 412
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager$1;->val$readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    sget v1, Lcom/amazon/kindle/krxsdk/R$anim;->fade_in:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
