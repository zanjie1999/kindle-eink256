.class synthetic Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$1;
.super Ljava/lang/Object;
.source "NotebookNoteTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$reader$notebook$NotebookHeaderBar$NotebookFilter:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 190
    invoke-static {}, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->values()[Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$1;->$SwitchMap$com$amazon$kcp$reader$notebook$NotebookHeaderBar$NotebookFilter:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->HIGHLIGHTS_BLUE:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$1;->$SwitchMap$com$amazon$kcp$reader$notebook$NotebookHeaderBar$NotebookFilter:[I

    sget-object v1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->HIGHLIGHTS_ORANGE:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$1;->$SwitchMap$com$amazon$kcp$reader$notebook$NotebookHeaderBar$NotebookFilter:[I

    sget-object v1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->HIGHLIGHTS_PINK:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools$1;->$SwitchMap$com$amazon$kcp$reader$notebook$NotebookHeaderBar$NotebookFilter:[I

    sget-object v1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->HIGHLIGHTS_YELLOW:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
