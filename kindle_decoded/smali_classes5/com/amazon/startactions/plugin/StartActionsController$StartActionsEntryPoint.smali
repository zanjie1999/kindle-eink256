.class public final enum Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;
.super Ljava/lang/Enum;
.source "StartActionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/plugin/StartActionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartActionsEntryPoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

.field public static final enum BOOK_INFO_BUTTON:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

.field public static final enum LEFT_NAVIGATION_BAR:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

.field public static final enum OVERFLOW_MENU:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

.field public static final enum SRL_OPEN:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;


# instance fields
.field public final metricName:Ljava/lang/String;

.field public final userInitiated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1390
    new-instance v0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    const/4 v1, 0x0

    const-string v2, "SRL_OPEN"

    const-string v3, "OpenToSrl"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->SRL_OPEN:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    .line 1391
    new-instance v0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    const/4 v2, 0x1

    const-string v3, "LEFT_NAVIGATION_BAR"

    const-string v4, "LeftNavigation"

    invoke-direct {v0, v3, v2, v2, v4}, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->LEFT_NAVIGATION_BAR:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    .line 1392
    new-instance v0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    const/4 v3, 0x2

    const-string v4, "OVERFLOW_MENU"

    const-string v5, "OverflowMenu"

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->OVERFLOW_MENU:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    .line 1393
    new-instance v0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    const/4 v4, 0x3

    const-string v5, "BOOK_INFO_BUTTON"

    const-string v6, "BookInfoButton"

    invoke-direct {v0, v5, v4, v2, v6}, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->BOOK_INFO_BUTTON:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    .line 1389
    sget-object v6, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->SRL_OPEN:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->LEFT_NAVIGATION_BAR:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->OVERFLOW_MENU:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->$VALUES:[Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1399
    iput-boolean p3, p0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->userInitiated:Z

    .line 1400
    iput-object p4, p0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->metricName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;
    .locals 1

    .line 1389
    const-class v0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    return-object p0
.end method

.method public static values()[Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;
    .locals 1

    .line 1389
    sget-object v0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->$VALUES:[Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    invoke-virtual {v0}, [Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    return-object v0
.end method
