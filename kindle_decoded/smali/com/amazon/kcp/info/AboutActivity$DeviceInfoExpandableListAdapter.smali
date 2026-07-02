.class Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/info/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceInfoExpandableListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/info/AboutActivity;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/info/AboutActivity;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;->this$0:Lcom/amazon/kcp/info/AboutActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/info/AboutActivity;Lcom/amazon/kcp/info/AboutActivity$1;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;-><init>(Lcom/amazon/kcp/info/AboutActivity;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;->this$0:Lcom/amazon/kcp/info/AboutActivity;

    invoke-static {v0}, Lcom/amazon/kcp/info/AboutActivity;->access$100(Lcom/amazon/kcp/info/AboutActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p4, :cond_0

    .line 363
    iget-object p3, p0, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;->this$0:Lcom/amazon/kcp/info/AboutActivity;

    invoke-virtual {p3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lcom/amazon/kindle/librarymodule/R$layout;->about_detail_item:I

    const/4 v0, 0x0

    .line 364
    invoke-virtual {p3, p4, p5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 366
    new-instance p3, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;

    const/4 p5, 0x0

    invoke-direct {p3, p0, p5}, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;-><init>(Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;Lcom/amazon/kcp/info/AboutActivity$1;)V

    .line 367
    sget p5, Lcom/amazon/kindle/librarymodule/R$id;->about_detail_title:I

    .line 368
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p3, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;->detailTitleTextView:Landroid/widget/TextView;

    .line 369
    sget p5, Lcom/amazon/kindle/librarymodule/R$id;->about_detail_value:I

    .line 370
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p3, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;->detailValueTextView:Landroid/widget/TextView;

    .line 372
    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;

    .line 379
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/info/AboutActivity$DetailItem;

    .line 382
    iget-object p2, p3, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;->detailTitleTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 383
    iget-object p5, p1, Lcom/amazon/kcp/info/AboutActivity$DetailItem;->detailTitle:Ljava/lang/String;

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    :cond_1
    iget-object p2, p3, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;->detailValueTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 388
    iget-object p1, p1, Lcom/amazon/kcp/info/AboutActivity$DetailItem;->detailValue:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;->this$0:Lcom/amazon/kcp/info/AboutActivity;

    invoke-static {v0}, Lcom/amazon/kcp/info/AboutActivity;->access$100(Lcom/amazon/kcp/info/AboutActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;->this$0:Lcom/amazon/kcp/info/AboutActivity;

    invoke-static {v0}, Lcom/amazon/kcp/info/AboutActivity;->access$300(Lcom/amazon/kcp/info/AboutActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;->this$0:Lcom/amazon/kcp/info/AboutActivity;

    invoke-static {v0}, Lcom/amazon/kcp/info/AboutActivity;->access$300(Lcom/amazon/kcp/info/AboutActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 437
    iget-object p3, p0, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;->this$0:Lcom/amazon/kcp/info/AboutActivity;

    invoke-virtual {p3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->about_section_item:I

    invoke-virtual {p3, v1, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 440
    new-instance p4, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p4, p0, v1}, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;-><init>(Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;Lcom/amazon/kcp/info/AboutActivity$1;)V

    .line 441
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->about_status_icon:I

    .line 442
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p4, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;->statusIconView:Landroid/widget/ImageView;

    .line 443
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->about_section_title:I

    .line 444
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p4, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;->sectionTitleTextView:Landroid/widget/TextView;

    .line 445
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->expand_about_icon:I

    .line 446
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p4, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;->expandIconView:Landroid/widget/ImageView;

    .line 448
    invoke-virtual {p3, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;

    .line 455
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/info/AboutActivity$GroupItem;

    .line 458
    iget-object v1, p4, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;->statusIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 459
    iget-boolean v2, p1, Lcom/amazon/kcp/info/AboutActivity$GroupItem;->groupStatus:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/amazon/kindle/librarymodule/R$drawable;->ic_alert_success:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/amazon/kindle/librarymodule/R$drawable;->ic_alert_warn:I

    .line 460
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 464
    :cond_2
    iget-object v1, p4, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;->sectionTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 465
    iget-object p1, p1, Lcom/amazon/kcp/info/AboutActivity$GroupItem;->groupTitle:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    :cond_3
    iget-object p1, p4, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;->expandIconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    const/16 v0, 0x8

    .line 470
    :goto_2
    iget-object p1, p4, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;->expandIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
