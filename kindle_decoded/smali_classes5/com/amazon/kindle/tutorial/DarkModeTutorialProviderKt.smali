.class public final Lcom/amazon/kindle/tutorial/DarkModeTutorialProviderKt;
.super Ljava/lang/Object;
.source "DarkModeTutorialProvider.kt"


# static fields
.field private static final ACTION_DISMISS_DARK_MODE_TUTORIAL:Ljava/lang/String; = "DismissDarkModeTutorial"

.field private static final DARK_MODE_PHASE_THREE_ENABLED_KEY:Ljava/lang/String; = "DarkModePhaseThreeEnabled"

.field private static final SHOW_DARK_MODE_TUTORIAL_EVENT:Ljava/lang/String; = "ShowDarkModeTutorial"

.field private static final TAG:Ljava/lang/String;

.field private static final TOPIC:Ljava/lang/String; = "DarkMode"

.field private static final USER_SET_COLOR_MODE_DIFFERENT_KEY:Ljava/lang/String; = "UserSetColorModeDifferent"

.field private static final WAS_IN_BOOK_THEME_UPGRADE_PERFORMED:Ljava/lang/String; = "WasInBookUpgradePerformed"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-class v0, Lcom/amazon/kindle/tutorial/DarkModeTutorialProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(DarkModeTutorialProvider::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/DarkModeTutorialProviderKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/tutorial/DarkModeTutorialProviderKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
