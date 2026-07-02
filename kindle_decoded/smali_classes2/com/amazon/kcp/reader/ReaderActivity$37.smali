.class synthetic Lcom/amazon/kcp/reader/ReaderActivity$37;
.super Ljava/lang/Object;
.source "ReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$android$docviewer$selection$IObjectSelectionModel$SelectionState:[I

.field static final synthetic $SwitchMap$com$amazon$kcp$library$models$BookType:[I

.field static final synthetic $SwitchMap$com$amazon$kcp$reader$IReaderController$StartPagePrompt$Type:[I

.field static final synthetic $SwitchMap$com$amazon$kcp$reader$notebook$notecard$NoteCardUIData$EditResult:[I

.field static final synthetic $SwitchMap$com$amazon$kcp$reader$ui$ReaderLayoutEvent$EventType:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$nln$NonLinearNavigationMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4546
    invoke-static {}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->values()[Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$kindle$nln$NonLinearNavigationMode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$kindle$nln$NonLinearNavigationMode:[I

    sget-object v3, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$kindle$nln$NonLinearNavigationMode:[I

    sget-object v4, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 4335
    :catch_2
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->values()[Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$kcp$reader$ui$ReaderLayoutEvent$EventType:[I

    :try_start_3
    sget-object v4, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_SHOWN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$kcp$reader$ui$ReaderLayoutEvent$EventType:[I

    sget-object v4, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_HIDDEN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$kcp$reader$ui$ReaderLayoutEvent$EventType:[I

    sget-object v4, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->ACTION_BAR_SHOWN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$kcp$reader$ui$ReaderLayoutEvent$EventType:[I

    sget-object v4, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->ACTION_BAR_HIDDEN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 3156
    :catch_6
    invoke-static {}, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;->values()[Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$kcp$reader$notebook$notecard$NoteCardUIData$EditResult:[I

    :try_start_7
    sget-object v4, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;->ADDED:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$kcp$reader$notebook$notecard$NoteCardUIData$EditResult:[I

    sget-object v4, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;->EDITED:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v3, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$kcp$reader$notebook$notecard$NoteCardUIData$EditResult:[I

    sget-object v4, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;->DELETED:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 3003
    :catch_9
    invoke-static {}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->values()[Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$android$docviewer$selection$IObjectSelectionModel$SelectionState:[I

    :try_start_a
    sget-object v3, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CREATING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v2, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$android$docviewer$selection$IObjectSelectionModel$SelectionState:[I

    sget-object v3, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CHANGING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 2461
    :catch_b
    invoke-static {}, Lcom/amazon/kcp/library/models/BookType;->values()[Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    :try_start_c
    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v2, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 1514
    :catch_d
    invoke-static {}, Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;->values()[Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$kcp$reader$IReaderController$StartPagePrompt$Type:[I

    :try_start_e
    sget-object v3, Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;->PAGE:Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v1, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$kcp$reader$IReaderController$StartPagePrompt$Type:[I

    sget-object v2, Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;->LOCATION:Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method
