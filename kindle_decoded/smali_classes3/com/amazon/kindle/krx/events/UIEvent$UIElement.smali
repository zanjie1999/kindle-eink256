.class public final enum Lcom/amazon/kindle/krx/events/UIEvent$UIElement;
.super Ljava/lang/Enum;
.source "UIEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/events/UIEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UIElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/events/UIEvent$UIElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

.field public static final enum BOOKMARKS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

.field public static final enum ObjectSelection:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum VIEW_OPTIONS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

.field public static final enum ViewOptions:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 18
    new-instance v0, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    const/4 v1, 0x0

    const-string v2, "VIEW_OPTIONS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->VIEW_OPTIONS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    .line 23
    new-instance v0, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    const/4 v2, 0x1

    const-string v3, "BOOKMARKS"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->BOOKMARKS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    .line 30
    new-instance v0, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    const/4 v3, 0x2

    const-string v4, "ViewOptions"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->ViewOptions:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    .line 38
    new-instance v0, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    const/4 v4, 0x3

    const-string v5, "ObjectSelection"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->ObjectSelection:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    .line 14
    sget-object v6, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->VIEW_OPTIONS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->BOOKMARKS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->ViewOptions:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->$VALUES:[Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/events/UIEvent$UIElement;
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/events/UIEvent$UIElement;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->$VALUES:[Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    return-object v0
.end method
