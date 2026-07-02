.class synthetic Lcom/amazon/startactions/plugin/StartActionsController$3;
.super Ljava/lang/Object;
.source "StartActionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/plugin/StartActionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$readingactions$helpers$IChromeClickHandler$ActionType:[I

.field static final synthetic $SwitchMap$com$amazon$startactions$plugin$StartActionsController$StartActionsEntryPoint:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 614
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->values()[Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/startactions/plugin/StartActionsController$3;->$SwitchMap$com$amazon$startactions$plugin$StartActionsController$StartActionsEntryPoint:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->SRL_OPEN:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/startactions/plugin/StartActionsController$3;->$SwitchMap$com$amazon$startactions$plugin$StartActionsController$StartActionsEntryPoint:[I

    sget-object v3, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->LEFT_NAVIGATION_BAR:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/amazon/startactions/plugin/StartActionsController$3;->$SwitchMap$com$amazon$startactions$plugin$StartActionsController$StartActionsEntryPoint:[I

    sget-object v3, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->BOOK_INFO_BUTTON:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 546
    :catch_2
    invoke-static {}, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;->values()[Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/startactions/plugin/StartActionsController$3;->$SwitchMap$com$amazon$readingactions$helpers$IChromeClickHandler$ActionType:[I

    :try_start_3
    sget-object v3, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;->OPEN_ABOUT_THIS_BOOK:Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/amazon/startactions/plugin/StartActionsController$3;->$SwitchMap$com$amazon$readingactions$helpers$IChromeClickHandler$ActionType:[I

    sget-object v2, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;->OPEN_MENTIONED_IN_THIS_BOOK:Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
