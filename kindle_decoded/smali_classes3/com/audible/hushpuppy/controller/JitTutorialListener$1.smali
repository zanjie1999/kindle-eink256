.class synthetic Lcom/audible/hushpuppy/controller/JitTutorialListener$1;
.super Ljava/lang/Object;
.source "JitTutorialListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/JitTutorialListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$tutorial$ITutorialLifecycleListener$BrochureNavigation:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$krx$tutorial$ITutorialLifecycleListener$DismissalType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 95
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;->values()[Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/hushpuppy/controller/JitTutorialListener$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$ITutorialLifecycleListener$BrochureNavigation:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;->PAGE_NEXT_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/audible/hushpuppy/controller/JitTutorialListener$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$ITutorialLifecycleListener$BrochureNavigation:[I

    sget-object v3, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;->PAGE_PREV_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/audible/hushpuppy/controller/JitTutorialListener$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$ITutorialLifecycleListener$BrochureNavigation:[I

    sget-object v4, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;->PAGE_NEXT_SWIPE:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/audible/hushpuppy/controller/JitTutorialListener$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$ITutorialLifecycleListener$BrochureNavigation:[I

    sget-object v5, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;->PAGE_PREV_SWIPE:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 53
    :catch_3
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;->values()[Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/audible/hushpuppy/controller/JitTutorialListener$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$ITutorialLifecycleListener$DismissalType:[I

    :try_start_4
    sget-object v5, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;->DISMISSED_BY_DONE_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/audible/hushpuppy/controller/JitTutorialListener$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$ITutorialLifecycleListener$DismissalType:[I

    sget-object v4, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;->DISMISSED_BY_BACK_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/audible/hushpuppy/controller/JitTutorialListener$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$ITutorialLifecycleListener$DismissalType:[I

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;->DISMISSED_BY_X_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/audible/hushpuppy/controller/JitTutorialListener$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$ITutorialLifecycleListener$DismissalType:[I

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;->DISMISSED_BY_TAP_OUTSIDE:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
