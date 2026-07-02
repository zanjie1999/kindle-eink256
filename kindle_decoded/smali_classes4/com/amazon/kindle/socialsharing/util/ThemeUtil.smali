.class public Lcom/amazon/kindle/socialsharing/util/ThemeUtil;
.super Ljava/lang/Object;
.source "ThemeUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final SHARED_INSTANCES:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/amazon/kindle/krx/ui/ColorMode;",
            "Lcom/amazon/kindle/socialsharing/util/ThemeUtil;",
            ">;"
        }
    .end annotation
.end field

.field private static colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

.field private static specifiedTheme:Ljava/lang/String;


# instance fields
.field private applicationNameTextColor:I

.field private defaultGridItemBackgroundColor:I

.field private dialogBackgroundColor:I

.field private dialogTextTitleColor:I

.field private emptySpaceAlpha:F

.field private gridItemPressedBackgroundColor:I

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->LOG_TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->SHARED_INSTANCES:Ljava/util/EnumMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->resources:Landroid/content/res/Resources;

    .line 109
    sget-object p1, Lcom/amazon/kindle/socialsharing/util/ThemeUtil$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->initWhite()V

    goto :goto_0

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->initGreen()V

    goto :goto_0

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->initSepia()V

    goto :goto_0

    .line 111
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->initBlack()V

    :goto_0
    return-void
.end method

.method public static getSharedInstance()Lcom/amazon/kindle/socialsharing/util/ThemeUtil;
    .locals 2

    .line 58
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->specifiedTheme:Ljava/lang/String;

    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->getSharedInstance(Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getSharedInstance(Landroid/content/Context;)Lcom/amazon/kindle/socialsharing/util/ThemeUtil;
    .locals 5

    const-class v0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->SHARED_INSTANCES:Ljava/util/EnumMap;

    sget-object v2, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    if-nez v1, :cond_0

    const-string v1, "Initializing theme for ColorMode %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 92
    sget-object v4, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    new-instance v1, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    sget-object v2, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-direct {v1, p0, v2}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 94
    sget-object p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->SHARED_INSTANCES:Ljava/util/EnumMap;

    sget-object v2, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getSharedInstance(Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/socialsharing/util/ThemeUtil;
    .locals 1

    const-string v0, "THEME_LIGHT"

    if-nez p0, :cond_0

    move-object p0, v0

    .line 71
    :cond_0
    sput-object p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->specifiedTheme:Ljava/lang/String;

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    sget-object p0, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    sput-object p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    goto :goto_0

    :cond_1
    const-string v0, "THEME_DARK"

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 76
    sget-object p0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    sput-object p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    goto :goto_0

    .line 78
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p0

    sput-object p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 80
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->getSharedInstance(Landroid/content/Context;)Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    move-result-object p0

    return-object p0
.end method

.method private initBlack()V
    .locals 1

    .line 127
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->share_dialog_background_color_black:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->dialogBackgroundColor:I

    .line 128
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->dialog_text_title_color_black:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->dialogTextTitleColor:I

    .line 129
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->application_name_text_color_black:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->applicationNameTextColor:I

    .line 130
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->grid_item_pressed_background_color_black:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->gridItemPressedBackgroundColor:I

    .line 131
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->default_grid_item_background_color:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->defaultGridItemBackgroundColor:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 132
    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->emptySpaceAlpha:F

    return-void
.end method

.method private initGreen()V
    .locals 1

    .line 147
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->share_dialog_background_color_green:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->dialogBackgroundColor:I

    .line 148
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->dialog_text_title_color_green:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->dialogTextTitleColor:I

    .line 149
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->application_name_text_color_green:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->applicationNameTextColor:I

    .line 150
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->grid_item_pressed_background_color_green:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->gridItemPressedBackgroundColor:I

    .line 151
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->default_grid_item_background_color:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->defaultGridItemBackgroundColor:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 152
    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->emptySpaceAlpha:F

    return-void
.end method

.method private initSepia()V
    .locals 1

    .line 137
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->share_dialog_background_color_sepia:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->dialogBackgroundColor:I

    .line 138
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->dialog_text_title_color_sepia:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->dialogTextTitleColor:I

    .line 139
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->application_name_text_color_sepia:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->applicationNameTextColor:I

    .line 140
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->grid_item_pressed_background_color_sepia:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->gridItemPressedBackgroundColor:I

    .line 141
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->default_grid_item_background_color:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->defaultGridItemBackgroundColor:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 142
    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->emptySpaceAlpha:F

    return-void
.end method

.method private initWhite()V
    .locals 1

    .line 157
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->share_dialog_background_color_white:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->dialogBackgroundColor:I

    .line 158
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->dialog_text_title_color_white:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->dialogTextTitleColor:I

    .line 159
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->application_name_text_color_white:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->applicationNameTextColor:I

    .line 160
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->grid_item_pressed_background_color_white:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->gridItemPressedBackgroundColor:I

    .line 161
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$color;->default_grid_item_background_color:I

    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->defaultGridItemBackgroundColor:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 162
    iput v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->emptySpaceAlpha:F

    return-void
.end method


# virtual methods
.method public getApplicationNameTextColor()I
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->applicationNameTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getDefaultGridItemBackgroundColor()I
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->defaultGridItemBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getDialogBackgroundColor()I
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->dialogBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getDialogTextTitleColor()I
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->dialogTextTitleColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getDialogTheme()I
    .locals 2

    .line 191
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    sget-object v1, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 197
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$style;->Theme_Holo_Light_Dialog:I

    goto :goto_0

    .line 194
    :cond_0
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$style;->Theme_Holo_Dialog:I

    :goto_0
    return v0
.end method

.method public getEmptySpaceAlpha()F
    .locals 1

    .line 186
    iget v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->emptySpaceAlpha:F

    return v0
.end method

.method public getGridItemPressedBackgroundColor()I
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->gridItemPressedBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public isDarkThemed()Z
    .locals 1

    .line 209
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/ColorMode;->isDark()Z

    move-result v0

    return v0
.end method
