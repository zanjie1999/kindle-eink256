.class public Lcom/amazon/kcp/reader/ui/PinyinButton;
.super Lcom/amazon/kcp/reader/ui/WordWiseButton;
.source "PinyinButton.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseButton;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 23
    sget v0, Lcom/amazon/kindle/ww/R$id;->pin_yin_menu_item_id:I

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 1

    .line 29
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseButton;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/kindle/ww/R$string;->pinyin_settings_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 34
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1
.end method
