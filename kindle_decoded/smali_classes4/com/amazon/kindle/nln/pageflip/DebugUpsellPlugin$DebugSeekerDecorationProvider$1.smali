.class Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugSeekerDecorationProvider$1;
.super Ljava/lang/Object;
.source "DebugUpsellPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugSeekerDecorationProvider;->getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugSeekerDecorationProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugSeekerDecorationProvider;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugSeekerDecorationProvider$1;->this$1:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugSeekerDecorationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 152
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugSeekerDecorationProvider$1;->this$1:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugSeekerDecorationProvider;

    iget-object p1, p1, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugSeekerDecorationProvider;->this$0:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;

    invoke-static {p1}, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;->access$200(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;->access$202(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;Z)Z

    .line 153
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugSeekerDecorationProvider$1;->this$1:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugSeekerDecorationProvider;

    iget-object p1, p1, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugSeekerDecorationProvider;->this$0:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;

    invoke-static {p1}, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;->access$300(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshActionBarDecoration()V

    return-void
.end method
