.class public final enum Lcom/amazon/android/widget/WidgetAnchorPosition$Location;
.super Ljava/lang/Enum;
.source "WidgetAnchorPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/widget/WidgetAnchorPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/widget/WidgetAnchorPosition$Location;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

.field public static final enum BOTTOM:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

.field public static final enum NONE:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

.field public static final enum TOP:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 30
    new-instance v0, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    const/4 v1, 0x0

    const-string v2, "TOP"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;->TOP:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    .line 36
    new-instance v0, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    const/4 v2, 0x1

    const-string v3, "BOTTOM"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;->BOTTOM:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    .line 41
    new-instance v0, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    const/4 v3, 0x2

    const-string v4, "NONE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;->NONE:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    .line 25
    sget-object v5, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;->TOP:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;->BOTTOM:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;->$VALUES:[Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/widget/WidgetAnchorPosition$Location;
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/widget/WidgetAnchorPosition$Location;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;->$VALUES:[Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    invoke-virtual {v0}, [Lcom/amazon/android/widget/WidgetAnchorPosition$Location;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    return-object v0
.end method
