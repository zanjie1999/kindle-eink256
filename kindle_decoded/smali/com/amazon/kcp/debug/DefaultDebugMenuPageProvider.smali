.class public Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;
.super Ljava/lang/Object;
.source "DefaultDebugMenuPageProvider.java"

# interfaces
.implements Lcom/amazon/kcp/debug/IDebugMenuPageProvider;


# static fields
.field private static final APP_INFO_TITLE:Ljava/lang/String; = "App Info"

.field private static final EPSILON:F = 1.0E-8f

.field private static final LEGACY_TITLE:Ljava/lang/String; = "Legacy Debug Menu"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;Landroid/app/Activity;)Landroid/view/View;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;->buildAppInfoView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;Landroid/app/Activity;)Landroid/view/View;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;->buildLegacyDebugMenu(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private buildAppInfoView(Landroid/app/Activity;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p1

    .line 63
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    invoke-direct/range {p0 .. p1}, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;->buildLegacyDebugMenu(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "To add new pages to this menu, follow the wiki walkthrough at:"

    .line 67
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "https://w.amazon.com/bin/view/KCP/Redding/Development/DebugMenu"

    .line 69
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, -0xffff01

    .line 70
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v4

    or-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 72
    new-instance v4, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$3;

    move-object/from16 v11, p0

    invoke-direct {v4, v11, v0}, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$3;-><init>(Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    const/4 v12, 0x0

    .line 84
    invoke-virtual {v5, v12, v6, v12, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const-string v6, "#B3B3B3"

    .line 85
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 86
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v7

    .line 89
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v5

    .line 91
    invoke-direct/range {p0 .. p1}, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;->getDevicePixelDensity(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    .line 92
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleApplicationController;->getInternalVersionNumber()J

    move-result-wide v8

    .line 93
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string v8, "App version: "

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "Density: "

    .line 97
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-interface {v7}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Device Type: "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-interface {v7}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceModelId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Model ID: "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 104
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v12, "Internal storage path: "

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v0, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$4;

    move-object v12, v5

    move-object v5, v0

    move-object/from16 p1, v6

    move-object/from16 v6, p0

    move-object/from16 v16, v8

    move-object v8, v14

    move-object v11, v9

    move-object/from16 v9, v16

    move-object/from16 v17, v12

    move-object v12, v10

    move-object/from16 v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$4;-><init>(Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;Lcom/amazon/kcp/application/IDeviceInformationProvider;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    .line 127
    invoke-virtual {v0, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    .line 137
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p1

    .line 138
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    .line 139
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private buildLegacyDebugMenu(Landroid/app/Activity;)Landroid/view/View;
    .locals 3

    .line 161
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 163
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "If you find yourself using anything in the legacy menu, please add a new page to the debug menus"

    .line 164
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "Launch Legacy Debug Menu"

    .line 168
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    new-instance v2, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$5;

    invoke-direct {v2, p0, p1, p1}, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$5;-><init>(Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;Landroid/app/Activity;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private getDevicePixelDensity(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 145
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x3f400000    # 0.75f

    sub-float v0, p1, v0

    .line 146
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x322bcc77    # 1.0E-8f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const-string p1, "LDPI"

    return-object p1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    .line 148
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const-string p1, "MDPI"

    return-object p1

    :cond_1
    const/high16 v0, 0x3fc00000    # 1.5f

    sub-float v0, p1, v0

    .line 150
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const-string p1, "HDPI"

    return-object p1

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    sub-float/2addr p1, v0

    .line 152
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    const-string p1, "XHDPI"

    return-object p1

    :cond_3
    const-string p1, "NA"

    return-object p1
.end method


# virtual methods
.method public getDebugMenuPages(Landroid/app/Activity;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    new-instance v1, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$1;-><init>(Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$2;-><init>(Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
