.class public Lcom/amazon/xray/ui/util/XrayThemeUtil;
.super Ljava/lang/Object;
.source "XrayThemeUtil.java"


# static fields
.field protected static final SHARED_INSTANCES:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/amazon/kindle/krx/ui/ColorMode;",
            "Lcom/amazon/xray/ui/util/XrayThemeUtil;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityTheme:I

.field private captionOverlayColor:I

.field private cardBackground:I

.field private closeQuoteIcon:I

.field private contentBackgroundColor:I

.field private dialogTheme:I

.field private entityIconCharacterLarge:I

.field private entityIconCharacterSmall:I

.field private entityIconTermLarge:I

.field private entityIconTermSmall:I

.field private feedbackDialogEditTextBackground:I

.field private feedbackErrorSelectionTitleDividerBackground:I

.field private headerActions:I

.field private headerBackgroundColor:I

.field private homeAsUpIndicator:I

.field private infoCardBackground:I

.field private infoCardSubtitleColor:I

.field private infoCardTextViewBackground:I

.field private infoCardTitleColor:I

.field private inlineCaretIcon:I

.field private isDarkThemed:Z

.field private listViewBackground:I

.field private openQuoteIcon:I

.field private primaryButtonColors:I

.field private primaryLinkActiveColor:I

.field private primaryLinkColor:I

.field private primaryTextColor:I

.field private refineCaretIcon:I

.field private final resources:Landroid/content/res/Resources;

.field private revealArrowIcon:I

.field private secondaryButtonColors:I

.field private secondaryTextColor:I

.field private separatorColor:I

.field private spoilerOverlayColor:I

.field private tabBackground:I

.field private tabTextColor:I

.field private tertiaryButtonColors:I

.field private timelineBarBackground:I

.field private timelineChapterMarker:I

.field private timelineCrlMarker:I

.field private timelinePassageMarker:I

.field private timelinePositionMarker:I

.field private timelinePositionRangeMarker:I

.field private timelineSpoilerGuardBackground:I

.field private timelineSpoilerGuardCapBackground:I

.field private timelineSpoilerGuardLeftBorder:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->SHARED_INSTANCES:Ljava/util/EnumMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    .line 102
    sget-object p1, Lcom/amazon/xray/ui/util/XrayThemeUtil$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->initWhite()V

    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->initSepia()V

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->initBlack()V

    :goto_0
    return-void
.end method

.method public static getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;
    .locals 3

    .line 124
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 126
    const-class v1, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 127
    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/ui/DarkModeHelper;->isDarkModePhaseEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v1, v2, :cond_0

    .line 129
    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    goto :goto_0

    .line 131
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    goto :goto_0

    .line 134
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v1

    .line 136
    :goto_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getSharedInstance(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)Lcom/amazon/xray/ui/util/XrayThemeUtil;
    .locals 2

    const-class v0, Lcom/amazon/xray/ui/util/XrayThemeUtil;

    monitor-enter v0

    .line 150
    :try_start_0
    sget-object v1, Lcom/amazon/xray/ui/util/XrayThemeUtil;->SHARED_INSTANCES:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/xray/ui/util/XrayThemeUtil;

    if-nez v1, :cond_0

    .line 152
    new-instance v1, Lcom/amazon/xray/ui/util/XrayThemeUtil;

    invoke-direct {v1, p0, p1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 153
    sget-object p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->SHARED_INSTANCES:Ljava/util/EnumMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initBlack()V
    .locals 1

    .line 228
    sget v0, Lcom/amazon/kindle/xray/R$style;->Theme_Xray_Dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->activityTheme:I

    const v0, 0x1030077

    .line 229
    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->dialogTheme:I

    .line 232
    sget v0, Lcom/amazon/kindle/xray/R$color;->xray_content_background_color_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->contentBackgroundColor:I

    .line 233
    sget v0, Lcom/amazon/kindle/xray/R$color;->xray_header_background_color_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->headerBackgroundColor:I

    .line 234
    sget v0, Lcom/amazon/kindle/xray/R$color;->xray_caption_overlay_color_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->captionOverlayColor:I

    .line 235
    sget v0, Lcom/amazon/kindle/xray/R$color;->xray_spoiler_overlay_color_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->spoilerOverlayColor:I

    .line 236
    sget v0, Lcom/amazon/kindle/xray/R$color;->xray_secondary_text_color_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->secondaryTextColor:I

    .line 237
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->c_xray_primary_button_color_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->primaryButtonColors:I

    .line 238
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->c_xray_secondary_button_color_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->secondaryButtonColors:I

    .line 239
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->c_xray_tertiary_button_color_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->tertiaryButtonColors:I

    .line 240
    sget v0, Lcom/amazon/kindle/xray/R$color;->xray_primary_button_color_normal_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->primaryLinkColor:I

    .line 241
    sget v0, Lcom/amazon/kindle/xray/R$color;->xray_button_color_active_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->primaryLinkActiveColor:I

    .line 242
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->c_xray_tab_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->tabTextColor:I

    .line 243
    sget v0, Lcom/amazon/kindle/xray/R$color;->xray_separator_color_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->separatorColor:I

    .line 244
    sget v0, Lcom/amazon/kindle/xray/R$color;->info_card_v2_content_text_color_grey:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->infoCardTitleColor:I

    .line 245
    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->infoCardSubtitleColor:I

    .line 246
    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->primaryTextColor:I

    .line 249
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_tab_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->tabBackground:I

    .line 250
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_card_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->cardBackground:I

    .line 251
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_list_view_border_top_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->listViewBackground:I

    .line 252
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_inline_caret_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->inlineCaretIcon:I

    .line 253
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_refine_caret_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->refineCaretIcon:I

    .line 254
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_reveal_arrow_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->revealArrowIcon:I

    .line 255
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_open_quote_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->openQuoteIcon:I

    .line 256
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_close_quote_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->closeQuoteIcon:I

    .line 257
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_character_small_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->entityIconCharacterSmall:I

    .line 258
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_character_large_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->entityIconCharacterLarge:I

    .line 259
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_term_small_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->entityIconTermSmall:I

    .line 260
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_term_large_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->entityIconTermLarge:I

    .line 261
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_timeline_bar_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelineBarBackground:I

    .line 262
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_timeline_spoiler_guard_left_border_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelineSpoilerGuardLeftBorder:I

    .line 263
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_timeline_spoiler_guard_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelineSpoilerGuardBackground:I

    .line 264
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_timeline_spoiler_guard_cap_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelineSpoilerGuardCapBackground:I

    .line 265
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_timeline_position_marker_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelinePositionMarker:I

    .line 266
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_timeline_position_range_marker_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelinePositionRangeMarker:I

    .line 267
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_timeline_passage_marker_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelinePassageMarker:I

    .line 268
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_timeline_chapter_marker_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelineChapterMarker:I

    .line 269
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_timeline_crl_marker_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelineCrlMarker:I

    .line 270
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_info_card_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->infoCardBackground:I

    .line 271
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_info_card_textbox_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->infoCardTextViewBackground:I

    .line 272
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_feedback_dialog_edit_text_background_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->feedbackDialogEditTextBackground:I

    .line 273
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_back_arrow_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->homeAsUpIndicator:I

    const v0, 0x1080014

    .line 274
    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->feedbackErrorSelectionTitleDividerBackground:I

    .line 277
    sget v0, Lcom/amazon/kindle/xray/R$menu;->xray_header_actions_dark:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->headerActions:I

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->isDarkThemed:Z

    return-void
.end method

.method private initSepia()V
    .locals 1

    .line 286
    invoke-direct {p0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->initWhite()V

    .line 289
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_info_card_sepia:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->infoCardBackground:I

    .line 290
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_info_card_textbox_sepia:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->infoCardTextViewBackground:I

    .line 291
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_info_card_sepia:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->infoCardBackground:I

    return-void
.end method

.method private initWhite()V
    .locals 1

    .line 164
    sget v0, Lcom/amazon/kindle/xray/R$style;->Theme_Xray_Light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->activityTheme:I

    const v0, 0x1030079

    .line 165
    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->dialogTheme:I

    .line 168
    sget v0, Lcom/amazon/kindle/xray/R$color;->xray_content_background_color_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->contentBackgroundColor:I

    .line 169
    sget v0, Lcom/amazon/kindle/xray/R$color;->xray_header_background_color_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->headerBackgroundColor:I

    .line 170
    sget v0, Lcom/amazon/kindle/xray/R$color;->xray_caption_overlay_color_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->captionOverlayColor:I

    .line 171
    sget v0, Lcom/amazon/kindle/xray/R$color;->xray_spoiler_overlay_color_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->spoilerOverlayColor:I

    .line 172
    sget v0, Lcom/amazon/kindle/xray/R$color;->xray_primary_text_color_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->primaryTextColor:I

    .line 173
    sget v0, Lcom/amazon/kindle/xray/R$color;->xray_secondary_text_color_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->secondaryTextColor:I

    .line 174
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->c_xray_primary_button_color_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->primaryButtonColors:I

    .line 175
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->c_xray_secondary_button_color_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->secondaryButtonColors:I

    .line 176
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->c_xray_tertiary_button_color_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->tertiaryButtonColors:I

    .line 177
    sget v0, Lcom/amazon/kindle/xray/R$color;->xray_primary_button_color_normal_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->primaryLinkColor:I

    .line 178
    sget v0, Lcom/amazon/kindle/xray/R$color;->xray_button_color_active_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->primaryLinkActiveColor:I

    .line 179
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->c_xray_tab_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->tabTextColor:I

    .line 180
    sget v0, Lcom/amazon/kindle/xray/R$color;->xray_separator_color_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->separatorColor:I

    .line 181
    sget v0, Lcom/amazon/kindle/xray/R$color;->xray_info_card_title_color_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->infoCardTitleColor:I

    .line 182
    sget v0, Lcom/amazon/kindle/xray/R$color;->xray_info_card_subtitle_color_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->infoCardSubtitleColor:I

    .line 184
    sget v0, Lcom/amazon/kindle/xray/R$color;->info_card_v2_content_text_color_white_mode:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->primaryTextColor:I

    .line 185
    sget v0, Lcom/amazon/kindle/xray/R$color;->info_card_v2_title_text_color_white_mode:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->infoCardTitleColor:I

    .line 186
    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->infoCardSubtitleColor:I

    .line 189
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_tab_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->tabBackground:I

    .line 190
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_card_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->cardBackground:I

    .line 191
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_list_view_border_top_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->listViewBackground:I

    .line 192
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_inline_caret_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->inlineCaretIcon:I

    .line 193
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_refine_caret_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->refineCaretIcon:I

    .line 194
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_reveal_arrow_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->revealArrowIcon:I

    .line 195
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_open_quote_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->openQuoteIcon:I

    .line 196
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_close_quote_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->closeQuoteIcon:I

    .line 197
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_character_small_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->entityIconCharacterSmall:I

    .line 198
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_character_large_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->entityIconCharacterLarge:I

    .line 199
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_term_small_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->entityIconTermSmall:I

    .line 200
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_term_large_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->entityIconTermLarge:I

    .line 201
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_timeline_bar_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelineBarBackground:I

    .line 202
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_timeline_spoiler_guard_left_border_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelineSpoilerGuardLeftBorder:I

    .line 203
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_timeline_spoiler_guard_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelineSpoilerGuardBackground:I

    .line 204
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_timeline_spoiler_guard_cap_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelineSpoilerGuardCapBackground:I

    .line 205
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_timeline_position_marker_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelinePositionMarker:I

    .line 206
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_timeline_position_range_marker_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelinePositionRangeMarker:I

    .line 207
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_timeline_passage_marker_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelinePassageMarker:I

    .line 208
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_timeline_chapter_marker_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelineChapterMarker:I

    .line 209
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_timeline_crl_marker_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelineCrlMarker:I

    .line 210
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_info_card_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->infoCardBackground:I

    .line 211
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_info_card_textbox_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->infoCardTextViewBackground:I

    .line 212
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_xray_feedback_dialog_edit_text_background_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->feedbackDialogEditTextBackground:I

    .line 213
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_back_arrow_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->homeAsUpIndicator:I

    const v0, 0x1080012

    .line 214
    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->feedbackErrorSelectionTitleDividerBackground:I

    .line 215
    sget v0, Lcom/amazon/kindle/xray/R$drawable;->bg_info_card_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->infoCardBackground:I

    .line 218
    sget v0, Lcom/amazon/kindle/xray/R$menu;->xray_header_actions_light:I

    iput v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->headerActions:I

    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->isDarkThemed:Z

    return-void
.end method


# virtual methods
.method public getActivityTheme()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->activityTheme:I

    return v0
.end method

.method public getCaptionOverlayColor()I
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->captionOverlayColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getCardBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->cardBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCloseQuoteIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->closeQuoteIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getContentBackgroundColor()I
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->contentBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getDialogTheme()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->dialogTheme:I

    return v0
.end method

.method public getEntityIconCharacterLarge()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->entityIconCharacterLarge:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getEntityIconCharacterSmall()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->entityIconCharacterSmall:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getEntityIconTermLarge()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->entityIconTermLarge:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getEntityIconTermSmall()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->entityIconTermSmall:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFeedbackDialogEditTextBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->feedbackDialogEditTextBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFeedbackErrorSelectionTitleDividerBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 592
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->feedbackErrorSelectionTitleDividerBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderActions()I
    .locals 1

    .line 599
    iget v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->headerActions:I

    return v0
.end method

.method public getHeaderBackgroundColor()I
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->headerBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getHomeAsUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->homeAsUpIndicator:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getInfoCardBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->infoCardBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getInfoCardSubtitleColor()I
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->infoCardSubtitleColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getInfoCardTextViewBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->infoCardTextViewBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getInfoCardTitleColor()I
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->infoCardTitleColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getInlineCaretIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->inlineCaretIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getListViewBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->listViewBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getOpenQuoteIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->openQuoteIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryButtonColors()Landroid/content/res/ColorStateList;
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->primaryButtonColors:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryLinkActiveColor()I
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->primaryLinkActiveColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getPrimaryLinkColor()I
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->primaryLinkColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getPrimaryTextColor()I
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->primaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getRefineCaretIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->refineCaretIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getRevealArrowIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->revealArrowIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryButtonColors()Landroid/content/res/ColorStateList;
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->secondaryButtonColors:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryTextColor()I
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->secondaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getSeparatorColor()I
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->separatorColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getSpoilerOverlayColor()I
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->spoilerOverlayColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getTabBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->tabBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getTertiaryButtonColors()Landroid/content/res/ColorStateList;
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->tertiaryButtonColors:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getTimelineBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelineBarBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTimelineChapterMarker()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelineChapterMarker:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTimelineCrlMarker()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelineCrlMarker:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTimelinePassageMarker()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelinePassageMarker:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTimelinePositionMarker()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelinePositionMarker:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTimelinePositionRangeMarker()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelinePositionRangeMarker:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTimelineSpoilerGuardBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelineSpoilerGuardBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTimelineSpoilerGuardCapBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelineSpoilerGuardCapBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTimelineSpoilerGuardLeftBorder()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->timelineSpoilerGuardLeftBorder:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isDarkThemed()Z
    .locals 1

    .line 608
    iget-boolean v0, p0, Lcom/amazon/xray/ui/util/XrayThemeUtil;->isDarkThemed:Z

    return v0
.end method
