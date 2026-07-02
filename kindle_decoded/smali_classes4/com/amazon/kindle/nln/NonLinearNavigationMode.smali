.class public final enum Lcom/amazon/kindle/nln/NonLinearNavigationMode;
.super Ljava/lang/Enum;
.source "NonLinearNavigationMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/nln/NonLinearNavigationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/nln/NonLinearNavigationMode;

.field public static final enum BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

.field public static final enum FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

.field public static final enum PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;


# instance fields
.field private fragmentTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 9
    new-instance v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    const/4 v1, 0x0

    const-string v2, "BIRDSEYE"

    const-string v3, "BIRDSEYE_FRAGMENT"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 10
    new-instance v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    const/4 v2, 0x1

    const-string v3, "PAGE_FLIP"

    const-string v4, "PAGE_FLIP_FRAGMENT"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 11
    new-instance v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    const/4 v3, 0x2

    const-string v4, "FULL_PAGE"

    const-string v5, "FULL_PAGE_FRAGMENT"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 5
    sget-object v5, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->$VALUES:[Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->fragmentTag:Ljava/lang/String;

    return-void
.end method

.method public static fromFragmentTag(Ljava/lang/String;)Lcom/amazon/kindle/nln/NonLinearNavigationMode;
    .locals 5

    .line 27
    invoke-static {}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->values()[Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 28
    invoke-virtual {v3}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/nln/NonLinearNavigationMode;
    .locals 1

    .line 5
    const-class v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/nln/NonLinearNavigationMode;
    .locals 1

    .line 5
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->$VALUES:[Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0}, [Lcom/amazon/kindle/nln/NonLinearNavigationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    return-object v0
.end method


# virtual methods
.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->fragmentTag:Ljava/lang/String;

    return-object v0
.end method

.method public isMoreZoomedOutThan(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)Z
    .locals 1

    .line 53
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
