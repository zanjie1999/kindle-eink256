.class public final enum Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;
.super Ljava/lang/Enum;
.source "TutorialMigrationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LegacyTutorial"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

.field public static final enum KINDLE_ILLUSTRATED_JIT:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

.field public static final enum LIBRARY_SORT:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

.field public static final enum NEW_FONTS_DIALOG:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

.field public static final enum NLN_BROCHURE:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

.field public static final enum NLN_NEGATIVE_JIT:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

.field public static final enum START_ACTIONS:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

.field public static final enum TOOLTIPS:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

.field public static final enum WORDWISE_FTUE_JIT:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;


# instance fields
.field tutorialId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 53
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    const/4 v1, 0x0

    const-string v2, "NLN_BROCHURE"

    const-string v3, "e423b3cccc0c9227497c12806c31f62f"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->NLN_BROCHURE:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    .line 54
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    const/4 v2, 0x1

    const-string v3, ""

    const-string v4, "NLN_NEGATIVE_JIT"

    invoke-direct {v0, v4, v2, v3}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->NLN_NEGATIVE_JIT:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    .line 55
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    const/4 v4, 0x2

    const-string v5, "KINDLE_ILLUSTRATED_JIT"

    invoke-direct {v0, v5, v4, v3}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->KINDLE_ILLUSTRATED_JIT:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    .line 56
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    const/4 v5, 0x3

    const-string v6, "START_ACTIONS"

    invoke-direct {v0, v6, v5, v3}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->START_ACTIONS:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    .line 57
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    const/4 v6, 0x4

    const-string v7, "WORDWISE_FTUE_JIT"

    invoke-direct {v0, v7, v6, v3}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->WORDWISE_FTUE_JIT:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    .line 58
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    const/4 v7, 0x5

    const-string v8, "NEW_FONTS_DIALOG"

    invoke-direct {v0, v8, v7, v3}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->NEW_FONTS_DIALOG:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    .line 59
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    const/4 v8, 0x6

    const-string v9, "LIBRARY_SORT"

    invoke-direct {v0, v9, v8, v3}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->LIBRARY_SORT:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    .line 60
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    const/4 v9, 0x7

    const-string v10, "TOOLTIPS"

    invoke-direct {v0, v10, v9, v3}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->TOOLTIPS:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    const/16 v3, 0x8

    new-array v3, v3, [Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    .line 52
    sget-object v10, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->NLN_BROCHURE:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    aput-object v10, v3, v1

    sget-object v1, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->NLN_NEGATIVE_JIT:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    aput-object v1, v3, v2

    sget-object v1, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->KINDLE_ILLUSTRATED_JIT:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    aput-object v1, v3, v4

    sget-object v1, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->START_ACTIONS:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    aput-object v1, v3, v5

    sget-object v1, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->WORDWISE_FTUE_JIT:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    aput-object v1, v3, v6

    sget-object v1, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->NEW_FONTS_DIALOG:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    aput-object v1, v3, v7

    sget-object v1, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->LIBRARY_SORT:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    aput-object v1, v3, v8

    aput-object v0, v3, v9

    sput-object v3, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->$VALUES:[Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput-object p3, p0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->tutorialId:Ljava/lang/String;

    return-void
.end method

.method static forId(Ljava/lang/String;)Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;
    .locals 5

    .line 70
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-static {}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->values()[Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 72
    iget-object v4, v3, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->tutorialId:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;
    .locals 1

    .line 52
    const-class v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;
    .locals 1

    .line 52
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->$VALUES:[Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    invoke-virtual {v0}, [Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    return-object v0
.end method
