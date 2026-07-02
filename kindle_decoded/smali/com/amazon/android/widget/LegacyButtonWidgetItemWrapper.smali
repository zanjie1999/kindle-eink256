.class public final Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;
.super Lcom/amazon/android/widget/items/AbstractReaderActionCommandItem;
.source "LegacyButtonWidgetItemWrapper.kt"


# instance fields
.field private final FLASHCARDS_BUTTON_IDENTIFIER:Ljava/lang/String;

.field private final NO_OVERRIDE_DRAWABLE:I

.field private final OVERRIDE_NO_DRAWABLE:I

.field private final book:Lcom/amazon/kindle/krx/content/IBook;

.field private final button:Lcom/amazon/kindle/krx/ui/IButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation
.end field

.field private final buttonIdentifier:Ljava/lang/String;

.field private final colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

.field private final displayPreference:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

.field private final displayState:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

.field private final drawableId:I

.field private final isAudibleButton:Z

.field private final priority:I

.field private final resId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/ui/IButton;Lcom/amazon/kindle/krx/content/IBook;ILandroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "I",
            "Landroid/content/Context;",
            "Lcom/amazon/kindle/krx/ui/ColorMode;",
            ")V"
        }
    .end annotation

    const-string v0, "button"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "book"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorMode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lcom/amazon/android/widget/items/AbstractReaderActionCommandItem;-><init>(Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->button:Lcom/amazon/kindle/krx/ui/IButton;

    iput-object p2, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->book:Lcom/amazon/kindle/krx/content/IBook;

    iput-object p5, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->OVERRIDE_NO_DRAWABLE:I

    const-string p1, "FlashcardsButton"

    .line 50
    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->FLASHCARDS_BUTTON_IDENTIFIER:Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p2}, Lcom/amazon/android/widget/items/AbstractReaderActionCommandItem;->isYJOP(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p2

    .line 54
    iget-object p5, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {p5}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object p5

    sget-object v1, Lcom/amazon/kindle/krx/content/BookFormat;->MOP:Lcom/amazon/kindle/krx/content/BookFormat;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p5, v1, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v1

    sget-object v4, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->TEXTBOOK:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 58
    :goto_1
    iget-object v4, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->button:Lcom/amazon/kindle/krx/ui/IButton;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "wrappedItemClass"

    .line 60
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const-string v6, "FlashcardsPlugin"

    invoke-static {v4, v6, v3, v5, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 62
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p3

    if-eqz p3, :cond_2

    sget p2, Lcom/amazon/kindle/krl/R$integer;->newtron_command_bar_flashcards:I

    goto :goto_3

    :cond_2
    if-nez p2, :cond_5

    if-eqz p5, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 64
    sget p2, Lcom/amazon/kindle/krl/R$integer;->command_bar_flashcards_textbook:I

    goto :goto_3

    .line 65
    :cond_4
    sget p2, Lcom/amazon/kindle/krl/R$integer;->command_bar_flashcards:I

    goto :goto_3

    .line 63
    :cond_5
    :goto_2
    sget p2, Lcom/amazon/kindle/krl/R$integer;->command_bar_flashcards_yjop_mop:I

    .line 67
    :goto_3
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->priority:I

    .line 68
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 69
    sget-object p2, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    goto :goto_4

    .line 71
    :cond_6
    sget-object p2, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->NO_PREFERENCE:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    .line 68
    :goto_4
    iput-object p2, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayPreference:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    .line 73
    sget p2, Lcom/amazon/kindle/krl/R$drawable;->ic_flashcards_button:I

    iput p2, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->drawableId:I

    .line 74
    sget p2, Lcom/amazon/kindle/krl/R$id;->menuitem_flashcards:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->resId:Ljava/lang/Integer;

    .line 75
    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->buttonIdentifier:Ljava/lang/String;

    .line 76
    iput-boolean v3, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->isAudibleButton:Z

    .line 77
    sget-object p1, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->ENABLED:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayState:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    goto/16 :goto_f

    :cond_7
    const-string p1, "ShareProgressButton"

    .line 79
    invoke-static {v4, p1, v3, v5, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 81
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_8

    sget p1, Lcom/amazon/kindle/krl/R$integer;->newtron_command_bar_share_progress:I

    goto :goto_5

    .line 82
    :cond_8
    sget p1, Lcom/amazon/kindle/krl/R$integer;->command_bar_share_progress:I

    .line 84
    :goto_5
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->priority:I

    .line 85
    sget-object p1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayPreference:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    .line 86
    iget p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->OVERRIDE_NO_DRAWABLE:I

    iput p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->drawableId:I

    .line 87
    iput-object v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->resId:Ljava/lang/Integer;

    .line 88
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$string;->menu_item_share_progress_identifier:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->buttonIdentifier:Ljava/lang/String;

    .line 89
    iput-boolean v3, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->isAudibleButton:Z

    .line 90
    sget-object p1, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->ENABLED:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayState:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    goto/16 :goto_f

    :cond_9
    const-string p1, "Doubletime"

    .line 92
    invoke-static {v4, p1, v3, v5, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 94
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_a

    sget p1, Lcom/amazon/kindle/krl/R$integer;->newtron_command_bar_wordrunner:I

    goto :goto_6

    .line 95
    :cond_a
    sget p1, Lcom/amazon/kindle/krl/R$integer;->command_bar_word_runner:I

    .line 97
    :goto_6
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->priority:I

    .line 98
    sget-object p1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayPreference:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    .line 99
    iget p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->NO_OVERRIDE_DRAWABLE:I

    iput p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->drawableId:I

    .line 100
    iput-object v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->resId:Ljava/lang/Integer;

    .line 101
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$string;->menu_item_word_runner_identifier:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->buttonIdentifier:Ljava/lang/String;

    .line 102
    iput-boolean v3, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->isAudibleButton:Z

    .line 103
    invoke-virtual {p0}, Lcom/amazon/android/widget/items/AbstractReaderActionCommandItem;->isInContinuouScroll()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->DISABLED:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    goto :goto_7

    :cond_b
    sget-object p1, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->ENABLED:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    :goto_7
    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayState:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    goto/16 :goto_f

    :cond_c
    const-string p1, "WordWiseButton"

    .line 105
    invoke-static {v4, p1, v3, v5, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 106
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$integer;->command_bar_word_wise:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->priority:I

    .line 107
    sget-object p1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayPreference:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    .line 108
    iget p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->NO_OVERRIDE_DRAWABLE:I

    iput p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->drawableId:I

    .line 109
    iput-object v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->resId:Ljava/lang/Integer;

    .line 110
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$string;->menu_item_word_wise_identifier:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->buttonIdentifier:Ljava/lang/String;

    .line 111
    iput-boolean v3, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->isAudibleButton:Z

    .line 112
    sget-object p1, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->DISABLED_MESSAGE:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayState:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    goto/16 :goto_f

    :cond_d
    const-string p1, "XrayButton"

    .line 114
    invoke-static {v4, p1, v3, v5, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    const-string p1, "KindleLearningObjectPlugin"

    .line 115
    invoke-static {v4, p1, v3, v5, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto/16 :goto_b

    :cond_e
    const-string p1, "ShareBookButton"

    .line 134
    invoke-static {v4, p1, v3, v5, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 136
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_f

    sget p1, Lcom/amazon/kindle/krl/R$integer;->newtron_command_bar_recommend_this_book:I

    goto :goto_9

    :cond_f
    if-nez p2, :cond_12

    if-eqz p5, :cond_10

    goto :goto_8

    :cond_10
    if-eqz v1, :cond_11

    .line 138
    sget p1, Lcom/amazon/kindle/krl/R$integer;->command_bar_share_book_textbook:I

    goto :goto_9

    .line 139
    :cond_11
    sget p1, Lcom/amazon/kindle/krl/R$integer;->command_bar_share_book:I

    goto :goto_9

    .line 137
    :cond_12
    :goto_8
    sget p1, Lcom/amazon/kindle/krl/R$integer;->command_bar_share_book_yjop_mop:I

    .line 141
    :goto_9
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->priority:I

    .line 142
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 143
    sget-object p1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    goto :goto_a

    .line 145
    :cond_13
    sget-object p1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->NO_PREFERENCE:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    .line 142
    :goto_a
    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayPreference:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    .line 147
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_sharing_button:I

    iput p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->drawableId:I

    .line 148
    sget p1, Lcom/amazon/kindle/krl/R$id;->menuitem_share:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->resId:Ljava/lang/Integer;

    .line 149
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$string;->menu_item_recommend_this_book_identifier:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->buttonIdentifier:Ljava/lang/String;

    .line 150
    iput-boolean v3, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->isAudibleButton:Z

    .line 151
    sget-object p1, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->ENABLED:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayState:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    goto/16 :goto_f

    :cond_14
    const-string p1, "SleepTimerButton"

    .line 154
    invoke-static {v4, p1, v3, v5, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 155
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$integer;->command_bar_sleep_timer:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->priority:I

    .line 156
    sget-object p1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->NO_PREFERENCE:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayPreference:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    .line 157
    iget p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->NO_OVERRIDE_DRAWABLE:I

    iput p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->drawableId:I

    .line 158
    iput-object v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->resId:Ljava/lang/Integer;

    .line 159
    iput-object v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->buttonIdentifier:Ljava/lang/String;

    .line 160
    iput-boolean v2, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->isAudibleButton:Z

    .line 161
    sget-object p1, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->ENABLED:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayState:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    goto/16 :goto_f

    :cond_15
    const-string p1, "MainPlayerNarrationSpeedButton"

    .line 163
    invoke-static {v4, p1, v3, v5, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 164
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$integer;->command_bar_narration_speed:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->priority:I

    .line 165
    sget-object p1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->NO_PREFERENCE:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayPreference:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    .line 166
    iget p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->NO_OVERRIDE_DRAWABLE:I

    iput p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->drawableId:I

    .line 167
    iput-object v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->resId:Ljava/lang/Integer;

    .line 168
    iput-object v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->buttonIdentifier:Ljava/lang/String;

    .line 169
    iput-boolean v2, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->isAudibleButton:Z

    .line 170
    sget-object p1, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->ENABLED:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayState:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    goto :goto_f

    .line 174
    :cond_16
    iput p3, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->priority:I

    .line 175
    sget-object p1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->NO_PREFERENCE:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayPreference:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    .line 176
    iget p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->NO_OVERRIDE_DRAWABLE:I

    iput p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->drawableId:I

    .line 177
    iput-object v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->resId:Ljava/lang/Integer;

    .line 178
    iput-object v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->buttonIdentifier:Ljava/lang/String;

    .line 179
    iput-boolean v3, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->isAudibleButton:Z

    .line 180
    sget-object p1, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->ENABLED:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayState:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    goto :goto_f

    .line 117
    :cond_17
    :goto_b
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_18

    sget p1, Lcom/amazon/kindle/krl/R$integer;->newtron_command_bar_xray:I

    goto :goto_d

    :cond_18
    if-nez p2, :cond_1b

    if-eqz p5, :cond_19

    goto :goto_c

    :cond_19
    if-eqz v1, :cond_1a

    .line 119
    sget p1, Lcom/amazon/kindle/krl/R$integer;->command_bar_xray_textbook:I

    goto :goto_d

    .line 120
    :cond_1a
    sget p1, Lcom/amazon/kindle/krl/R$integer;->command_bar_xray:I

    goto :goto_d

    .line 118
    :cond_1b
    :goto_c
    sget p1, Lcom/amazon/kindle/krl/R$integer;->command_bar_xray_yjop_mop:I

    .line 122
    :goto_d
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->priority:I

    .line 123
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 124
    sget-object p1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    goto :goto_e

    .line 126
    :cond_1c
    sget-object p1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->NO_PREFERENCE:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    .line 123
    :goto_e
    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayPreference:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    .line 128
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_xray_button:I

    iput p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->drawableId:I

    .line 129
    sget p1, Lcom/amazon/kindle/krl/R$id;->menuitem_xray:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->resId:Ljava/lang/Integer;

    .line 130
    iput-object v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->buttonIdentifier:Ljava/lang/String;

    .line 131
    iput-boolean v3, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->isAudibleButton:Z

    .line 132
    sget-object p1, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->ENABLED:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    iput-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayState:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    :goto_f
    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->buttonIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->button:Lcom/amazon/kindle/krx/ui/IButton;

    sget-object v1, Lcom/amazon/kindle/krx/ui/TextType;->VERBOSE:Lcom/amazon/kindle/krx/ui/TextType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IButton;->getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "button.getText(TextType.VERBOSE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, " "

    const-string v3, "_"

    invoke-static {v0, v2, v3, v1}, Lkotlin/text/StringsKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDisplayPreference(Landroid/content/Context;)Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayPreference:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    sget-object v0, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->NO_PREFERENCE:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->isAudibleButton:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    sget-object p1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    return-object p1

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayPreference:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    return-object p1
.end method

.method public getDisplayState()Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->displayState:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->resId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/amazon/android/widget/AbstractActionWidgetItem;->getId()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iget v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->drawableId:I

    .line 233
    iget v1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->NO_OVERRIDE_DRAWABLE:I

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->button:Lcom/amazon/kindle/krx/ui/IButton;

    iget-object v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    sget-object v1, Lcom/amazon/kindle/krx/ui/IconType;->SMALL:Lcom/amazon/kindle/krx/ui/IconType;

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/ui/IButton;->getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 234
    :cond_0
    iget v1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->OVERRIDE_NO_DRAWABLE:I

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 235
    :cond_1
    invoke-static {p1, v0}, Lcom/amazon/android/widget/CommandBarUtils;->getThemedButtonDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 0

    .line 186
    iget p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->priority:I

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->button:Lcom/amazon/kindle/krx/ui/IButton;

    sget-object v0, Lcom/amazon/kindle/krx/ui/TextType;->SHORT:Lcom/amazon/kindle/krx/ui/TextType;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IButton;->getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "button.getText(TextType.SHORT)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3

    .line 206
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 210
    iget-boolean v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->isAudibleButton:Z

    if-nez v0, :cond_0

    .line 209
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->buttonIdentifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->FLASHCARDS_BUTTON_IDENTIFIER:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->button:Lcom/amazon/kindle/krx/ui/IButton;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/IButton;->getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    .line 216
    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->HIGHLIGHTED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    if-ne p1, v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->button:Lcom/amazon/kindle/krx/ui/IButton;

    iget-object v0, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IButton;->onClick(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->button:Lcom/amazon/kindle/krx/ui/IButton;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
