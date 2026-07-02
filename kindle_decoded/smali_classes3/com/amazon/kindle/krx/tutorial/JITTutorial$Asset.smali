.class public final enum Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;
.super Ljava/lang/Enum;
.source "JITTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/tutorial/JITTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Asset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

.field public static final enum CHROME:Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

.field public static final enum LEFT_PANEL:Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

    const/4 v1, 0x0

    const-string v2, "CHROME"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;->CHROME:Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

    .line 36
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

    const/4 v2, 0x1

    const-string v3, "LEFT_PANEL"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;->LEFT_PANEL:Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

    .line 30
    sget-object v4, Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;->CHROME:Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;->$VALUES:[Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;->$VALUES:[Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

    return-object v0
.end method
