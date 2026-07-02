.class Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$1;
.super Ljava/lang/Object;
.source "ForwardingLifecycleListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->onTutorialShown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;)V
    .locals 0

    .line 105
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$1;->val$listener:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$1;->val$listener:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;->onTutorialShown()V

    return-void
.end method
