.class Lcom/amazon/kindle/tutorial/BrochureActivity$1;
.super Ljava/lang/Object;
.source "BrochureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/BrochureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/tutorial/BrochureActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/BrochureActivity;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$1;->this$0:Lcom/amazon/kindle/tutorial/BrochureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$1;->this$0:Lcom/amazon/kindle/tutorial/BrochureActivity;

    invoke-static {v0}, Lcom/amazon/kindle/tutorial/BrochureActivity;->access$000(Lcom/amazon/kindle/tutorial/BrochureActivity;)Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/tutorial/BrochureActivity;->navigatePrevious(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;)V

    return-void
.end method
