.class public final enum Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;
.super Ljava/lang/Enum;
.source "IKRXFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/IKRXFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;

.field public static final enum CENTER:Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;

.field public static final enum LEFT:Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;

.field public static final enum RIGHT:Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;

    const/4 v1, 0x0

    const-string v2, "CENTER"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;->CENTER:Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;

    .line 14
    new-instance v0, Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;

    const/4 v2, 0x1

    const-string v3, "RIGHT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;->RIGHT:Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;

    .line 15
    new-instance v0, Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;

    const/4 v3, 0x2

    const-string v4, "LEFT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;->LEFT:Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;

    .line 11
    sget-object v5, Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;->CENTER:Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;->RIGHT:Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;->$VALUES:[Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;->$VALUES:[Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;

    return-object v0
.end method
