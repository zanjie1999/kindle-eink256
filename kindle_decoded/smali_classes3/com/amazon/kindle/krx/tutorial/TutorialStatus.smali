.class public final enum Lcom/amazon/kindle/krx/tutorial/TutorialStatus;
.super Ljava/lang/Enum;
.source "TutorialStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/tutorial/TutorialStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

.field public static final enum NOT_SHOWN_APP_NOT_IN_FOREGROUND:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

.field public static final enum NOT_SHOWN_DISPLAY_LIMIT:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

.field public static final enum NOT_SHOWN_INTERNAL_ERROR:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

.field public static final enum NOT_SHOWN_ITEM_NOT_ON_SCREEN:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

.field public static final enum NOT_SHOWN_PRIORITY:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

.field public static final enum NOT_SHOWN_RESOURCE_NOT_READY:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

.field public static final enum SHOWN:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 13
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    const/4 v1, 0x0

    const-string v2, "SHOWN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->SHOWN:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    .line 19
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    const/4 v2, 0x1

    const-string v3, "NOT_SHOWN_PRIORITY"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->NOT_SHOWN_PRIORITY:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    .line 25
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    const/4 v3, 0x2

    const-string v4, "NOT_SHOWN_RESOURCE_NOT_READY"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->NOT_SHOWN_RESOURCE_NOT_READY:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    .line 31
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    const/4 v4, 0x3

    const-string v5, "NOT_SHOWN_DISPLAY_LIMIT"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->NOT_SHOWN_DISPLAY_LIMIT:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    .line 37
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    const/4 v5, 0x4

    const-string v6, "NOT_SHOWN_APP_NOT_IN_FOREGROUND"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->NOT_SHOWN_APP_NOT_IN_FOREGROUND:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    .line 43
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    const/4 v6, 0x5

    const-string v7, "NOT_SHOWN_ITEM_NOT_ON_SCREEN"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->NOT_SHOWN_ITEM_NOT_ON_SCREEN:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    .line 48
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    const/4 v7, 0x6

    const-string v8, "NOT_SHOWN_INTERNAL_ERROR"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->NOT_SHOWN_INTERNAL_ERROR:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    .line 8
    sget-object v9, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->SHOWN:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->NOT_SHOWN_PRIORITY:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->NOT_SHOWN_RESOURCE_NOT_READY:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->NOT_SHOWN_DISPLAY_LIMIT:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->NOT_SHOWN_APP_NOT_IN_FOREGROUND:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->NOT_SHOWN_ITEM_NOT_ON_SCREEN:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->$VALUES:[Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/TutorialStatus;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/tutorial/TutorialStatus;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->$VALUES:[Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    return-object v0
.end method
