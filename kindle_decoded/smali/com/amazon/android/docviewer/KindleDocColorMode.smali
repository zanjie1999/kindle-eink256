.class public Lcom/amazon/android/docviewer/KindleDocColorMode;
.super Ljava/lang/Object;
.source "KindleDocColorMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_articleListThemeId:I

.field m_backgroundColor:I

.field private final m_blueHighlightColor:I

.field private final m_bookGutterResourceId:I

.field private final m_bookmarkId:I

.field private final m_buttonBackground:I

.field private final m_definitionContainerBackgroundId:I

.field private final m_dialogInfoIconId:I

.field private final m_iconColor:I

.field private final m_id:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

.field private final m_isDark:Z

.field private final m_linkColor:I

.field m_listItemSeparator:I

.field private final m_metricsName:Ljava/lang/String;

.field private final m_noteColor:I

.field private final m_opaqueSearchHighlightColor:I

.field private final m_orangeHighlightColor:I

.field private final m_pinkHighlightColor:I

.field private final m_rotationLockedId:I

.field private final m_rotationUnlockedId:I

.field private final m_searchBorderColor:I

.field private final m_searchHighlightColor:I

.field private final m_searchUnderlineColor:I

.field private final m_secondaryTextColor:I

.field private final m_selectedIconColor:I

.field private final m_textColor:I

.field m_uiTextColorResId:I

.field private final m_yellowHighlightColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/android/docviewer/KindleDocColorMode;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;IIIIIIIIIIIIIIIIZLjava/lang/String;IIIIIIIII)V
    .locals 2

    move-object v0, p0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 171
    iput-object v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_id:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-object/from16 v1, p19

    .line 172
    iput-object v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_metricsName:Ljava/lang/String;

    move/from16 v1, p20

    .line 173
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_bookmarkId:I

    move/from16 v1, p21

    .line 174
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_rotationLockedId:I

    move/from16 v1, p22

    .line 175
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_rotationUnlockedId:I

    move/from16 v1, p23

    .line 176
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_definitionContainerBackgroundId:I

    move/from16 v1, p24

    .line 177
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_dialogInfoIconId:I

    move/from16 v1, p25

    .line 178
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_articleListThemeId:I

    move v1, p2

    .line 180
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_textColor:I

    move v1, p3

    .line 181
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_secondaryTextColor:I

    move v1, p4

    .line 182
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_uiTextColorResId:I

    move v1, p5

    .line 183
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_backgroundColor:I

    move v1, p6

    .line 184
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_yellowHighlightColor:I

    move v1, p8

    .line 185
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_orangeHighlightColor:I

    move v1, p7

    .line 186
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_blueHighlightColor:I

    move v1, p9

    .line 187
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_pinkHighlightColor:I

    move v1, p10

    .line 188
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_searchBorderColor:I

    move v1, p11

    .line 189
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_searchHighlightColor:I

    move v1, p12

    .line 190
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_opaqueSearchHighlightColor:I

    move v1, p13

    .line 191
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_searchUnderlineColor:I

    move/from16 v1, p14

    .line 192
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_linkColor:I

    move/from16 v1, p15

    .line 193
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_noteColor:I

    move/from16 v1, p16

    .line 194
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_iconColor:I

    move/from16 v1, p17

    .line 195
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_selectedIconColor:I

    move/from16 v1, p18

    .line 196
    iput-boolean v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_isDark:Z

    move/from16 v1, p26

    .line 197
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_bookGutterResourceId:I

    move/from16 v1, p27

    .line 198
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_buttonBackground:I

    move/from16 v1, p28

    .line 199
    iput v1, v0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_listItemSeparator:I

    return-void
.end method

.method public static getInstance(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 209
    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p0

    return-object p0
.end method

.method private isEqual(Lcom/amazon/android/docviewer/KindleDocColorMode;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_metricsName:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_metricsName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_bookmarkId:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_bookmarkId:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_rotationLockedId:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_rotationLockedId:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_rotationUnlockedId:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_rotationUnlockedId:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_definitionContainerBackgroundId:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_definitionContainerBackgroundId:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_dialogInfoIconId:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_dialogInfoIconId:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_articleListThemeId:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_articleListThemeId:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_textColor:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_textColor:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_secondaryTextColor:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_secondaryTextColor:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_uiTextColorResId:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_uiTextColorResId:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_backgroundColor:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_backgroundColor:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_blueHighlightColor:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_blueHighlightColor:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_yellowHighlightColor:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_yellowHighlightColor:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_pinkHighlightColor:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_pinkHighlightColor:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_orangeHighlightColor:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_orangeHighlightColor:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_searchBorderColor:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_searchBorderColor:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_searchUnderlineColor:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_searchUnderlineColor:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_linkColor:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_linkColor:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_noteColor:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_noteColor:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_iconColor:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_iconColor:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_selectedIconColor:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_selectedIconColor:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_bookGutterResourceId:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_bookGutterResourceId:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_isDark:Z

    iget-boolean v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_isDark:Z

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_buttonBackground:I

    iget v2, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_buttonBackground:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_listItemSeparator:I

    iget p1, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_listItemSeparator:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 484
    instance-of v0, p1, Lcom/amazon/android/docviewer/KindleDocColorMode;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/android/docviewer/KindleDocColorMode;

    .line 485
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->isEqual(Lcom/amazon/android/docviewer/KindleDocColorMode;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 314
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_backgroundColor:I

    return v0
.end method

.method public getBlueHighlightColor()I
    .locals 1

    .line 358
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_blueHighlightColor:I

    return v0
.end method

.method public getDialogInfoIconResId()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_dialogInfoIconId:I

    return v0
.end method

.method public getGutterResourceId()I
    .locals 1

    .line 443
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_bookGutterResourceId:I

    return v0
.end method

.method public getHighlightColor(Ljava/lang/String;)I
    .locals 1

    const-string v0, "blue"

    .line 321
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBlueHighlightColor()I

    move-result p1

    return p1

    :cond_0
    const-string/jumbo v0, "orange"

    .line 324
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getOrangeHighlightColor()I

    move-result p1

    return p1

    :cond_1
    const-string/jumbo v0, "pink"

    .line 327
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 328
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getPinkHighlightColor()I

    move-result p1

    return p1

    .line 330
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getYellowHighlightColor()I

    move-result p1

    return p1
.end method

.method public getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_id:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    return-object v0
.end method

.method public getLinkColor()I
    .locals 1

    .line 402
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_linkColor:I

    return v0
.end method

.method public getMetricsName()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_metricsName:Ljava/lang/String;

    return-object v0
.end method

.method public getOpaqueSearchHighlightColor()I
    .locals 1

    .line 395
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_opaqueSearchHighlightColor:I

    return v0
.end method

.method public getOrangeHighlightColor()I
    .locals 1

    .line 344
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_orangeHighlightColor:I

    return v0
.end method

.method public getPinkHighlightColor()I
    .locals 1

    .line 351
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_pinkHighlightColor:I

    return v0
.end method

.method public getRotationLockedResId()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_rotationLockedId:I

    return v0
.end method

.method public getRotationUnlockedResId()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_rotationUnlockedId:I

    return v0
.end method

.method public getSearchHighlightColor()I
    .locals 1

    .line 379
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_searchHighlightColor:I

    return v0
.end method

.method public getSearchUnderlineColor()I
    .locals 1

    .line 372
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_searchUnderlineColor:I

    return v0
.end method

.method public getSecondaryTextColor()I
    .locals 1

    .line 300
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_secondaryTextColor:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_textColor:I

    return v0
.end method

.method public getUiTextColorId()I
    .locals 1

    .line 307
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_uiTextColorResId:I

    return v0
.end method

.method public getYellowHighlightColor()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_yellowHighlightColor:I

    return v0
.end method

.method public hasDarkBackground()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode;->m_isDark:Z

    return v0
.end method
