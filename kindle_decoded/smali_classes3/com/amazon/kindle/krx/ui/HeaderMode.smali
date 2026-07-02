.class public final enum Lcom/amazon/kindle/krx/ui/HeaderMode;
.super Ljava/lang/Enum;
.source "HeaderMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/ui/HeaderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/ui/HeaderMode;

.field public static final enum CUSTOM:Lcom/amazon/kindle/krx/ui/HeaderMode;

.field public static final enum SEARCH_BOX:Lcom/amazon/kindle/krx/ui/HeaderMode;

.field public static final enum TITLE:Lcom/amazon/kindle/krx/ui/HeaderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 9
    new-instance v0, Lcom/amazon/kindle/krx/ui/HeaderMode;

    const/4 v1, 0x0

    const-string v2, "TITLE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/ui/HeaderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/HeaderMode;->TITLE:Lcom/amazon/kindle/krx/ui/HeaderMode;

    .line 10
    new-instance v0, Lcom/amazon/kindle/krx/ui/HeaderMode;

    const/4 v2, 0x1

    const-string v3, "SEARCH_BOX"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/ui/HeaderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/HeaderMode;->SEARCH_BOX:Lcom/amazon/kindle/krx/ui/HeaderMode;

    .line 11
    new-instance v0, Lcom/amazon/kindle/krx/ui/HeaderMode;

    const/4 v3, 0x2

    const-string v4, "CUSTOM"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/ui/HeaderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/HeaderMode;->CUSTOM:Lcom/amazon/kindle/krx/ui/HeaderMode;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/krx/ui/HeaderMode;

    .line 7
    sget-object v5, Lcom/amazon/kindle/krx/ui/HeaderMode;->TITLE:Lcom/amazon/kindle/krx/ui/HeaderMode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/krx/ui/HeaderMode;->SEARCH_BOX:Lcom/amazon/kindle/krx/ui/HeaderMode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/krx/ui/HeaderMode;->$VALUES:[Lcom/amazon/kindle/krx/ui/HeaderMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/HeaderMode;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/kindle/krx/ui/HeaderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/ui/HeaderMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/ui/HeaderMode;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/kindle/krx/ui/HeaderMode;->$VALUES:[Lcom/amazon/kindle/krx/ui/HeaderMode;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/ui/HeaderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/ui/HeaderMode;

    return-object v0
.end method
