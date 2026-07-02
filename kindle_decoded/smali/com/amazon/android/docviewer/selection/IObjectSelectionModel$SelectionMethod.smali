.class public final enum Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;
.super Ljava/lang/Enum;
.source "IObjectSelectionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

.field public static final enum TOUCH:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

.field public static final enum UNKNOWN:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;


# instance fields
.field private final selectionMethodValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 64
    new-instance v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;->UNKNOWN:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    .line 65
    new-instance v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    const/4 v3, 0x2

    const-string v4, "TOUCH"

    invoke-direct {v0, v4, v2, v3}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;->TOUCH:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    new-array v3, v3, [Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    .line 63
    sget-object v4, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;->UNKNOWN:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;->$VALUES:[Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;->selectionMethodValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;
    .locals 1

    .line 63
    const-class v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;
    .locals 1

    .line 63
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;->$VALUES:[Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    return-object v0
.end method
