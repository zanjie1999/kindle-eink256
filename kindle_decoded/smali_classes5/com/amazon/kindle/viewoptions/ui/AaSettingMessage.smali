.class public final Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;
.super Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;
.source "AaSettingMessage.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private layoutView:Landroid/widget/LinearLayout;

.field private messageOnlyView:Landroid/widget/TextView;

.field private subTitleView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->init(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_item_vertical_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 40
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_item_horizontal_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v0, p1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 43
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->messageOnlyView:Landroid/widget/TextView;

    const-string v0, "messageOnlyView"

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->layoutView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->messageOnlyView:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->titleView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->subTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const-string/jumbo p1, "subTitleView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo p1, "titleView"

    .line 46
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "layoutView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->init(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_item_vertical_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 27
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_item_horizontal_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 28
    invoke-virtual {p0, v0, p1, v0, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 30
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->titleView:Landroid/widget/TextView;

    const-string/jumbo v0, "titleView"

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->subTitleView:Landroid/widget/TextView;

    const-string/jumbo p2, "subTitleView"

    if-eqz p1, :cond_4

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->layoutView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->titleView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->subTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->messageOnlyView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const-string p1, "messageOnlyView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "layoutView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_4
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final init(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x11

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 53
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_setting_message:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_v2_setting_message_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.i\u2026v2_setting_message_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->titleView:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_v2_setting_message_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.i\u2026setting_message_subtitle)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->subTitleView:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_v2_setting_message_only:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.i\u2026_v2_setting_message_only)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->messageOnlyView:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_v2_setting_message_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "content.findViewById(R.i\u20262_setting_message_layout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->layoutView:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public refreshSetting(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V
    .locals 4

    const-string/jumbo v0, "setting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getDisplay()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    move-result-object p1

    instance-of v0, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;

    if-eqz p1, :cond_6

    .line 66
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;->getSubTitle()Ljava/lang/String;

    move-result-object p1

    .line 68
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->titleView:Landroid/widget/TextView;

    const-string/jumbo v3, "titleView"

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->titleView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->subTitleView:Landroid/widget/TextView;

    const-string/jumbo v2, "subTitleView"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;->subTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_1
    return-void
.end method
