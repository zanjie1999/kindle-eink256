.class Lcom/amazon/kindle/nln/NlnTransitionManager$2;
.super Ljava/lang/Object;
.source "NlnTransitionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/NlnTransitionManager;->doTransitionAnimation(Landroid/view/View;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/NlnTransitionManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/NlnTransitionManager;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager$2;->this$0:Lcom/amazon/kindle/nln/NlnTransitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager$2;->this$0:Lcom/amazon/kindle/nln/NlnTransitionManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->cleanupAnimation()V

    return-void
.end method
