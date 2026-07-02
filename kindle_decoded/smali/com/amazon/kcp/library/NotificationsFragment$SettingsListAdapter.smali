.class Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/NotificationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/NotificationsFragment;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private createTwoLineCheckBox(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->checkbox_list_item_2:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private populateCheckboxView(Landroid/view/View;Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;)Landroid/view/View;
    .locals 5

    .line 372
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 374
    iget v1, p2, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->text2:I

    if-eqz v1, :cond_0

    .line 375
    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 376
    :cond_0
    iget-object v1, p2, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->textValue2:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 377
    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    :cond_1
    :goto_0
    move-object v1, v0

    check-cast v1, Landroid/widget/Checkable;

    .line 381
    iget-object v2, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    invoke-static {v2, p2, v1}, Lcom/amazon/kcp/library/NotificationsFragment;->access$200(Lcom/amazon/kcp/library/NotificationsFragment;Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;Landroid/widget/Checkable;)V

    .line 383
    iget-object v2, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    invoke-static {v2}, Lcom/amazon/kcp/library/NotificationsFragment;->access$000(Lcom/amazon/kcp/library/NotificationsFragment;)Z

    move-result v2

    .line 384
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 385
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 387
    instance-of v3, v0, Landroid/widget/CompoundButton;

    if-eqz v3, :cond_2

    .line 389
    move-object v3, v0

    check-cast v3, Landroid/widget/CompoundButton;

    const/4 v4, 0x0

    .line 390
    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 391
    invoke-virtual {v3, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 394
    :cond_2
    new-instance v2, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter$1;

    invoke-direct {v2, p0, p2, v1, v0}, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter$1;-><init>(Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;Landroid/widget/Checkable;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-object p1
.end method

.method private populateTextView(Landroid/view/View;Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;)Landroid/view/View;
    .locals 3

    .line 417
    iget v0, p2, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->text1:I

    iget-object v1, p2, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->textValue1:Ljava/lang/String;

    const v2, 0x1020014

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->setTextInView(Landroid/view/View;IILjava/lang/String;)Landroid/view/View;

    .line 418
    iget v0, p2, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->text2:I

    iget-object p2, p2, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->textValue2:Ljava/lang/String;

    const v1, 0x1020015

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->setTextInView(Landroid/view/View;IILjava/lang/String;)Landroid/view/View;

    return-object p1
.end method

.method private populateView(Landroid/view/View;Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;)Landroid/view/View;
    .locals 0

    .line 356
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->populateTextView(Landroid/view/View;Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;)Landroid/view/View;

    .line 358
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->populateCheckboxView(Landroid/view/View;Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;)Landroid/view/View;

    return-object p1
.end method

.method private setTextInView(Landroid/view/View;IILjava/lang/String;)Landroid/view/View;
    .locals 0

    .line 436
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 438
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    .line 440
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    iget-object v0, v0, Lcom/amazon/kcp/library/NotificationsFragment;->settingsItemsValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getId(I)I
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    iget-object v0, v0, Lcom/amazon/kcp/library/NotificationsFragment;->settingsItemsValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;

    iget p1, p1, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->id:I

    return p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    iget-object v0, v0, Lcom/amazon/kcp/library/NotificationsFragment;->settingsItemsValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    iget-object v0, v0, Lcom/amazon/kcp/library/NotificationsFragment;->settingsItemsValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;

    .line 304
    iget-object p1, p1, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->viewType:Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    iget-object v0, v0, Lcom/amazon/kcp/library/NotificationsFragment;->settingsItemsValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;

    if-nez p2, :cond_3

    .line 311
    sget-object p2, Lcom/amazon/kcp/library/NotificationsFragment$3;->$SwitchMap$com$amazon$kcp$library$NotificationsFragment$SettingsViewType:[I

    iget-object v1, v0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->viewType:Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p2, p2, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 323
    iget-object p2, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->simple_list_title:I

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 319
    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->notification_description_page_element:I

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 316
    :cond_1
    invoke-direct {p0, p3}, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->createTwoLineCheckBox(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 313
    :cond_2
    iget-object p2, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->simple_list_title:I

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 329
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->getId(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 331
    invoke-direct {p0, p2, v0}, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->populateView(Landroid/view/View;Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;)Landroid/view/View;

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 298
    invoke-static {}, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;->values()[Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    iget-object v0, v0, Lcom/amazon/kcp/library/NotificationsFragment;->settingsItemsValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;

    .line 454
    iget-object v0, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/NotificationsFragment;->access$000(Lcom/amazon/kcp/library/NotificationsFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 455
    iget-object p1, p1, Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;->viewType:Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    sget-object v0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;->TITLE:Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
