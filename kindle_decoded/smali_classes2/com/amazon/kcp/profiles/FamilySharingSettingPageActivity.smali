.class public final Lcom/amazon/kcp/profiles/FamilySharingSettingPageActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "FamilySharingSettingPageActivity.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method private final getProfiles()Ljava/util/ArrayList;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/profiles/Profile;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v10, Lcom/amazon/ksdk/profiles/Profile;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 59
    sget-object v5, Lcom/amazon/ksdk/profiles/AvatarStatus;->AVAILABLE:Lcom/amazon/ksdk/profiles/AvatarStatus;

    .line 60
    sget-object v8, Lcom/amazon/ksdk/profiles/ProfileRoleType;->ADULT:Lcom/amazon/ksdk/profiles/ProfileRoleType;

    sget-object v9, Lcom/amazon/ksdk/profiles/ProfileStatusType;->ACTIVE:Lcom/amazon/ksdk/profiles/ProfileStatusType;

    const-string v1, "Jane"

    const-string v3, "mAvatarUri1"

    const-string v4, "mAvatarPath1"

    const-string v6, "mHouseholdId1"

    const-string v7, "mProfileCid1"

    move-object v0, v10

    .line 58
    invoke-direct/range {v0 .. v9}, Lcom/amazon/ksdk/profiles/Profile;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ksdk/profiles/AvatarStatus;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ksdk/profiles/ProfileRoleType;Lcom/amazon/ksdk/profiles/ProfileStatusType;)V

    .line 62
    new-instance v0, Lcom/amazon/ksdk/profiles/Profile;

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 63
    sget-object v16, Lcom/amazon/ksdk/profiles/AvatarStatus;->AVAILABLE:Lcom/amazon/ksdk/profiles/AvatarStatus;

    .line 64
    sget-object v19, Lcom/amazon/ksdk/profiles/ProfileRoleType;->ADULT:Lcom/amazon/ksdk/profiles/ProfileRoleType;

    sget-object v20, Lcom/amazon/ksdk/profiles/ProfileStatusType;->ACTIVE:Lcom/amazon/ksdk/profiles/ProfileStatusType;

    const-string v12, "John"

    const-string v14, "mAvatarUri2"

    const-string v15, "mAvatarPath2"

    const-string v17, "mHouseholdId2"

    const-string v18, "mProfileCid2"

    move-object v11, v0

    .line 62
    invoke-direct/range {v11 .. v20}, Lcom/amazon/ksdk/profiles/Profile;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ksdk/profiles/AvatarStatus;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ksdk/profiles/ProfileRoleType;Lcom/amazon/ksdk/profiles/ProfileStatusType;)V

    .line 66
    new-instance v1, Lcom/amazon/ksdk/profiles/Profile;

    new-instance v23, Ljava/util/Date;

    invoke-direct/range {v23 .. v23}, Ljava/util/Date;-><init>()V

    .line 67
    sget-object v26, Lcom/amazon/ksdk/profiles/AvatarStatus;->AVAILABLE:Lcom/amazon/ksdk/profiles/AvatarStatus;

    .line 68
    sget-object v29, Lcom/amazon/ksdk/profiles/ProfileRoleType;->CHILD:Lcom/amazon/ksdk/profiles/ProfileRoleType;

    sget-object v30, Lcom/amazon/ksdk/profiles/ProfileStatusType;->ACTIVE:Lcom/amazon/ksdk/profiles/ProfileStatusType;

    const-string v22, "Ann"

    const-string v24, "mAvatarUri2"

    const-string v25, "mAvatarPath2"

    const-string v27, "mHouseholdId2"

    const-string v28, "mProfileCid2"

    move-object/from16 v21, v1

    .line 66
    invoke-direct/range {v21 .. v30}, Lcom/amazon/ksdk/profiles/Profile;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ksdk/profiles/AvatarStatus;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ksdk/profiles/ProfileRoleType;Lcom/amazon/ksdk/profiles/ProfileStatusType;)V

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/amazon/ksdk/profiles/Profile;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 70
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private final sharedProfilesViewOnTouchListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 74
    new-instance v0, Lcom/amazon/kcp/profiles/FamilySharingSettingPageActivity$sharedProfilesViewOnTouchListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/profiles/FamilySharingSettingPageActivity$sharedProfilesViewOnTouchListener$1;-><init>(Lcom/amazon/kcp/profiles/FamilySharingSettingPageActivity;)V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 20
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget p1, Lcom/amazon/kcp/profiles/R$layout;->activity_family_sharing_setting_page:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    sget v0, Lcom/amazon/kcp/profiles/R$string;->more_item_family_sharing:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 29
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/profiles/FamilySharingSettingPageActivity;->getProfiles()Ljava/util/ArrayList;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ksdk/profiles/Profile;

    .line 32
    sget v1, Lcom/amazon/kcp/profiles/R$id;->profile:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/amazon/kcp/profiles/R$layout;->profile_element:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v3, "layoutInflater.inflate(R\u2026ut.profile_element, null)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/amazon/kcp/profiles/FamilySharingSettingPageActivity;->sharedProfilesViewOnTouchListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    sget v3, Lcom/amazon/kcp/profiles/R$id;->profile_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "profile"

    .line 38
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/ksdk/profiles/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v0}, Lcom/amazon/ksdk/profiles/Profile;->getRoleType()Lcom/amazon/ksdk/profiles/ProfileRoleType;

    move-result-object v0

    sget-object v3, Lcom/amazon/ksdk/profiles/ProfileRoleType;->CHILD:Lcom/amazon/ksdk/profiles/ProfileRoleType;

    if-ne v0, v3, :cond_2

    .line 43
    sget v0, Lcom/amazon/kcp/profiles/R$id;->share_future_purchases_text:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    sget v3, Lcom/amazon/kcp/profiles/R$string;->future_purchases_child:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const/4 v3, 0x0

    .line 45
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 48
    sget v0, Lcom/amazon/kcp/profiles/R$id;->share_future_purchases_switch:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    const/4 v3, 0x4

    .line 49
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 52
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    return-void
.end method
