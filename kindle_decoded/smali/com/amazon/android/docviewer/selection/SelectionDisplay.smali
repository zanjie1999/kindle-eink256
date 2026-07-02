.class public final enum Lcom/amazon/android/docviewer/selection/SelectionDisplay;
.super Ljava/lang/Enum;
.source "SelectionDisplay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/selection/SelectionDisplay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/selection/SelectionDisplay;

.field public static final enum STATE_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

.field public static final enum STATE_NONE:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

.field public static final enum STATE_NORMAL:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

.field public static final enum STATE_QUICK_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

.field public static final enum STATE_SELECTING_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

.field public static final enum STATE_SELECTING_NORMAL:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

.field public static final enum STATE_SELECTING_POST_NORMAL:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

.field public static final enum STATE_SELECTING_QUICK_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 15
    new-instance v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    const/4 v1, 0x0

    const-string v2, "STATE_NONE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/docviewer/selection/SelectionDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_NONE:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    .line 25
    new-instance v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    const/4 v2, 0x1

    const-string v3, "STATE_NORMAL"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/docviewer/selection/SelectionDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_NORMAL:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    .line 35
    new-instance v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    const/4 v3, 0x2

    const-string v4, "STATE_QUICK_HIGHLIGHT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/android/docviewer/selection/SelectionDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_QUICK_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    .line 43
    new-instance v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    const/4 v4, 0x3

    const-string v5, "STATE_HIGHLIGHT"

    invoke-direct {v0, v5, v4}, Lcom/amazon/android/docviewer/selection/SelectionDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    .line 54
    new-instance v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    const/4 v5, 0x4

    const-string v6, "STATE_SELECTING_QUICK_HIGHLIGHT"

    invoke-direct {v0, v6, v5}, Lcom/amazon/android/docviewer/selection/SelectionDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_SELECTING_QUICK_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    .line 64
    new-instance v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    const/4 v6, 0x5

    const-string v7, "STATE_SELECTING_NORMAL"

    invoke-direct {v0, v7, v6}, Lcom/amazon/android/docviewer/selection/SelectionDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_SELECTING_NORMAL:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    .line 75
    new-instance v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    const/4 v7, 0x6

    const-string v8, "STATE_SELECTING_POST_NORMAL"

    invoke-direct {v0, v8, v7}, Lcom/amazon/android/docviewer/selection/SelectionDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_SELECTING_POST_NORMAL:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    .line 85
    new-instance v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    const/4 v8, 0x7

    const-string v9, "STATE_SELECTING_HIGHLIGHT"

    invoke-direct {v0, v9, v8}, Lcom/amazon/android/docviewer/selection/SelectionDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_SELECTING_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    .line 8
    sget-object v10, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_NONE:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_NORMAL:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_QUICK_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_SELECTING_QUICK_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_SELECTING_NORMAL:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_SELECTING_POST_NORMAL:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->$VALUES:[Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/selection/SelectionDisplay;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/selection/SelectionDisplay;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->$VALUES:[Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/selection/SelectionDisplay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    return-object v0
.end method
