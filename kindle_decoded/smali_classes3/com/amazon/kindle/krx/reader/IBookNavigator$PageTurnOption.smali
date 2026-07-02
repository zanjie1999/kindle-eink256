.class public final enum Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;
.super Ljava/lang/Enum;
.source "IBookNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/reader/IBookNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageTurnOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;

.field public static final enum PreserveOverlays:Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    new-instance v0, Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;

    const/4 v1, 0x0

    const-string v2, "PreserveOverlays"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;->PreserveOverlays:Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;

    aput-object v0, v2, v1

    .line 62
    sput-object v2, Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;->$VALUES:[Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;
    .locals 1

    .line 62
    const-class v0, Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;
    .locals 1

    .line 62
    sget-object v0, Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;->$VALUES:[Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;

    return-object v0
.end method
