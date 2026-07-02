.class public final enum Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;
.super Ljava/lang/Enum;
.source "ObjectSelectionModelEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

.field public static final enum AREA_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

.field public static final enum SELECTION_DISPLAY_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

.field public static final enum SELECTION_METHOD_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

.field public static final enum SELECTION_STARTED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

.field public static final enum STATE_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 13
    new-instance v0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    const/4 v1, 0x0

    const-string v2, "STATE_CHANGED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->STATE_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    .line 14
    new-instance v0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    const/4 v2, 0x1

    const-string v3, "AREA_CHANGED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->AREA_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    .line 15
    new-instance v0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    const/4 v3, 0x2

    const-string v4, "SELECTION_METHOD_CHANGED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->SELECTION_METHOD_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    .line 16
    new-instance v0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    const/4 v4, 0x3

    const-string v5, "SELECTION_STARTED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->SELECTION_STARTED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    .line 17
    new-instance v0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    const/4 v5, 0x4

    const-string v6, "SELECTION_DISPLAY_CHANGED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->SELECTION_DISPLAY_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    .line 12
    sget-object v7, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->STATE_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->AREA_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->SELECTION_METHOD_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->SELECTION_STARTED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->$VALUES:[Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->$VALUES:[Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    return-object v0
.end method
