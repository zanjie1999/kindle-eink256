.class public final enum Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;
.super Ljava/lang/Enum;
.source "AbstractInternalWidgetItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/widget/AbstractInternalWidgetItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

.field public static final enum DISABLED:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

.field public static final enum DISABLED_MESSAGE:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

.field public static final enum ENABLED:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 22
    new-instance v0, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    const/4 v1, 0x0

    const-string v2, "ENABLED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->ENABLED:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    new-instance v0, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    const/4 v2, 0x1

    const-string v3, "DISABLED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->DISABLED:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    new-instance v0, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    const/4 v3, 0x2

    const-string v4, "DISABLED_MESSAGE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->DISABLED_MESSAGE:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    .line 21
    sget-object v5, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->ENABLED:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->DISABLED:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->$VALUES:[Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->$VALUES:[Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    invoke-virtual {v0}, [Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    return-object v0
.end method
