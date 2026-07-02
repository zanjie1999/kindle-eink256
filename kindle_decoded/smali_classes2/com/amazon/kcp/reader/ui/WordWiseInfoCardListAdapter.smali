.class public Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WordWiseInfoCardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

.field private selectedKey:I

.field private values:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    sget v0, Lcom/amazon/kindle/ww/R$layout;->wordwise_infocard_list_row:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 60
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter;->values:Ljava/util/HashMap;

    const/16 p1, -0x64

    .line 61
    iput p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter;->selectedKey:I

    .line 62
    sget-object p1, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-void
.end method

.method private getTextColor()I
    .locals 2

    .line 128
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ww/R$color;->dark_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ww/R$color;->info_card_dark_title_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 96
    sget v1, Lcom/amazon/kindle/ww/R$layout;->wordwise_infocard_list_row:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 99
    :cond_0
    sget p3, Lcom/amazon/kindle/ww/R$id;->wordwise_card_row_text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 100
    sget v1, Lcom/amazon/kindle/ww/R$id;->wordwise_card_row_marker:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 101
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter;->getTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 104
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter;->values:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter;->selectedKey:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v2, p1, :cond_1

    .line 107
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/ww/R$string;->wordwise_card_row_selected:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 110
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/ww/R$color;->info_card_v2_link_button_text_color_white_mode:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2
.end method

.method public loadElements(Landroid/os/Bundle;)V
    .locals 7

    if-eqz p1, :cond_4

    const-string v0, "keys"

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "values"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 80
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter;->values:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 82
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 83
    array-length v3, v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 85
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter;->values:Ljava/util/HashMap;

    aget v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    aget v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "selected"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_3
    const/16 p1, -0x64

    :goto_1
    iput p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter;->selectedKey:I

    :cond_4
    :goto_2
    return-void
.end method

.method public setColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-void
.end method
