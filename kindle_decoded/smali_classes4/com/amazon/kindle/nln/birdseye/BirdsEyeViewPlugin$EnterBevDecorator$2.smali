.class Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator$2;
.super Ljava/lang/Object;
.source "BirdsEyeViewPlugin.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;->getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator$2;->this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 356
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator$2;->this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 361
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator$2;->this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method
