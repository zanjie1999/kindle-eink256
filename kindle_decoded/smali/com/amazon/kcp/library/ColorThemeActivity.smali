.class public Lcom/amazon/kcp/library/ColorThemeActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "ColorThemeActivity.java"


# static fields
.field private static final BUTTON_ID_DARK:I

.field private static final BUTTON_ID_FOLLOW_SYSTEM:I

.field private static final BUTTON_ID_LIGHT:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kcp/library/ColorThemeActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/ColorThemeActivity;->TAG:Ljava/lang/String;

    .line 27
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->button_theme_light:I

    sput v0, Lcom/amazon/kcp/library/ColorThemeActivity;->BUTTON_ID_LIGHT:I

    .line 29
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->button_theme_dark:I

    sput v0, Lcom/amazon/kcp/library/ColorThemeActivity;->BUTTON_ID_DARK:I

    .line 31
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->button_follow_system:I

    sput v0, Lcom/amazon/kcp/library/ColorThemeActivity;->BUTTON_ID_FOLLOW_SYSTEM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 23
    sget v0, Lcom/amazon/kcp/library/ColorThemeActivity;->BUTTON_ID_LIGHT:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 23
    sget v0, Lcom/amazon/kcp/library/ColorThemeActivity;->BUTTON_ID_DARK:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 23
    sget v0, Lcom/amazon/kcp/library/ColorThemeActivity;->BUTTON_ID_FOLLOW_SYSTEM:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kcp/library/ColorThemeActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initRadioGroup()V
    .locals 4

    .line 41
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->theme_radio_group:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 42
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 45
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 46
    :cond_1
    sget v2, Lcom/amazon/kcp/library/ColorThemeActivity;->BUTTON_ID_FOLLOW_SYSTEM:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :cond_2
    sget-object v2, Lcom/amazon/kcp/library/ColorThemeActivity$2;->$SwitchMap$com$amazon$kindle$krx$theme$AppTheme:[I

    invoke-interface {v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getAppTheme()Lcom/amazon/kindle/krx/theme/AppTheme;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 60
    sget-object v2, Lcom/amazon/kcp/library/ColorThemeActivity;->TAG:Ljava/lang/String;

    const-string v3, "No theme has been selected"

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :cond_3
    sget v2, Lcom/amazon/kcp/library/ColorThemeActivity;->BUTTON_ID_FOLLOW_SYSTEM:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    .line 54
    :cond_4
    sget v2, Lcom/amazon/kcp/library/ColorThemeActivity;->BUTTON_ID_DARK:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    .line 51
    :cond_5
    sget v2, Lcom/amazon/kcp/library/ColorThemeActivity;->BUTTON_ID_LIGHT:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 64
    :goto_1
    new-instance v2, Lcom/amazon/kcp/library/ColorThemeActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/amazon/kcp/library/ColorThemeActivity$1;-><init>(Lcom/amazon/kcp/library/ColorThemeActivity;Lcom/amazon/kindle/krx/theme/IThemeManager;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->color_theme_screen:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcom/amazon/kcp/library/ColorThemeActivity;->initRadioGroup()V

    return-void
.end method
