.class public Lcom/amazon/kcp/debug/DebugActivityV2;
.super Landroidx/fragment/app/FragmentActivity;
.source "DebugActivityV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/debug/DebugActivityV2$DebugMenuCollectionPagerAdapter;
    }
.end annotation


# static fields
.field private static final EPSILON:F = 1.0E-8f


# instance fields
.field private final APP_INFO_TITLE:Ljava/lang/String;

.field private final LEGACY_TITLE:Ljava/lang/String;

.field debugMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
            ">;"
        }
    .end annotation
.end field

.field mDebugMenuFragmentAdapter:Lcom/amazon/kcp/debug/DebugActivityV2$DebugMenuCollectionPagerAdapter;

.field mViewPager:Landroidx/viewpager/widget/ViewPager;

.field spinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const-string v0, "App Info"

    .line 60
    iput-object v0, p0, Lcom/amazon/kcp/debug/DebugActivityV2;->APP_INFO_TITLE:Ljava/lang/String;

    const-string v0, "Legacy Debug Menu"

    .line 61
    iput-object v0, p0, Lcom/amazon/kcp/debug/DebugActivityV2;->LEGACY_TITLE:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/debug/DebugActivityV2;)Landroid/view/View;
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DebugActivityV2;->buildAppInfoView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/debug/DebugActivityV2;)Landroid/view/View;
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DebugActivityV2;->buildLegacyDebugMenu()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private buildAppInfoView()Landroid/view/View;
    .locals 19

    move-object/from16 v6, p0

    .line 215
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 216
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 217
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kcp/debug/DebugActivityV2;->buildLegacyDebugMenu()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "To add new pages to this menu, follow the wiki walkthrough at:"

    .line 219
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "https://w.amazon.com/bin/view/KCP/Redding/Development/DebugMenu"

    .line 221
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, -0xffff01

    .line 222
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 224
    new-instance v0, Lcom/amazon/kcp/debug/DebugActivityV2$7;

    invoke-direct {v0, v6, v6}, Lcom/amazon/kcp/debug/DebugActivityV2$7;-><init>(Lcom/amazon/kcp/debug/DebugActivityV2;Landroid/content/Context;)V

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 232
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    const/4 v11, 0x0

    .line 236
    invoke-virtual {v0, v11, v1, v11, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const-string v1, "#B3B3B3"

    .line 237
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 238
    invoke-virtual {v10, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v2

    .line 241
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    .line 243
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kcp/debug/DebugActivityV2;->getDevicePixelDensity()Ljava/lang/String;

    move-result-object v1

    .line 244
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 246
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getInternalVersionNumber()J

    move-result-wide v3

    .line 245
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "App version: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 248
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "Density: "

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 251
    invoke-interface {v2}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device Type: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 253
    invoke-interface {v2}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceModelId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Model ID: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 255
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 256
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v11, "Internal storage path: "

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    new-instance v11, Lcom/amazon/kcp/debug/DebugActivityV2$8;

    move-object v0, v11

    move-object v6, v1

    move-object/from16 v1, p0

    move-object/from16 v16, v3

    move-object v3, v13

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/debug/DebugActivityV2$8;-><init>(Lcom/amazon/kcp/debug/DebugActivityV2;Lcom/amazon/kcp/application/IDeviceInformationProvider;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 279
    invoke-virtual {v11, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 281
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    .line 289
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    .line 290
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    .line 291
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v7
.end method

.method private buildLegacyDebugMenu()Landroid/view/View;
    .locals 3

    .line 194
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 195
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 196
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "If you find yourself using anything in the legacy menu, please add a new page to the debug menus"

    .line 197
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "Launch Legacy Debug Menu"

    .line 201
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 202
    new-instance v2, Lcom/amazon/kcp/debug/DebugActivityV2$6;

    invoke-direct {v2, p0, p0}, Lcom/amazon/kcp/debug/DebugActivityV2$6;-><init>(Lcom/amazon/kcp/debug/DebugActivityV2;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private getDevicePixelDensity()Ljava/lang/String;
    .locals 3

    .line 297
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x3f400000    # 0.75f

    sub-float v1, v0, v1

    .line 298
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x322bcc77    # 1.0E-8f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const-string v0, "LDPI"

    return-object v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    .line 300
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const-string v0, "MDPI"

    return-object v0

    :cond_1
    const/high16 v1, 0x3fc00000    # 1.5f

    sub-float v1, v0, v1

    .line 302
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const-string v0, "HDPI"

    return-object v0

    :cond_2
    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v0, v1

    .line 304
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    const-string v0, "XHDPI"

    return-object v0

    :cond_3
    const-string v0, "NA"

    return-object v0
.end method

.method private loadDefaultDebugMenus()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivityV2;->debugMenus:Ljava/util/List;

    new-instance v1, Lcom/amazon/kcp/debug/DebugActivityV2$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/debug/DebugActivityV2$4;-><init>(Lcom/amazon/kcp/debug/DebugActivityV2;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivityV2;->debugMenus:Ljava/util/List;

    new-instance v1, Lcom/amazon/kcp/debug/DebugActivityV2$5;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/debug/DebugActivityV2$5;-><init>(Lcom/amazon/kcp/debug/DebugActivityV2;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivityV2;->debugMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;

    .line 169
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 71
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isReleaseBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 75
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2;->debugMenus:Ljava/util/List;

    .line 76
    sget p1, Lcom/amazon/kindle/krl/R$layout;->debug_screen_v2:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 77
    const-class p1, Lcom/amazon/kcp/debug/IDebugMenuPageProvider;

    invoke-static {p1}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/debug/IDebugMenuPageProvider;

    .line 78
    invoke-interface {v0, p0}, Lcom/amazon/kcp/debug/IDebugMenuPageProvider;->getDebugMenuPages(Landroid/app/Activity;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivityV2;->debugMenus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 83
    :cond_2
    sget p1, Lcom/amazon/kindle/krl/R$id;->spinner:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2;->spinner:Landroid/widget/Spinner;

    .line 84
    new-instance v0, Lcom/amazon/kcp/debug/DebugActivityV2$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugActivityV2$1;-><init>(Lcom/amazon/kcp/debug/DebugActivityV2;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 94
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2;->debugMenus:Ljava/util/List;

    new-instance v0, Lcom/amazon/kcp/debug/DebugActivityV2$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugActivityV2$2;-><init>(Lcom/amazon/kcp/debug/DebugActivityV2;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 105
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2;->spinner:Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    sget v1, Lcom/amazon/kindle/krl/R$layout;->debugv2_spinner_items:I

    invoke-virtual {p0}, Lcom/amazon/kcp/debug/DebugActivityV2;->getNames()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 106
    new-instance p1, Lcom/amazon/kcp/debug/DebugActivityV2$DebugMenuCollectionPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/amazon/kcp/debug/DebugActivityV2$DebugMenuCollectionPagerAdapter;-><init>(Lcom/amazon/kcp/debug/DebugActivityV2;Landroidx/fragment/app/FragmentManager;)V

    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2;->mDebugMenuFragmentAdapter:Lcom/amazon/kcp/debug/DebugActivityV2$DebugMenuCollectionPagerAdapter;

    .line 109
    sget p1, Lcom/amazon/kindle/krl/R$id;->pager:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivityV2;->mDebugMenuFragmentAdapter:Lcom/amazon/kcp/debug/DebugActivityV2$DebugMenuCollectionPagerAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 111
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/amazon/kcp/debug/DebugActivityV2$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugActivityV2$3;-><init>(Lcom/amazon/kcp/debug/DebugActivityV2;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 134
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 135
    const-class v0, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenterActivityRegistry;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenterActivityRegistry;

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0, p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenterActivityRegistry;->deregisterActivity(Landroidx/fragment/app/FragmentActivity;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 122
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 123
    const-class v0, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenterActivityRegistry;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenterActivityRegistry;

    if-eqz v0, :cond_0

    .line 125
    sget v1, Lcom/amazon/kindle/krl/R$id;->bottom_sheet_fragment:I

    invoke-interface {v0, p0, v1}, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenterActivityRegistry;->registerActivity(Landroidx/fragment/app/FragmentActivity;I)V

    .line 127
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isReleaseBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
