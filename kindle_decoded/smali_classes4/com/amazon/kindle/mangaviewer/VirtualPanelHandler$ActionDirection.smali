.class final enum Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;
.super Ljava/lang/Enum;
.source "VirtualPanelHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActionDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

.field public static final enum LEFT:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

.field public static final enum RIGHT:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 134
    new-instance v0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    const/4 v1, 0x0

    const-string v2, "LEFT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;->LEFT:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    .line 135
    new-instance v0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    const/4 v2, 0x1

    const-string v3, "RIGHT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;->RIGHT:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    .line 133
    sget-object v4, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;->LEFT:Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;->$VALUES:[Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;
    .locals 1

    .line 133
    const-class v0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;
    .locals 1

    .line 133
    sget-object v0, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;->$VALUES:[Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    invoke-virtual {v0}, [Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler$ActionDirection;

    return-object v0
.end method
