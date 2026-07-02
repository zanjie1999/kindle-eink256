.class public final enum Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;
.super Ljava/lang/Enum;
.source "IActionBarDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/IActionBarDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionBarDecorationPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;

.field public static final enum CENTER:Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;

    const/4 v1, 0x0

    const-string v2, "CENTER"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;->CENTER:Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;

    aput-object v0, v2, v1

    .line 19
    sput-object v2, Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;->$VALUES:[Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;->$VALUES:[Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;

    return-object v0
.end method
