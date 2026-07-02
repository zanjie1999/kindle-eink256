.class public final Lcom/amazon/kindle/viewoptions/font/FontFamilyViewHolder;
.super Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;
.source "FontFamilyViewHolder.kt"


# instance fields
.field private fontGuidanceView:Landroid/widget/TextView;

.field private fontNameView:Landroid/widget/TextView;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$ItemClickListener;)V
    .locals 1

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget v0, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_font_family_list_item:I

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$ItemClickListener;I)V

    .line 23
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class p2, Lcom/amazon/kindle/viewoptions/font/FontFamilyViewHolder;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyViewHolder;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method private final onFontFamilySelected(ZZ)V
    .locals 4

    .line 56
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 57
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyListItem;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/font/FontFamilyListItem;->onSelected(Z)V

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;

    .line 62
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    const-string v0, "Utils.getFactory()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p2

    .line 63
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getCurrentBookLanguage()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v2

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->PUBLISHER_FONT:Lcom/mobipocket/android/drawing/FontFamily;

    if-ne v2, v3, :cond_0

    .line 65
    invoke-virtual {p2, v1}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setSecondaryFontFamily(Lcom/mobipocket/android/drawing/FontFamily;Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p2

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setFontFamily(Lcom/mobipocket/android/drawing/FontFamily;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.amazon.kindle.viewoptions.font.FontFamilyInfo"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void

    .line 57
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.amazon.kindle.viewoptions.font.FontFamilyListItem"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bind(Ljava/lang/Object;I)V
    .locals 3

    .line 38
    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;->bind(Ljava/lang/Object;I)V

    .line 39
    instance-of v0, p1, Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;

    if-eqz v0, :cond_2

    .line 40
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v0

    check-cast p1, Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyViewHolder;->fontGuidanceView:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyViewHolder;->fontNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p1, "fontNameView"

    .line 42
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p1, "fontGuidanceView"

    .line 41
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 45
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, 0x1

    if-ne p2, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/viewoptions/font/FontFamilyViewHolder;->onFontFamilySelected(ZZ)V

    return-void
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-super {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;->initializeView(Landroid/view/View;)V

    .line 30
    sget v0, Lcom/amazon/kindle/krl/R$id;->font_guidance:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyViewHolder;->fontGuidanceView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 33
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 34
    sget v0, Lcom/amazon/kindle/krl/R$id;->font_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyViewHolder;->fontNameView:Landroid/widget/TextView;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "fontGuidanceView"

    .line 33
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onItemViewClick(Ljava/lang/Object;)V
    .locals 2

    .line 49
    sget-object v0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->Companion:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$Companion;

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->FONT_FAMILY:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$Companion;->markPerformanceStartForIdentifier$KindleReaderLibrary_release(I)V

    .line 50
    invoke-super {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;->onItemViewClick(Ljava/lang/Object;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/viewoptions/font/FontFamilyViewHolder;->onFontFamilySelected(ZZ)V

    .line 52
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyViewHolder;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;

    sget-object v1, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;->SETTING_CHANGED:Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;-><init>(Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
