.class Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$2;
.super Ljava/lang/Object;
.source "ForwardingLifecycleListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->onTutorialDismissed(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dismissalType:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;

.field final synthetic val$listener:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;)V
    .locals 0

    .line 126
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$2;->val$listener:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    iput-object p3, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$2;->val$dismissalType:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$2;->val$listener:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$2;->val$dismissalType:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;->onTutorialDismissed(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;)V

    return-void
.end method
