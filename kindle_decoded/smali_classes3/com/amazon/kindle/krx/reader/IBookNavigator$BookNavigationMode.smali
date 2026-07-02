.class public final enum Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;
.super Ljava/lang/Enum;
.source "IBookNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/reader/IBookNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BookNavigationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

.field public static final enum BIRDSEYE:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

.field public static final enum FULL_PAGE:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

.field public static final enum PAGE_FLIP:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 44
    new-instance v0, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    const/4 v1, 0x0

    const-string v2, "FULL_PAGE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    .line 50
    new-instance v0, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    const/4 v2, 0x1

    const-string v3, "PAGE_FLIP"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    .line 56
    new-instance v0, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    const/4 v3, 0x2

    const-string v4, "BIRDSEYE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    .line 38
    sget-object v5, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;->$VALUES:[Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;
    .locals 1

    .line 38
    const-class v0, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;->$VALUES:[Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    return-object v0
.end method
