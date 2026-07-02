.class final Lcom/audible/hushpuppy/view/leftnav/SwitchToAudiobookTextPanelComponent;
.super Ljava/lang/Object;
.source "SwitchToAudiobookTextPanelComponent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;


# instance fields
.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/SwitchToAudiobookTextPanelComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public getSecondaryText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/SwitchToAudiobookTextPanelComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->action_switch_to_listening:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
