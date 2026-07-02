.class public final Lcom/audible/hushpuppy/view/leftnav/MatchmakerTextPanelComponent;
.super Ljava/lang/Object;
.source "MatchmakerTextPanelComponent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;


# instance fields
.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/MatchmakerTextPanelComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

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

    .line 33
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->matchmaker_add_audible_narration:I

    .line 34
    iget-object v1, p0, Lcom/audible/hushpuppy/view/leftnav/MatchmakerTextPanelComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

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
