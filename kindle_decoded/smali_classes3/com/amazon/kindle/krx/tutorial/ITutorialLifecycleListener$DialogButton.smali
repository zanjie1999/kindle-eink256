.class public final enum Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;
.super Ljava/lang/Enum;
.source "ITutorialLifecycleListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogButton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;

.field public static final enum NEGATIVE_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;

.field public static final enum POSITIVE_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;

    const/4 v1, 0x0

    const-string v2, "POSITIVE_BUTTON"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;->POSITIVE_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;

    .line 49
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;

    const/4 v2, 0x1

    const-string v3, "NEGATIVE_BUTTON"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;->NEGATIVE_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;

    .line 46
    sget-object v4, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;->POSITIVE_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;->$VALUES:[Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;
    .locals 1

    .line 46
    const-class v0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;->$VALUES:[Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;

    return-object v0
.end method
