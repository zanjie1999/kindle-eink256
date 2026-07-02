.class public final enum Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;
.super Ljava/lang/Enum;
.source "IObjectSelectionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

.field public static final enum GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

.field public static final enum NONE:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

.field public static final enum NONE_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

.field public static final enum TEXT:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

.field public static final enum TEXT_NON_EDITABLE:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 38
    new-instance v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    const/4 v1, 0x0

    const-string v2, "TEXT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->TEXT:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    .line 45
    new-instance v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    const/4 v2, 0x1

    const-string v3, "GRAPHICAL"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    .line 49
    new-instance v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    const/4 v3, 0x2

    const-string v4, "TEXT_NON_EDITABLE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->TEXT_NON_EDITABLE:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    .line 53
    new-instance v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    const/4 v4, 0x3

    const-string v5, "NONE_SELECTED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->NONE_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    .line 57
    new-instance v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    const/4 v5, 0x4

    const-string v6, "NONE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->NONE:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    .line 32
    sget-object v7, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->TEXT:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->TEXT_NON_EDITABLE:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->NONE_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->$VALUES:[Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;
    .locals 1

    .line 32
    const-class v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->$VALUES:[Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    return-object v0
.end method
