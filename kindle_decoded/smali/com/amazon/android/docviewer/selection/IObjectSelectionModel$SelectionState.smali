.class public final enum Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;
.super Ljava/lang/Enum;
.source "IObjectSelectionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

.field public static final enum ANNOTATE_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum CHANGING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

.field public static final enum CREATING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

.field public static final enum NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

.field public static final enum SELECTION_STARTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

.field public static final enum SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 85
    new-instance v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    const/4 v1, 0x0

    const-string v2, "NOTHING_SELECTED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    .line 92
    new-instance v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    const/4 v2, 0x1

    const-string v3, "SELECTION_STARTED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SELECTION_STARTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    .line 98
    new-instance v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    const/4 v3, 0x2

    const-string v4, "CREATING_SELECTION"

    invoke-direct {v0, v4, v3}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CREATING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    .line 105
    new-instance v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    const/4 v4, 0x3

    const-string v5, "SHOW_SELECTION_OPTIONS"

    invoke-direct {v0, v5, v4}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    .line 111
    new-instance v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    const/4 v5, 0x4

    const-string v6, "CHANGING_SELECTION"

    invoke-direct {v0, v6, v5}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CHANGING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    .line 118
    new-instance v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    const/4 v6, 0x5

    const-string v7, "ANNOTATE_SELECTED"

    invoke-direct {v0, v7, v6}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->ANNOTATE_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    .line 81
    sget-object v8, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SELECTION_STARTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CREATING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CHANGING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->$VALUES:[Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;
    .locals 1

    .line 81
    const-class v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;
    .locals 1

    .line 81
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->$VALUES:[Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    return-object v0
.end method
