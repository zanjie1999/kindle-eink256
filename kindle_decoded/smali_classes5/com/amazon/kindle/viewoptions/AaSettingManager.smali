.class public final Lcom/amazon/kindle/viewoptions/AaSettingManager;
.super Ljava/lang/Object;
.source "AaSettingManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;
    }
.end annotation


# static fields
.field private static final ACTIVITY_RESTART_STRING:Ljava/lang/String; = "_ACTIVITY_RESTART"

.field public static final INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;

.field private static final TAG:Ljava/lang/String;

.field private static bookOpenCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static bottomSheetOldExpandedHeight:I

.field private static bottomSheetOldPeekHeight:I

.field private static bottomSheetOldState:I

.field private static initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static lastAlignmentDisabledValue:Z

.field private static lastSubfragmentIdentifier:I

.field private static lastTabSelected:I

.field private static themesPerfString:Ljava/lang/String;

.field private static undoThemesQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/amazon/kindle/viewoptions/themes/AaTheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-direct {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;-><init>()V

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    .line 67
    const-class v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(AaSettingManager::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->TAG:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, -0x1

    .line 73
    sput v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->bottomSheetOldState:I

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->undoThemesQueue:Ljava/util/LinkedList;

    const-string v0, ""

    .line 77
    sput-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->themesPerfString:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->bookOpenCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 81
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager$INSTANCE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBookOpenCount$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 66
    sget-object p0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->bookOpenCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic access$getInitialized$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 66
    sget-object p0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/lang/String;
    .locals 0

    .line 66
    sget-object p0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private final getINSTANCE()Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;

    return-object v0
.end method

.method public static final getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;
    .locals 1

    .line 86
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-direct {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getINSTANCE()Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getBottomSheetOldExpandedHeight()I
    .locals 1

    .line 75
    sget v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->bottomSheetOldExpandedHeight:I

    return v0
.end method

.method public final getBottomSheetOldPeekHeight()I
    .locals 1

    .line 74
    sget v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->bottomSheetOldPeekHeight:I

    return v0
.end method

.method public final getBottomSheetOldState()I
    .locals 1

    .line 73
    sget v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->bottomSheetOldState:I

    return v0
.end method

.method public final getLastAlignmentDisabledValue()Z
    .locals 1

    .line 72
    sget-boolean v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->lastAlignmentDisabledValue:Z

    return v0
.end method

.method public final getLastSubfragmentIdentifier()I
    .locals 1

    .line 71
    sget v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->lastSubfragmentIdentifier:I

    return v0
.end method

.method public final getLastTabSelected()I
    .locals 1

    .line 70
    sget v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->lastTabSelected:I

    return v0
.end method

.method public final getThemesPerfString()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->themesPerfString:Ljava/lang/String;

    return-object v0
.end method

.method public final getUndoThemesQueue()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/amazon/kindle/viewoptions/themes/AaTheme;",
            ">;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->undoThemesQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final setBottomSheetOldExpandedHeight(I)V
    .locals 0

    .line 75
    sput p1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->bottomSheetOldExpandedHeight:I

    return-void
.end method

.method public final setBottomSheetOldPeekHeight(I)V
    .locals 0

    .line 74
    sput p1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->bottomSheetOldPeekHeight:I

    return-void
.end method

.method public final setBottomSheetOldState(I)V
    .locals 0

    .line 73
    sput p1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->bottomSheetOldState:I

    return-void
.end method

.method public final setLastAlignmentDisabledValue(Z)V
    .locals 0

    .line 72
    sput-boolean p1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->lastAlignmentDisabledValue:Z

    return-void
.end method

.method public final setLastSubfragmentIdentifier(I)V
    .locals 0

    .line 71
    sput p1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->lastSubfragmentIdentifier:I

    return-void
.end method

.method public final setLastTabSelected(I)V
    .locals 0

    .line 70
    sput p1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->lastTabSelected:I

    return-void
.end method

.method public final setThemesPerfString(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sput-object p1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->themesPerfString:Ljava/lang/String;

    return-void
.end method
