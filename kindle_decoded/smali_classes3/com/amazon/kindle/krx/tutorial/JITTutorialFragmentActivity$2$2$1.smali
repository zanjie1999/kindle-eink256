.class Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$2$1;
.super Ljava/lang/Object;
.source "JITTutorialFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$2;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$2;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$2$1;->this$2:Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$2$1;->this$2:Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$2;

    iget-object v0, v0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$2;->this$1:Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;

    iget-object v0, v0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;->this$0:Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;

    invoke-static {v0}, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->access$300(Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$2$1;->this$2:Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$2;

    iget-object v0, v0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$2;->this$1:Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;

    iget-object v0, v0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;->this$0:Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;

    invoke-static {v0}, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->access$000(Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;)V

    :cond_0
    return-void
.end method
