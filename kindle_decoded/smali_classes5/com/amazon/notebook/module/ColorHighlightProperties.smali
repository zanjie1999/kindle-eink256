.class public final enum Lcom/amazon/notebook/module/ColorHighlightProperties;
.super Ljava/lang/Enum;
.source "ColorHighlightProperties.java"

# interfaces
.implements Lcom/amazon/notebook/module/IColorHighlightProperties;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/notebook/module/ColorHighlightProperties;",
        ">;",
        "Lcom/amazon/notebook/module/IColorHighlightProperties;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/notebook/module/ColorHighlightProperties;

.field public static final enum BLUE:Lcom/amazon/notebook/module/ColorHighlightProperties;

.field public static final enum ORANGE:Lcom/amazon/notebook/module/ColorHighlightProperties;

.field public static final enum PINK:Lcom/amazon/notebook/module/ColorHighlightProperties;

.field public static final enum YELLOW:Lcom/amazon/notebook/module/ColorHighlightProperties;


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

    .line 10
    new-instance v14, Lcom/amazon/notebook/module/ColorHighlightProperties;

    sget v3, Lcom/amazon/notebook/module/R$string;->mchl_text_delete:I

    sget v4, Lcom/amazon/notebook/module/R$string;->mchl_text_create_yellow:I

    sget v5, Lcom/amazon/notebook/module/R$string;->mchl_text_change_yellow:I

    sget v6, Lcom/amazon/notebook/module/R$drawable;->mchl_yellow_delete:I

    sget v8, Lcom/amazon/notebook/module/R$drawable;->notebook_yellow_highlight_oval:I

    sget v11, Lcom/amazon/notebook/module/R$color;->white_mode_highlight:I

    sget v13, Lcom/amazon/notebook/module/R$integer;->yellow_highlight_selection_button_priority:I

    const-string v1, "YELLOW"

    const/4 v2, 0x0

    const-string/jumbo v12, "yellow"

    move-object v0, v14

    move v7, v8

    move v9, v11

    move v10, v11

    invoke-direct/range {v0 .. v13}, Lcom/amazon/notebook/module/ColorHighlightProperties;-><init>(Ljava/lang/String;IIIIIIIIIILjava/lang/String;I)V

    sput-object v14, Lcom/amazon/notebook/module/ColorHighlightProperties;->YELLOW:Lcom/amazon/notebook/module/ColorHighlightProperties;

    .line 21
    new-instance v0, Lcom/amazon/notebook/module/ColorHighlightProperties;

    sget v18, Lcom/amazon/notebook/module/R$string;->mchl_text_delete:I

    sget v19, Lcom/amazon/notebook/module/R$string;->mchl_text_create_blue:I

    sget v20, Lcom/amazon/notebook/module/R$string;->mchl_text_change_blue:I

    sget v21, Lcom/amazon/notebook/module/R$drawable;->mchl_lightblue_delete:I

    sget v23, Lcom/amazon/notebook/module/R$drawable;->notebook_blue_highlight_oval:I

    sget v26, Lcom/amazon/notebook/module/R$color;->white_mode_highlight_blue:I

    sget v28, Lcom/amazon/notebook/module/R$integer;->blue_highlight_selection_button_priority:I

    const-string v16, "BLUE"

    const/16 v17, 0x1

    const-string v27, "blue"

    move-object v15, v0

    move/from16 v22, v23

    move/from16 v24, v26

    move/from16 v25, v26

    invoke-direct/range {v15 .. v28}, Lcom/amazon/notebook/module/ColorHighlightProperties;-><init>(Ljava/lang/String;IIIIIIIIIILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/notebook/module/ColorHighlightProperties;->BLUE:Lcom/amazon/notebook/module/ColorHighlightProperties;

    .line 32
    new-instance v0, Lcom/amazon/notebook/module/ColorHighlightProperties;

    sget v4, Lcom/amazon/notebook/module/R$string;->mchl_text_delete:I

    sget v5, Lcom/amazon/notebook/module/R$string;->mchl_text_create_pink:I

    sget v6, Lcom/amazon/notebook/module/R$string;->mchl_text_change_pink:I

    sget v7, Lcom/amazon/notebook/module/R$drawable;->mchl_pink_delete:I

    sget v9, Lcom/amazon/notebook/module/R$drawable;->notebook_pink_highlight_oval:I

    sget v12, Lcom/amazon/notebook/module/R$color;->white_mode_highlight_pink:I

    sget v14, Lcom/amazon/notebook/module/R$integer;->pink_highlight_selection_button_priority:I

    const-string v2, "PINK"

    const/4 v3, 0x2

    const-string/jumbo v13, "pink"

    move-object v1, v0

    move v8, v9

    move v10, v12

    move v11, v12

    invoke-direct/range {v1 .. v14}, Lcom/amazon/notebook/module/ColorHighlightProperties;-><init>(Ljava/lang/String;IIIIIIIIIILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/notebook/module/ColorHighlightProperties;->PINK:Lcom/amazon/notebook/module/ColorHighlightProperties;

    .line 43
    new-instance v0, Lcom/amazon/notebook/module/ColorHighlightProperties;

    sget v18, Lcom/amazon/notebook/module/R$string;->mchl_text_delete:I

    sget v19, Lcom/amazon/notebook/module/R$string;->mchl_text_create_orange:I

    sget v20, Lcom/amazon/notebook/module/R$string;->mchl_text_change_orange:I

    sget v21, Lcom/amazon/notebook/module/R$drawable;->mchl_orange_delete:I

    sget v23, Lcom/amazon/notebook/module/R$drawable;->notebook_orange_highlight_oval:I

    sget v26, Lcom/amazon/notebook/module/R$color;->white_mode_highlight_orange:I

    sget v28, Lcom/amazon/notebook/module/R$integer;->orange_highlight_selection_button_priority:I

    const-string v16, "ORANGE"

    const/16 v17, 0x3

    const-string/jumbo v27, "orange"

    move-object v15, v0

    move/from16 v22, v23

    move/from16 v24, v26

    move/from16 v25, v26

    invoke-direct/range {v15 .. v28}, Lcom/amazon/notebook/module/ColorHighlightProperties;-><init>(Ljava/lang/String;IIIIIIIIIILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/notebook/module/ColorHighlightProperties;->ORANGE:Lcom/amazon/notebook/module/ColorHighlightProperties;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/amazon/notebook/module/ColorHighlightProperties;

    .line 9
    sget-object v2, Lcom/amazon/notebook/module/ColorHighlightProperties;->YELLOW:Lcom/amazon/notebook/module/ColorHighlightProperties;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/notebook/module/ColorHighlightProperties;->BLUE:Lcom/amazon/notebook/module/ColorHighlightProperties;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/notebook/module/ColorHighlightProperties;->PINK:Lcom/amazon/notebook/module/ColorHighlightProperties;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/notebook/module/ColorHighlightProperties;->$VALUES:[Lcom/amazon/notebook/module/ColorHighlightProperties;

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

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/amazon/notebook/module/ColorHighlightProperties;->deleteTextResId:I

    .line 80
    iput p4, p0, Lcom/amazon/notebook/module/ColorHighlightProperties;->createTextResId:I

    .line 81
    iput p5, p0, Lcom/amazon/notebook/module/ColorHighlightProperties;->changeTextResId:I

    .line 82
    iput p6, p0, Lcom/amazon/notebook/module/ColorHighlightProperties;->deleteIconResId:I

    .line 83
    iput p7, p0, Lcom/amazon/notebook/module/ColorHighlightProperties;->createIconResId:I

    .line 84
    iput p8, p0, Lcom/amazon/notebook/module/ColorHighlightProperties;->filterIconResId:I

    .line 85
    iput p9, p0, Lcom/amazon/notebook/module/ColorHighlightProperties;->whiteModeColorResId:I

    .line 86
    iput p10, p0, Lcom/amazon/notebook/module/ColorHighlightProperties;->blackModeColorResId:I

    .line 87
    iput p11, p0, Lcom/amazon/notebook/module/ColorHighlightProperties;->sepiaModeColorResId:I

    .line 88
    iput-object p12, p0, Lcom/amazon/notebook/module/ColorHighlightProperties;->colorTitle:Ljava/lang/String;

    .line 89
    iput p13, p0, Lcom/amazon/notebook/module/ColorHighlightProperties;->priorityResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/notebook/module/ColorHighlightProperties;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/notebook/module/ColorHighlightProperties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/notebook/module/ColorHighlightProperties;

    return-object p0
.end method

.method public static values()[Lcom/amazon/notebook/module/ColorHighlightProperties;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/notebook/module/ColorHighlightProperties;->$VALUES:[Lcom/amazon/notebook/module/ColorHighlightProperties;

    invoke-virtual {v0}, [Lcom/amazon/notebook/module/ColorHighlightProperties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/notebook/module/ColorHighlightProperties;

    return-object v0
.end method


# virtual methods
.method public getColorTitle()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/amazon/notebook/module/ColorHighlightProperties;->colorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterIconResId()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/amazon/notebook/module/ColorHighlightProperties;->filterIconResId:I

    return v0
.end method

.method public isAnnotationSameColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/amazon/notebook/module/ColorHighlightProperties;->colorTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/notebook/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
