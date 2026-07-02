.class Lcom/amazon/xray/ui/widget/XrayInfoCard$2;
.super Ljava/lang/Object;
.source "XrayInfoCard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/xray/ui/widget/XrayInfoCard;->createDescriptionViewOnTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;


# direct methods
.method constructor <init>(Lcom/amazon/xray/ui/widget/XrayInfoCard;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$2;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 129
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p2

    const-string v0, "XrayInfoCard"

    const-string v1, "ScrollInfocard"

    invoke-interface {p2, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
