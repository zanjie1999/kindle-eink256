.class Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$4;
.super Ljava/lang/Object;
.source "ForwardingLifecycleListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->onBrochureNavigation(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$brochureNavigation:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

.field final synthetic val$destPageNum:I

.field final synthetic val$listener:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;I)V
    .locals 0

    .line 164
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$4;->val$listener:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    iput-object p3, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$4;->val$brochureNavigation:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    iput p4, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$4;->val$destPageNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$4;->val$listener:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$4;->val$brochureNavigation:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    iget v2, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$4;->val$destPageNum:I

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;->onBrochureNavigation(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;I)V

    return-void
.end method
