.class Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$3;
.super Ljava/lang/Object;
.source "ForwardingLifecycleListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->onDialogButtonClicked(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialogButton:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;

.field final synthetic val$listener:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;)V
    .locals 0

    .line 145
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$3;->val$listener:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    iput-object p3, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$3;->val$dialogButton:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$3;->val$listener:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$3;->val$dialogButton:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;->onDialogButtonClicked(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;)V

    return-void
.end method
