.class Lcom/amazon/kindle/nln/BaseNonLinearFragment$3;
.super Ljava/lang/Object;
.source "BaseNonLinearFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onKindleDocNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

.field final synthetic val$event:Lcom/amazon/kindle/event/KindleDocNavigationEvent;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/BaseNonLinearFragment;Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 0

    .line 1276
    iput-object p1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$3;->this$0:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    iput-object p2, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$3;->val$event:Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1279
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$3;->this$0:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$3;->val$event:Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->internalOnKindleDocNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V

    return-void
.end method
