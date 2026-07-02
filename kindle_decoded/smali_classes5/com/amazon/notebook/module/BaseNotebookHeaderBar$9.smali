.class synthetic Lcom/amazon/notebook/module/BaseNotebookHeaderBar$9;
.super Ljava/lang/Object;
.source "BaseNotebookHeaderBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/BaseNotebookHeaderBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$notebook$module$ColorHighlightProperties:[I

.field static final synthetic $SwitchMap$com$amazon$notebook$module$NotebookFilter:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 915
    invoke-static {}, Lcom/amazon/notebook/module/NotebookFilter;->values()[Lcom/amazon/notebook/module/NotebookFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$9;->$SwitchMap$com$amazon$notebook$module$NotebookFilter:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/notebook/module/NotebookFilter;->BOOKMARKS:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$9;->$SwitchMap$com$amazon$notebook$module$NotebookFilter:[I

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$9;->$SwitchMap$com$amazon$notebook$module$NotebookFilter:[I

    sget-object v4, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_BLUE:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$9;->$SwitchMap$com$amazon$notebook$module$NotebookFilter:[I

    sget-object v5, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_ORANGE:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$9;->$SwitchMap$com$amazon$notebook$module$NotebookFilter:[I

    sget-object v5, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_PINK:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$9;->$SwitchMap$com$amazon$notebook$module$NotebookFilter:[I

    sget-object v5, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_YELLOW:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    aput v6, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$9;->$SwitchMap$com$amazon$notebook$module$NotebookFilter:[I

    sget-object v5, Lcom/amazon/notebook/module/NotebookFilter;->NOTES:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x7

    aput v6, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$9;->$SwitchMap$com$amazon$notebook$module$NotebookFilter:[I

    sget-object v5, Lcom/amazon/notebook/module/NotebookFilter;->STARRED:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0x8

    aput v6, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$9;->$SwitchMap$com$amazon$notebook$module$NotebookFilter:[I

    sget-object v5, Lcom/amazon/notebook/module/NotebookFilter;->POPULAR_HIGHLIGHT:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0x9

    aput v6, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 161
    :catch_8
    invoke-static {}, Lcom/amazon/notebook/module/ColorHighlightProperties;->values()[Lcom/amazon/notebook/module/ColorHighlightProperties;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$9;->$SwitchMap$com$amazon$notebook$module$ColorHighlightProperties:[I

    :try_start_9
    sget-object v5, Lcom/amazon/notebook/module/ColorHighlightProperties;->YELLOW:Lcom/amazon/notebook/module/ColorHighlightProperties;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$9;->$SwitchMap$com$amazon$notebook$module$ColorHighlightProperties:[I

    sget-object v4, Lcom/amazon/notebook/module/ColorHighlightProperties;->PINK:Lcom/amazon/notebook/module/ColorHighlightProperties;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$9;->$SwitchMap$com$amazon$notebook$module$ColorHighlightProperties:[I

    sget-object v1, Lcom/amazon/notebook/module/ColorHighlightProperties;->ORANGE:Lcom/amazon/notebook/module/ColorHighlightProperties;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$9;->$SwitchMap$com$amazon$notebook$module$ColorHighlightProperties:[I

    sget-object v1, Lcom/amazon/notebook/module/ColorHighlightProperties;->BLUE:Lcom/amazon/notebook/module/ColorHighlightProperties;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method
