.class public final enum Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;
.super Ljava/lang/Enum;
.source "ColorHighlightProperties.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

.field public static final enum BLUE:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

.field public static final enum ORANGE:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

.field public static final enum PINK:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

.field public static final enum YELLOW:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;


# instance fields
.field private final blackModeColorResId:I

.field private final changeTextResId:I

.field private final colorTitle:Ljava/lang/String;

.field private final createIconResId:I

.field private final createTextResId:I

.field private final deleteIconResId:I

.field private final deleteTextResId:I

.field private final filterIconResId:I

.field private final priorityResId:I

.field private final sepiaModeColorResId:I

.field private final whiteModeColorResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 11
    new-instance v14, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    sget v3, Lcom/amazon/kindle/krl/R$string;->mchl_text_delete:I

    sget v4, Lcom/amazon/kindle/krl/R$string;->mchl_text_create_yellow:I

    sget v5, Lcom/amazon/kindle/krl/R$string;->mchl_text_change_yellow:I

    sget v6, Lcom/amazon/kindle/krl/R$drawable;->mchl_yellow_delete:I

    sget v8, Lcom/amazon/kindle/krl/R$drawable;->mchl_yellow:I

    sget v9, Lcom/amazon/kindle/krl/R$color;->white_mode_highlight:I

    sget v10, Lcom/amazon/kindle/krl/R$color;->black_mode_highlight:I

    sget v11, Lcom/amazon/kindle/krl/R$color;->sepia_mode_highlight:I

    sget v13, Lcom/amazon/kindle/krl/R$integer;->yellow_highlight_selection_button_priority:I

    const-string v1, "YELLOW"

    const/4 v2, 0x0

    const-string/jumbo v12, "yellow"

    move-object v0, v14

    move v7, v8

    invoke-direct/range {v0 .. v13}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;-><init>(Ljava/lang/String;IIIIIIIIIILjava/lang/String;I)V

    sput-object v14, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->YELLOW:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    .line 22
    new-instance v0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    sget v18, Lcom/amazon/kindle/krl/R$string;->mchl_text_delete:I

    sget v19, Lcom/amazon/kindle/krl/R$string;->mchl_text_create_blue:I

    sget v20, Lcom/amazon/kindle/krl/R$string;->mchl_text_change_blue:I

    sget v21, Lcom/amazon/kindle/krl/R$drawable;->mchl_lightblue_delete:I

    sget v23, Lcom/amazon/kindle/krl/R$drawable;->mchl_lightblue:I

    sget v24, Lcom/amazon/kindle/krl/R$color;->white_mode_highlight_blue:I

    sget v25, Lcom/amazon/kindle/krl/R$color;->black_mode_highlight_blue:I

    sget v26, Lcom/amazon/kindle/krl/R$color;->sepia_mode_highlight_blue:I

    sget v28, Lcom/amazon/kindle/krl/R$integer;->blue_highlight_selection_button_priority:I

    const-string v16, "BLUE"

    const/16 v17, 0x1

    const-string v27, "blue"

    move-object v15, v0

    move/from16 v22, v23

    invoke-direct/range {v15 .. v28}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;-><init>(Ljava/lang/String;IIIIIIIIIILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->BLUE:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    .line 33
    new-instance v0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    sget v4, Lcom/amazon/kindle/krl/R$string;->mchl_text_delete:I

    sget v5, Lcom/amazon/kindle/krl/R$string;->mchl_text_create_pink:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->mchl_text_change_pink:I

    sget v7, Lcom/amazon/kindle/krl/R$drawable;->mchl_pink_delete:I

    sget v9, Lcom/amazon/kindle/krl/R$drawable;->mchl_pink:I

    sget v10, Lcom/amazon/kindle/krl/R$color;->white_mode_highlight_pink:I

    sget v11, Lcom/amazon/kindle/krl/R$color;->black_mode_highlight_pink:I

    sget v12, Lcom/amazon/kindle/krl/R$color;->sepia_mode_highlight_pink:I

    sget v14, Lcom/amazon/kindle/krl/R$integer;->pink_highlight_selection_button_priority:I

    const-string v2, "PINK"

    const/4 v3, 0x2

    const-string v13, "pink"

    move-object v1, v0

    move v8, v9

    invoke-direct/range {v1 .. v14}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;-><init>(Ljava/lang/String;IIIIIIIIIILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->PINK:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    .line 44
    new-instance v0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    sget v18, Lcom/amazon/kindle/krl/R$string;->mchl_text_delete:I

    sget v19, Lcom/amazon/kindle/krl/R$string;->mchl_text_create_orange:I

    sget v20, Lcom/amazon/kindle/krl/R$string;->mchl_text_change_orange:I

    sget v21, Lcom/amazon/kindle/krl/R$drawable;->mchl_orange_delete:I

    sget v23, Lcom/amazon/kindle/krl/R$drawable;->mchl_orange:I

    sget v24, Lcom/amazon/kindle/krl/R$color;->white_mode_highlight_orange:I

    sget v25, Lcom/amazon/kindle/krl/R$color;->black_mode_highlight_orange:I

    sget v26, Lcom/amazon/kindle/krl/R$color;->sepia_mode_highlight_orange:I

    sget v28, Lcom/amazon/kindle/krl/R$integer;->orange_highlight_selection_button_priority:I

    const-string v16, "ORANGE"

    const/16 v17, 0x3

    const-string v27, "orange"

    move-object v15, v0

    move/from16 v22, v23

    invoke-direct/range {v15 .. v28}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;-><init>(Ljava/lang/String;IIIIIIIIIILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->ORANGE:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    .line 10
    sget-object v2, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->YELLOW:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->BLUE:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->PINK:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->$VALUES:[Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIIILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIII",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput p3, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->deleteTextResId:I

    .line 81
    iput p4, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->createTextResId:I

    .line 82
    iput p5, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->changeTextResId:I

    .line 83
    iput p6, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->deleteIconResId:I

    .line 84
    iput p7, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->createIconResId:I

    .line 85
    iput p8, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->filterIconResId:I

    .line 86
    iput p9, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->whiteModeColorResId:I

    .line 87
    iput p10, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->blackModeColorResId:I

    .line 88
    iput p11, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->sepiaModeColorResId:I

    .line 89
    iput-object p12, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->colorTitle:Ljava/lang/String;

    .line 90
    iput p13, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->priorityResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->$VALUES:[Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    return-object v0
.end method


# virtual methods
.method public getBlackModeColorResId()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->blackModeColorResId:I

    return v0
.end method

.method public getChangeTextResId()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->changeTextResId:I

    return v0
.end method

.method public getColorHexForColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/Context;)I
    .locals 1

    .line 135
    sget-object v0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties$1;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 144
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getWhiteModeColorResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 140
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getSepiaModeColorResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 138
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getBlackModeColorResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getColorTitle()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->colorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateIconResId()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->createIconResId:I

    return v0
.end method

.method public getCreateTextResId()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->createTextResId:I

    return v0
.end method

.method public getDeleteIconResId()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->deleteIconResId:I

    return v0
.end method

.method public getDeleteTextResId()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->deleteTextResId:I

    return v0
.end method

.method public getPriorityResId()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->priorityResId:I

    return v0
.end method

.method public getSepiaModeColorResId()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->sepiaModeColorResId:I

    return v0
.end method

.method public getWhiteModeColorResId()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->whiteModeColorResId:I

    return v0
.end method
